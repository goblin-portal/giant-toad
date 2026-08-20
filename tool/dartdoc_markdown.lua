local api_root_prefix = os.getenv("API_ROOT_PREFIX") or ""

local function normalize_path(path)
  local source_path = path
  while source_path:match("^%.%./") do
    source_path = source_path:sub(4)
  end
  if source_path:match("^file%-.+_lib_src_") then
    path = source_path:gsub("^file%-.+_lib_src_", "src_")
  end
  if path == "doc/README.md" then
    return "../README.md"
  end
  if path ~= ""
      and not path:match("^%.%./")
      and not path:match("^%./")
      and not path:match("^/")
      and not path:match("^%a[%w+.-]*:") then
    path = api_root_prefix .. path
  end
  return path
end

function Link(link)
  local target = link.target
  local path, fragment = target:match("^([^#]*)(#.*)$")
  if path == nil then
    path = target
    fragment = ""
  end

  if path:match("%.html$") then
    path = path:gsub("%.html$", ".md")
  elseif path ~= "" and path:match("/$") then
    path = path .. "index.md"
  end

  link.target = normalize_path(path) .. fragment
  return link
end

function Div(div)
  div.attr = pandoc.Attr()
  return div
end

function Image(image)
  if image.src:match("^assets/branding/") then
    image.src = "../../" .. image.src
  end
  return image
end