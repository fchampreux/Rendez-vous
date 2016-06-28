module ApplicationHelper
  
  ### provide full title of a page
  def full_title(page_title)
    base_title = "Rendez-vous"
    if page_title.empty?
      base_title
    else
      "#{base_title} - #{page_title}"
    end
  end
  
end
