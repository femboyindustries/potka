set{97, 100, "middle", 50, "mini", 2, "xmod"}
set{97, 20, "tipsy"}

rand.seed(234332)

function wobble(t) return (1 - inQuad(t)) * math.sin(math.pi * 2^10 * t) end

function r() return rand.float(-0.5, 0.5) end

for b = 97, 189 do
	set{b, r()*scx, "x", r()*60, 'rotationz', r()*60, 'rotationx', r()*60, 'rotationy', r()*100, 'y', r()*100, 'z'}
	add{b, 0.5, wobble, 50, "x"}
	add{b, 0.5, pop, -50, "tiny"}
end

for b = 129, 189 do
	acc{b, 100, "reverse"}
end
