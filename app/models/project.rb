class Project < ActiveRecord::Base
  belongs_to :user

  validates :name, :length => { :maximum => columns_hash['name'].limit },
                   :presence => true
  validates :full_name, :presence => true,
                   :length => { :maximum => columns_hash['full_name'].limit },
                   :uniqueness => { :scope => :user_id }
  validates :language, :length => { :maximum => columns_hash['language'].limit }

  def self.seeking_maintainer
    where("projects.seeking_maintainer_since IS NOT NULL")
  end

  def seeking_maintainer?
    self.seeking_maintainer_since?
  end

  def seeking_maintainer=(boolean)
    self.seeking_maintainer_since = boolean ? Time.zone.now : nil
  end

  def to_param
    name
  end

end
