#
# Mac OS のローカルで pdf 生成を実行したい場合はこれを実行する
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
# brew install --cask font-noto-sans-cjk-jp
# ```

pandoc resume.md -o docs/test.pdf \
  --pdf-engine=xelatex \
  --template=pandoc-templates/template.latex \
  -V mainfont="Noto Sans CJK JP" \
  -V sansfont="Noto Sans CJK JP" \
  -V monofont="Noto Sans Mono" \
  -V cjkfont="Noto Sans CJK JP" \
  -V cjksansfont="Noto Sans CJK JP" \
  -V cjkmonofont="Noto Sans Mono" \
  -M titlepage=false \
  -M toc=false \
  -M colorlinks=true \
  -M title=""
