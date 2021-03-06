# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean          default(FALSE)
#

class User < ActiveRecord::Base

  has_secure_password

  attr_accessible :email, :image, :name, :password_digest, :cookbook_id, :password, :password_confirmation, :is_admin

  mount_uploader :image, ImageUploader

  has_many :cookbooks
end
