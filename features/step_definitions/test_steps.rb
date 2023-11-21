Given('I visit {string}') do |string|
    visit string
  end
  
  When('I search for {string}') do |string|
    sleep 2
    find('.input-search').click
    find('.input-search').set(string)
    find('.icon-search').click
  end
  
  Then('I should see search results for {string}') do |string|
    expect(first('h3').text == string)
  end 