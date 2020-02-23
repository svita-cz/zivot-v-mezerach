byla_predlozka = false

NBSP = " "

local nesmi = {
	k=true,
	s=true,
	v=true,
	z=true,
	a=true,
	i=true,
	o=true,
	u=true,
	
	K=true,
	S=true,
	V=true,
	Z=true,
	A=true,
	I=true,
	O=true,
	U=true
}

function Space(el)
	if byla_predlozka then
		return pandoc.Str(NBSP)
	end
	return el
end

function Str(el)
	byla_predlozka = nesmi[el.text] or false
	return el
end
