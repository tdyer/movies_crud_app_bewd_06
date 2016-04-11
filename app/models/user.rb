class User < ActiveRecord::Base

  # A user may have created many reviews.
  has_many :reviews, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Create a virtual attribute for the full -name
  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name=(fname)
    # fullname.split returns an array ['tom', 'jones'] if fname string is "tom jones"
    # ['tom', 'jones'].map(&:strip) - for each member of the array call the String#strip method
    # this produces the array ['tom', 'jones']
    # self.first_name, self.last_name = ['tom', 'jones']
    self.first_name, self.last_name = fname.split.map(&:strip)
  end
end
