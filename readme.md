# 💻 pooha302's Dotfiles

> Minimalist and powerful configuration files for Vim, Tmux, and Zsh.

Vim, Tmux, Zsh 설정을 포함하며 macOS와 Linux(Ubuntu) 환경을 모두 지원하는 개인용 설정 저장소

---

## ✨ Features

- **Zsh Customization**: Oh My Zsh 기반의 강력하고 아름다운 쉘 환경
- **Auto-Installation**: `install.sh` 하나로 의존성(`figlet`, `lolcat`, `fasd`)까지 자동 설치
- **Custom ASCII Art**: 터미널 시작 시 `figlet`과 `lolcat`을 이용한 다이나믹한 ASCII Art 출력
- **Modular Config**: `zsh/zsh.d/` 디렉토리를 통한 모듈형 설정 관리
- **Auto Backup**: 기존 설정 파일을 `~/dotfiles_bak`으로 안전하게 백업 후 심볼릭 링크 생성

---

## 🚀 Getting Started

### 1. Clone the Repository
Submodule(플러그인 등)을 포함하고 있으므로 반드시 `--recursive` 옵션 사용

```bash
git clone --recursive https://github.com/pooha302/dotfiles.git ~/.dotfiles
```

### 2. Run Installer
`install.sh` 스크립트를 사용하여 필요한 설정을 선택적으로 설치 가능

```bash
cd ~/.dotfiles
./install.sh [option]
```

**Options:**
- `vim`: Vim 설정 및 플러그인 설치
- `tmux`: Tmux 설정 설치
- `zsh`: Zsh, Oh My Zsh 및 의존성(`figlet`, `lolcat`, `fasd`) 설치
- `all`: 모든 설정 한꺼번에 설치

### 3. Keep it Up-to-date
플러그인 등을 최신 상태로 유지하려면 아래 스크립트 주기적 실행

```bash
./update_submodules.sh
```

---

## 🛠 Configurations

### 🐚 Zsh Environment
- **Enhanced Prompt**: 가독성 높고 세련된 커스텀 프롬프트 적용
- **ASCII Art Welcome**: 매 세션 시작 시 로고 출력
- **Smart Plugins**:
  - `zsh-syntax-highlighting`: 명령어 구문 강조
  - `fasd`: 최근 방문한 디렉토리/파일로 초고속 이동
- **Local Overrides**: PC별 개별 설정은 `zsh/zsh.d/*.local.zsh` 파일을 생성하여 관리

### 📝 Vim & Tmux
- **Vim**: 미니멀하면서도 생산성을 극대화한 `.vimrc` 설정
- **Tmux**: 효율적인 멀티플렉싱을 위한 커스텀 레이아웃 및 단축키 적용

---

## ⚠️ Notes

- **Backups**: 기존의 `~/.zshrc`, `~/.vimrc` 등은 자동으로 `~/dotfiles_bak` 폴더로 이동
- **Symbolic Links**: 모든 설정은 복사가 아닌 심볼릭 링크 방식으로 적용

---

Copyright © 2026 [pooha302](https://github.com/pooha302)
