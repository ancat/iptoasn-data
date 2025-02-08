module IpToAsn
  class Data
    def self.ip2asn
      File.join(File.dirname(File.expand_path(__FILE__)), 'data/ip2asn.dat')
    end

    def self.countries
      File.join(File.dirname(File.expand_path(__FILE__)), 'data/countries.dat')
    end

    def self.asnames
      File.join(File.dirname(File.expand_path(__FILE__)), 'data/asnames.dat')
    end
  end
end
