FROM archlinux

RUN pacman -Syu && \
  pacman -Sy rustup python3 nodejs go opam zig --noconfirm neovim && \
  rustup default stable && \
  corepack enable pnpm && \
  SHELL=bash pnpm setup
