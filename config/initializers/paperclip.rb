if Rails.env.production?
	Paperclip::Attachment.default_options[:url] = 'famfamfambucket.s3.amazonaws.com'
	Paperclip::Attachment.default_options[:path] = '/:attachment/:id_partition/:style/:filename'
	Paperclip::Attachment.default_options[:s3_host_name] = 'famfamfambucket.s3.amazonaws.com'
end