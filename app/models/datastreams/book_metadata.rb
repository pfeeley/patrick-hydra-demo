class BookMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.title
    t.author
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
