log = {}

log.write = function( msg, file, format )
	if file == nil then file = "mongoose.log" end
	local f = io.open( file, 'a' )
	if format == nil then
		f:write( os.date() .. " : " .. msg )
	else
		f:write( os.date(format) .. " : " .. msg )
	end
	f:close()
end
