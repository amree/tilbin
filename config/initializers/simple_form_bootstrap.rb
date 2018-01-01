SimpleForm.setup do |config|
  config.error_notification_class = "toast toast-error"
  config.button_class = "btn"
  config.boolean_label_class = nil

  config.wrappers(
    :vertical_form,
    tag: "div",
    class: "form-group",
    error_class: "has-error"
  ) do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "form-label"
    b.use :input, class: "form-control"
    b.use :error, wrap_with: { tag: "p", class: "form-input-hint" }
    b.use :hint,  wrap_with: { tag: "p", class: "form-input-hint" }
  end

  config.wrappers(
    :vertical_boolean,
    tag: "div",
    class: "form-check",
    error_class: "has-error"
  ) do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :input, class: "form-check-input"
    b.use :label, class: "form-check-label"
    b.use :error, wrap_with: { tag: "p", class: "form-input-hint" }
    b.use :hint,  wrap_with: { tag: "p", class: "form-input-hint" }
  end

  config.default_wrapper = :vertical_form
  config.wrapper_mappings = {
    boolean: :vertical_boolean
  }
end
