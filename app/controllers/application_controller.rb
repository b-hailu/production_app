class ApplicationController < ActionController::Base
    def welcome
        render html: "Welcome Customer"
    end 
end
