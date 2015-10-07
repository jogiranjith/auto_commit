Devise.setup do |config|
  
    
    config.case_insensitive_keys = [ :email ]
    config.strip_whitespace_keys = [ :email ]
    config.sign_out_via = :get
    config.authentication_keys = [ :login ]
end
