# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  image      :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord

end
