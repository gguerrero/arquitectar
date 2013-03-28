module ApplicationHelper
  def title
    (@title.present?) ? "#{t('name')} | #{@title}" : t('name') 
  end
end
