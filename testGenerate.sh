#
# Mac OS のローカルで pdf 生成を実行したい場合はこれを実行する
#
# `sh testGenerate.sh` を実行すると `./doc/test/pdf` として pdf が生成される
#
# 実行には以下の依存をインストールする必要がある
#
# ```
# # pandoc
# brew install pandoc
#
# # tex（5GBぐらいある...）
# brew install --cask mactex
# eval "$(/usr/libexec/path_helper)"
#
# # フォント
# brew tap homebrew/cask-fonts
# brew install --cask font-noto-sans-mono
# ```

pandoc resume.md -o docs/test.pdf \
  --pdf-engine=xelatex \
  --template=pandoc-templates/template.latex \
  -V mainfont="Noto Sans CJK JP" \
  -V sansfont="Noto Sans CJK JP" \
  -V monofont="Noto Sans Mono" \
  -M titlepage=false \
  -M toc=false \
  -M colorlinks=true \
  -M title=""
