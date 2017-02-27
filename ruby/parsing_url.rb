require 'nokogiri'
require 'open-uri'

10001.upto(10050) do |x|
  url = "http://movie.naver.com/movie/bi/mi/basic.nhn?code=#{x}"
  page = Nokogiri::HTML(open(url))

  title = page.search("title").inner_html

  title_edit = title.split(':')[0]
  puts "#{x}, #{title_edit}"
end
