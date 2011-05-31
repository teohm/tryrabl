attributes :id, :title, :description, :start, :end, :location

child :creator => :creator do
  extends 'users/base'
end