class Image < ActiveRecord::Base
    mount_uploader :filename, ImageUploader
end
