class Name < ApplicationRecord
    validates :email, presence: true
    # validates :name, :password :presence => { :message => "name or Password should not be blanked"}
end
