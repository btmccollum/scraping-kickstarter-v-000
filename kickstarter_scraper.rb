# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('./fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    project[project] = {}
  end

  projects
  # projects: kickstarter.css("li.project.grid_4")
  # titles: kickstarter.css("h2.bbcard_name strong a").text
  # image link : project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
  # location: project.css("span.location-name").text
  # percent_funded: project.css("ul.project-stats li.first.funded strong").text
  #   use .gsub("%", "").to_i to remove the % and make it an integer
  # amount_funded: project.css("ul.project-stats li.pledged strong span.money.us.no-code").text
  # amount_funded: project.css("li.pledged span.money.usd.no-code").text
  # empty_bullet: project.css("li.last.ksr_page_timer strong div.num").text
end

create_project_hash
binding.pry
