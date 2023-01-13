FROM archlinux

RUN pacman -Syu && \
  pacman -Sy rustup python3 nodejs go opam zig neovim --noconfirm  && \
  rustup default stable && \
  corepack enable pnpm && \
  SHELL=bash pnpm setup
