class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata

  delegate :title, to: 'descMetadata', unique: true
  delegate :author, to: 'descMetadata', unique: true

end
