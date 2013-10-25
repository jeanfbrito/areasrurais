module ApplicationHelper

  def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
  end

  def have_value(item)
    if item.present? && item > 0
      return true
    else
      return false
    end
  end
  
end
