Spree::Image.class_eval do
  attachment_definitions[:attachment][:path] = '/store/:id-:hash/:style/:basename.:extension'
  attachment_definitions[:attachment][:hash_secret] = ENV['PAPERCLIP_HASH_SECRET']
end