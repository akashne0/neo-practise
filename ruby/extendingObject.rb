class User
    def hasReadPermissions?
			true
		end

		def hasWritePermissions?
			false
		end
end

module Admin

	def hasReadPermissions?
		true
	end

	def hasWritePermissions?
		true
	end

end

user = User.new
puts user.hasReadPermissions?
puts user.hasWritePermissions?

user.extend(Admin)
puts user.hasReadPermissions?
puts user.hasWritePermissions?

 