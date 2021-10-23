require 'open-uri'
require 'nokogiri'
require 'csv'

def scraping(url)
  p html = open(url.to_s).read
end

scraping("https://en.wikipedia.org/wiki/Termite")
