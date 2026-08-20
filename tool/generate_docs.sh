#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
output_dir="$repo_root/doc/api"
temporary_dir="$(mktemp -d)"
trap 'rm -rf "$temporary_dir"' EXIT

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc is required to generate Markdown API documentation." >&2
  exit 1
fi

cd "$repo_root"
dart doc --output "$temporary_dir/dartdoc"

rm -rf "$output_dir"
mkdir -p "$output_dir"

while IFS= read -r -d '' source; do
  relative_path="${source#"$temporary_dir/dartdoc/"}"
  normalized_path="$(printf '%s' "$relative_path" | sed -E 's#^file-.+_lib_src_#src_#')"
  target="$output_dir/${normalized_path%.html}.md"
  directory="${normalized_path%/*}"
  api_root_prefix=""
  if [[ "$directory" != "$normalized_path" ]]; then
    api_root_prefix="../"
    while [[ "$directory" == */* ]]; do
      api_root_prefix="../$api_root_prefix"
      directory="${directory#*/}"
    done
  fi
  mkdir -p "$(dirname "$target")"
  API_ROOT_PREFIX="$api_root_prefix" pandoc \
    --from=html \
    --to=gfm \
    --wrap=none \
    --lua-filter="$repo_root/tool/dartdoc_markdown.lua" \
    --output="$target" \
    "$source"
done < <(find "$temporary_dir/dartdoc" -type f -name '*.html' -print0)

echo "Generated Markdown API documentation in doc/api."
