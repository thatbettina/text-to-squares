class Photo

  def initialize(location, timestamp, resize)
    #location and time automatically added and resized to thumbnail sqaure
  end

class User

  def initialize(name)
    #default is a number but user can name themselves
  end
  
  def upload(photo)
    #adds one or more photo
  end
  
  def add(@tag)
    #adds tag/s to photo which are visible
  end
  
  def export(@tag)
    #exports photos 
  end

class UserTest < Test::Unit::TestCase
end

class PhotoTest < Test::Unit::TestCase
end

#Photos should be automatically resized into a thumbnail, be stored full-size up to 2 MG, be located on a map, timestamp for the upload, and be tagged. Photos should only expose tags to Users so that they may be exported as a group.

#User should be given a number or else have the choice to name themselves a unique name. Users should be able to upload many photos at once, write descriptions for them as a group, and be able to export/import photos from flickr, Pinterest, etc.

