class UserForm < BaseForm
  FORM_FIELDS = [
    :full_name,
    :email,
    :phone,
    :address,
    :birthday,
    :avatar,
    :gender
  ].freeze

  validates :full_name, :email, :phone, :address, :birthday, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, numericality: true, length: { is: 10 }
  validate :full_name_is_unique
  validate :email_is_unique

  attr_accessor :user, :params

  FORM_FIELDS.each do |f|
    attr_accessor f
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "UserForm")
  end

  def initialize(params = {}, user = nil)
    FORM_FIELDS.each { |f| send("#{f}=", params[f]) }
    @user = user || User.new
  end

  private

  def persist!
    assign_params
    user.save!
  end

  def assign_params
    user.full_name = full_name
    user.email = email
    user.phone = phone
    user.address = address
    user.birthday = date_parse(birthday)
    user.avatar = avatar
    user.gender = gender.to_i
  end

  def email_is_unique
    return true unless User.find_by(email: email).persisted?

    errors.add(:email, "is unique")
  end

  def full_name_is_unique
    return true unless User.find_by(full_name: full_name).persisted?

    errors.add(:full_name, "is unique")
  end
end
