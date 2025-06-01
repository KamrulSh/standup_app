module ApplicationHelper
  def tailwind_color_class_for(flash_type)
    {
      success: "green",
      error: "red",
      alert: "orange",
      notice: "yellow"
    }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(_opts = {})
    flash.each do |msg_type, message|
      next if msg_type == :form_error || message.blank?

      color = tailwind_color_class_for(msg_type)

      concat(
        content_tag(:div, role: msg_type, class: "alert p-4 m-4 mt-5 w-3/5 bg-#{color}-100 border border-#{color}-400 text-#{color}-700 rounded-lg shadow transition-all duration-1000 ease-in-out") do
          concat content_tag(:span, message.html_safe, class: "block sm:inline")
        end
      )
    end
    nil
  end
end
