class Section < ApplicationRecord

    belongs_to :page #Read this to mean Foreign Key
    has_many :section_edits
    has_many :admin_user, :through => :section_edits
end
