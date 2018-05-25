require 'active_support'
require 'active_support/all'
require 'fnv'
require 'byebug'
require 'bcrypt'
require 'jwt'
require "date"
module WebToken
	class MakeToken
		def initialize( user_id )
			data = {
				userid: user_id,
				date: Date.today.to_s,
				time: Time.now
			}
			payload = {:data => data}
			@token = JWT.encode payload, nil, 'none'
			# decoded_token = JWT.decode @token, nil, false
			# @data = decoded_token[0]['data']
		end
		def web_token
			@token
		end
	# def data
	# 	 @data
	# end

	end
end


