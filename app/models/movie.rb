# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  belongs_to(:director, { :foreign_key => "director_id", :class_name => "Director"})

  # The belongs_to can also be written per the below, if the both the foreign key and the association name match the table name. i.e. in this case both match the name of the Director table and rails assumes you're joining both Movie an Director tables by the director_id table. 
  # belongs_to(:director)

  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end
