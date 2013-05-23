template = {}

if not template.sets then template.sets = {} end

template.init = function()
	mg.write( 'HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n' )
end

template.set = function( file )
	if not template.sets[file] then
		local f = io.open( file, 'r' )
		local c = f:read('*a')
		f:close()
		template.sets[file] = c
	end
	mg.write( template.sets[file] )
end
