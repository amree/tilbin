# frozen_string_literal: true

module FlashesHelper
  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def user_facing_flashes
    flash.to_hash.slice("alert", "error", "notice", "success")
  end
end
