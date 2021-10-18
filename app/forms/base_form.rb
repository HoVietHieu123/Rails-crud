class BaseForm
  include ActiveModel::Model
  include ApplicationHelper

  def save
    return false if invalid?

    persist!
    true
  rescue ActiveRecord::RecordNotFound => e
    errors.add(e.model.underscore.to_sym, e.message)

    false
  rescue StandardError => e
    Rails.logger.error e.to_s
    Rails.logger.debug { e.backtrace.join("\n") }
    Rails.logger.error errors.full_messages.join("\n")

    false
  end
end
