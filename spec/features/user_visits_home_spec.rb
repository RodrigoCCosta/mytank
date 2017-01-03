require 'rails_helper'
feature 'user visits home' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'Bem-vindo ao MyTank')
    expect(page).to have_content('Conta')
    expect(page).to have_content('Carros')
    expect(page).to have_content('Tanques')
  end
end
