module ApplicationHelper
  def devise_form(&block)
    content_tag :div, class: [:ui, :grid] do
      content_tag(:div, "", class: [:five, :wide, :column])+
      content_tag(:div, capture(&block), class: [:six, :wide, :column]) +
      content_tag(:div, "", class: [:five, :wide, :column])
    end
  end
end
