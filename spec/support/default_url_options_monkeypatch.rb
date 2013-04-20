class ActionView::TestCase::TestController
  def default_url_options(options={})
    { :locale => I18n.default_locale }
  end
end

class ActionDispatch::Routing::RouteSet
  def default_url_options(options={})
    { :locale => I18n.default_locale }
  end
end

class ActionController::TestCase
  module Behavior
    def process_with_default_locale(action, http_method = 'GET', 
                                    parameters = nil, session = nil, flash = nil)
      parameters = { locale: I18n.default_locale }.merge(parameters || {})
      process_without_default_locale(action, http_method, parameters, 
                                     session, flash)
    end
    alias_method_chain :process, :default_locale
  end
end