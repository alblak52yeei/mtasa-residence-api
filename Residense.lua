addEventHandler( 'onPlayerLogin', root,
	function ( _, pAccount )
		fetchRemote ( 'http://ipwhois.app/json/'..source.ip, function ( sResult )
			local aData = fromJSON( sResult )
			pAccount:setData( 'country', aData.country )
			pAccount:setData( 'city', aData.city )
			pAccount:setData( 'provider', aData.isp )
			pAccount:setData( 'region', aData.region )
		end  )
	end )

GetPlayerCountry = function ( self )
	local pAccount = self.account
	if pAccount then
		return pAccount:getData( 'country' )
	end
	return false
end

GetPlayerCity = function ( self )
	local pAccount = self.account
	if pAccount then
		return pAccount:getData( 'city' )
	end
	return false
end

GetPlayerProvider = function ( self )
	local pAccount = self.account
	if pAccount then
		return pAccount:getData( 'provider' )
	end
	return false
end

GetPlayerRegion = function ( self )
	local pAccount = self.account
	if pAccount then
		return pAccount:getData( 'region' )
	end
	return false
end