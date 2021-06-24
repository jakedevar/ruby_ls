require 'open-uri'
require 'nokogiri'
require 'csv'

def scraping(url)
  p html = open("#{url}").read
end

scraping("https://en.wikipedia.org/wiki/Termite")
