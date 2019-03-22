class StaticPagesController < ApplicationController
	@@images = [
  		"https://cdn.studyinternational.com/news/wp-content/uploads/2017/05/Dwight-3.jpg",
  		"https://www.dwightschooldubai.ae/sites/default/files/styles/generic_page_image_size/public/2018-03/Classroom%207.jpg?itok=xrxymDgZ"  	
  	]

  	@@images2 = [
  	"https://www.dwight.edu/data/news/thumbs/737.large.jpg",
	"https://www.dwight.edu/uploaded/photos/PROGRAMS/INNOVATION/Pg10-dwt_17_247.jpg"  	
	]

  	@@images3 =[
  	"https://www.dwight.edu/uploaded/GLOBAL/Programs/Peer_tutoring/Tutoring_-_Resized.jpg",
  	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvNhe3vJnoKlsDquFwi2m6Bd__hPf8WpJDE17cmAYV9huRSoNg"
  	]
  def home
  	@random = @@images.sample
  	@random2 = @@images2.sample
  	@random3 = @@images3.sample
  end

  def middleSchool
  end

  def highSchool
  end

  def admin
  end
end
