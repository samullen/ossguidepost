class Project < ActiveRecord::Base
  belongs_to :user

  validates :name, :length => { :maximum => columns_hash['name'].limit },
                   :presence => true
  validates :full_name, :presence => true,
                   :length => { :maximum => columns_hash['full_name'].limit },
                   :uniqueness => { :scope => :user_id }
  validates :language, :length => { :maximum => columns_hash['language'].limit }

  def to_param
    name
  end
end
