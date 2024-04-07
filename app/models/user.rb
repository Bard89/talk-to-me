# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # region Constants
  # endregion

  # region Extensions
  # endregion

  # region Associations
  has_many :documents, dependent: :destroy
  # endregion

  # region Attribute macros
  # endregion

  # region Scopes
  # endregion

  # region Validations
  # endregion

  # region Callback
  # endregion
end
