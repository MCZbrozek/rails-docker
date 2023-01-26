class Page < ApplicationRecord

    belongs_to :subject #Read this to mean Foreign Key
    has_many :sections
    has_and_belongs_to_many :admin_users

end
