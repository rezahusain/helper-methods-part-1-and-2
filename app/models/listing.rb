# == Schema Information
#
# Table name: listings
#
#  id          :bigint           not null, primary key
#  description :text
#  location    :string
#  price       :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Listing < ApplicationRecord
end
