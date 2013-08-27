logos_to_update = [
	[3, 'fulfillrite.jpg'],
	[8, 'morpho_mfg.jpg']
]

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

logos_to_update.each do |id, filename|
	this_service = Service.find(id)
	this_service.update_attribute(:logo, File.open(File.join(File.expand_path(File.dirname(__FILE__)), "ServiceLogoImages/#{filename}"), 'r'))
end