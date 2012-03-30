module MapMarkerIcons
	module ViewHelper
		def map_markers color = '', &block
			raise "Missing block" unless block_given?
			content = capture(&block)
			content_tag :ul, content, :class => "map-markers #{color}"
		end

		def map_marker_list marker_hash
			marker_hash.inject("") do |res, element|
				res << map_marker(element.first, element.last, display)
			end.html_safe
		end

		def map_marker code, name
			anchor = content_tag :a, :title => name, :alt => name
			content_tag :li,  anchor.html_safe, :class => "map-marker sprite-#{code}"
		end		
	end
end