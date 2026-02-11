#!/bin/bash

# 스크립트 위치 기준 경로 설정
DOTFILES_DIR=$(dirname $(readlink -f "$0"))
[ $? -ne 0 ] && DOTFILES_DIR=~/.dotfiles

echo "----------------------------------------"
echo "Git Submodule 업데이트를 시작합니다..."
echo "경로: $DOTFILES_DIR"
echo "----------------------------------------"

cd "$DOTFILES_DIR"

# 서브모듈 업데이트 실행
# --init: 초기화되지 않은 서브모듈 초기화
# --recursive: 서브모듈 내부의 서브모듈까지 재귀적으로 처리
# --remote: 각 서브모듈의 최신 커밋을 가져옴
git submodule update --init --recursive --remote

if [ $? -eq 0 ]; then
    echo "----------------------------------------"
    echo "✅ 서브모듈 업데이트 완료!"
    echo "----------------------------------------"
else
    echo "----------------------------------------"
    echo "❌ 서브모듈 업데이트 실패."
    echo "----------------------------------------"
    exit 1
fi
