# pooha302의 Dotfiles

개인적으로 사용하는 설정 파일(Dotfiles) 저장소입니다. Vim, Tmux, Zsh 설정을 포함하고 있습니다.

## 🚀 시작하기

### 1. 저장소 복제
Submodule을 포함하고 있으므로 `--recursive` 옵션을 사용하여 복제해야 합니다.

```bash
git clone --recursive https://github.com/pooha302/dotfiles.git ~/.dotfiles
```

### 2. 설치 진행
`install.sh` 스크립트를 사용하여 필요한 설정을 선택적으로 설치할 수 있습니다.

```bash
cd ~/.dotfiles
./install.sh [옵션]
```

**사용 가능한 옵션:**
- `vim`: Vim 설정만 설치
- `tmux`: Tmux 설정만 설치
- `zsh`: Zsh 및 Oh My Zsh 관련 설정 설치
- `all`: 모든 설정 설치

### 3. 서브모듈 업데이트
서브모듈(플러그인 등)을 최신 상태로 업데이트하려면 `update_submodules.sh`를 실행하세요.

```bash
cd ~/.dotfiles
./update_submodules.sh
```

## 🛠 주요 구성 요소

### Zsh (Shell)
- **Oh My Zsh** 기반 설정
- **기본 플러그인:**
  - `zsh-syntax-highlighting`
  - `fasd` (자동 설치 지원)
- **사용자화:** 각 PC별 개별 설정(alias, 환경변수 등)이 필요한 경우 `zsh/zsh.d/` 디렉토리 아래에 `*.local.zsh` 형식으로 파일을 생성하면 자동으로 로드됩니다.

### Vim
- `.vimrc` 및 `.vim` 디렉토리 설정

### Tmux
- `.tmux.conf` 설정

## ⚠️ 주의사항

- **백업:** 기존에 존재하던 설정 파일들은 설치 과정에서 자동으로 `~/dotfiles_bak` 디렉토리로 이동됩니다.
- **심볼릭 링크:** 모든 설치는 원본 파일에 대한 심볼릭 링크를 생성하는 방식으로 진행됩니다.
