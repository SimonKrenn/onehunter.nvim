local M = {}

local function hex_to_rgba(hex)
  hex = string.lower(hex)

  local r, g, b, a = string.match(hex, '^#([a-f0-9][a-f0-9])([a-f0-9][a-f0-9])([a-f0-9][a-f0-9])([a-f0-9][a-f0-9])$')
  if r then
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), tonumber(a, 16) / 255 }
  end

  r, g, b = string.match(hex, '^#([a-f0-9][a-f0-9])([a-f0-9][a-f0-9])([a-f0-9][a-f0-9])$')
  if r then
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), 1 }
  end

  r, g, b, a = string.match(hex, '^#([a-f0-9])([a-f0-9])([a-f0-9])([a-f0-9])$')
  if r then
    r = r .. r
    g = g .. g
    b = b .. b
    a = a .. a
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), tonumber(a, 16) / 255 }
  end

  r, g, b = string.match(hex, '^#([a-f0-9])([a-f0-9])([a-f0-9])$')
  if r then
    r = r .. r
    g = g .. g
    b = b .. b
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), 1 }
  end

  error('hex_to_rgba: invalid hex: ' .. tostring(hex))
end

local function hex_to_rgb(hex)
  local c = hex_to_rgba(hex)
  return { c[1], c[2], c[3] }
end

M.hex_to_rgba = hex_to_rgba

function M.mix(fg, bg, alpha)
  local f = hex_to_rgba(fg)
  local b = hex_to_rgba(bg)

  assert(f, 'mix: invalid fg: ' .. tostring(fg))
  if not b then
    b = { 0, 0, 0, 0 }
  end

  local af = alpha
  if af == nil then
    af = f[4] or 1
  end
  af = math.min(math.max(0, af), 1)

  local ab = b[4] or 1

  local blendChannel = function(i)
    local ret = af * f[i] + (1 - af) * ab * b[i]
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02X%02X%02X', blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.shade(color, value, base)
  if vim.o.background == 'light' then
    if base == nil then
      base = '#000000'
    end

    return M.mix(color, base, math.abs(value))
  else
    if base == nil then
      base = '#ffffff'
    end

    return M.mix(color, base, math.abs(value))
  end
end

return M

