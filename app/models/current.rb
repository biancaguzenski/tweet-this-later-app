class Current < ActiveSupport::CurrentAttributes
    # this class you use in your requests to assign things: user, timezone, what account 
    # they are on and other details that pertain to the current request
    # if logged in, current.user != nil
    attribute :user
end