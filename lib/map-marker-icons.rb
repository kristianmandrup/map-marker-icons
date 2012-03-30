require "map-marker-icons/view_helper"

module WorldFlags
  module Rails
    class Engine < ::Rails::Engine        
    	initializer "setup for rails" do
    		ActionView::Base.send :include, MapMarkerIcons::ViewHelper
      end
    end
  end
end
