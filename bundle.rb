require 'ruble'

bundle 'Kohana' do |bundle|
	bundle.author = 'Oscar Hinton'
	bundle.display_name = "Kohana"
	
	bundle.menu 'Kohana' do |main_menu|
		main_menu.command 'Controller ...'
		main_menu.menu 'Models' do |submenu|
			submenu.command 'Jelly ...'
		end
	end
end
