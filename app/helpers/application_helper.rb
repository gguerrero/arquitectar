module ApplicationHelper
  def title
    (@title.present?) ? "#{t('name')} | #{@title}" : t('name') 
  end

  def image_link_to(image_path, uri_path, opts = {})
    link_to(image_tag(image_path, opts), uri_path, target: 'blank')
  end
end
