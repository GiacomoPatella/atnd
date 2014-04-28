require 'spec_helper'

feature 'Events' do

  scenario 'with no events #index should be empty' do
    visit '/events'
    expect(page).to have_text("no events")
  end

  scenario 'with an event #index should display the event name' do
    Event.create(name: "Pubhack")
    visit '/events'
    expect(page).to have_content("Pubhack")
  end

  scenario 'we can view the event at #show' do
    event = Event.create(name: "Pubhack")
    visit "/events/#{event.id}"
    expect(page).to have_content("Pubhack")
  end 

  
  
end