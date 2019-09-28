

function Image(el)
	return pandoc.Str("IMG " .. el.src .. " * " ..pandoc.utils.stringify(el.caption))
end