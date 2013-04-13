class Cab < ActiveRecord::Base
  attr_accessible :medallion_number

  has_many :check_ins

  validates :medallion_number, presence: true, uniqueness: true

  acts_as_commentable

	def to_param  # overridden
    medallion_number
  end

  def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
	    cab = find_by_id(row["id"]) || new
	    cab.attributes = row.to_hash.slice(*accessible_attributes)
	    cab.save!
	  end
	end

	def self.search(search)
	  if search
	    cab = find(:all, :conditions => ['medallion_number LIKE ?', "%#{search}%"])
	    # cab = find(:all, :conditions => ['medallion_number LIKE ?', "%#{search}%"])
	    # @cab = Cab.find_by_medallion_number(params[:id])
	  else
	    find(:all)
	  end
	end
end
