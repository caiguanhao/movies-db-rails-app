module ApplicationHelper
  def bootstrap_flash
    messages = []

    flash.each do |type, msg|
      next if msg.blank?
      type_map = { notice: :success, alert: :danger, error: :danger }
      msg = '<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>' + msg
      messages << content_tag(:div, msg.html_safe, class: "alert alert-#{type_map[type.to_sym]} alert-dismissible")
    end

    html = messages.join("\n")

    html = content_tag(:div, html.html_safe, class: "alerts") if html.present?
    
    html.html_safe
  end
end
