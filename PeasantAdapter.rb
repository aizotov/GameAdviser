require 'open-uri'

## factory-like class for creating direct connections with Peasant micro-service
## stripped from http://stackoverflow.com/questions/746207/ruby-design-pattern-how-to-make-an-extensible-factory-class

class PeasantAdapter
  @@subclasses = { }
  def self.create(type, url)
    c = @@subclasses[type]
    if c
      c.new(url)
    else
      raise "Unknown PeasantConnector type"
    end
  end
  def self.register_peasant name
    @@subclasses[name] = self
  end
end

class V1PeasantAdapter < PeasantAdapter
  def initialize url
    @@url = url
  end
  def getUsernameInfo username
    open("http://#{@@url}/user_info?username=#{username}") do |f|
      f.read
    end
  end
  register_peasant :v1
  Object.const_set("#{name.to_s.capitalize}PeasantConnector", self)
end

## example use
## aaa = PeasantConnector.create(:v1, "localhost:8888")
## aaa.getUsernameInfo("foo")

