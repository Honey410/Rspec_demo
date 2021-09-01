class Player
    attr_accessor :credits  
    attr_accessor :active
    def sub_credits(sub_creds)
        if sub_creds == 0
            raise StandarrdError
        end
        @credits = @credits-sub_creds
    end
end