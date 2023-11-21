Given('I visit to {string}') do |string|
    visit string
  end
  
  When('I search for a {string}') do |string|
    sleep 2
    find('.input-search').click
    find('.input-search').set(string)
    find('.icon-search').click
  end
  
  Then('I click the first result') do
    (first('h3')).click
  end
  
  Then('I should see matching information for {string}') do |string|
    expect(find('h1').text == string)
  end