require 'byebug'
require 'bcrypt'
require 'jwt'
require "date"

module WebToken

	class WebtokenValidate
		# def initialize( token, model )
			
		# end
		def validate( token )
			begin
				decoded_token = JWT.decode token, nil, false
			rescue JWT::ExpiredSignature
			rescue JWT::ImmatureSignature
			rescue JWT::DecodeError
				
			end
			if decoded_token.present?
				@data = decoded_token[0]['data'] 
				time = @data['time'].to_time+ 1.hour > Time.now	
				if time 
					@data
				else
					false
				end
			else
				false
			end

			 # user = Kernel.const_get(@model).find(@data['userid'].to_i)
			 # if user.present? && time
			 # 	user
			 # else
			 # 	return false
			 # end
		end

	end
end
