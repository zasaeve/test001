namespace :api do

  desc "Access Shelter Animals Data and Parse Save to Database"
  task shelter_data: :environment do
    p 'Hello world'
    require 'JSON'
    require 'net/http'

    url = 'http://data.coa.gov.tw/Service/OpenData/TransService.aspx?UnitId=QcbUEzN6E6DL'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @result = JSON.parse(response)
    
    @result.each do |result|
      Animal.create(
        animal_subid: result['animal_subid'],
        animal_area_pkid: result['animal_area_pkid'],
        animal_kind: result['animal_kind'],
        animal_sex: result['animal_sex'],
        animal_age: result['animal_age'],
        animal_sterilization: result['animal_sterilization'],
        animal_foundplace: result['animal_foundplace'],
        album_file: result['album_file'],
        on_sell: true
      )
      Shelter.create(
        shelter_name: result['shelter_name'],
        shelter_address: result['shelter_address'],
        shelter_tel: result['shelter_tel']
      )
    end
  end
end


