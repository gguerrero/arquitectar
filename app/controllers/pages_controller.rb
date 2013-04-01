class PagesController < ApplicationController
  def home
    @section = params[:section] || "intro"
    @title = t("pages.home.#{@section}.title")
  end

  def news
    @title = t('pages.news.title')
  end

  def collaboration
    @title = t('pages.collaboration.title')
  end

  def contact
    @title = t('pages.contact.title')
  end
end
