require 'savon'

module WsCon
  def self.client
    return Savon.client(wsdl: 'http://localhost:8084/TsmsServer/WS?wsdl')
  end
end