#!/bin/sh
# index.html 是 artifact 版本（沒有 doctype/head）。這裡包上完整骨架，輸出到 docs/ 給 GitHub Pages。
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="zh-Hant">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
echo "built docs/index.html"
