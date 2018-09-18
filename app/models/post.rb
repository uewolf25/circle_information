class Post < ApplicationRecord
  validates :manager , {presence: true, uniqueness: true}
  validates :sports_kinds , {presence: true}
  validates :dates , {presence: true}
  validates :area , {presence: true}
  validates :explain , {presence: true}

end
