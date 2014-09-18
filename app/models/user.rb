class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        

  has_many :statuses

  def full_name
  	# if first_name and last_name
    	first_name + " " + last_name
    # else
    # 	"Has no name"
    # end
  end


  # def full_name
  #  if self.first_name.blank? && self.last_name.blank?
  #       return "has no name"
  #  else
  #       if self.first_name.blank?
  #           return self.last_name
  #       elsif self.last_name.blank?
  #           return self.first_name
  #       else
  #            return self.first_name + " " + self.last_name
  #       end
  #  end
  # end

end
