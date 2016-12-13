require 'rails_helper'
feature 'user visits home' do
  scenario 'successfully' do
    car = build(:car)

    visit root_path

    click_on 'Carros'

    click_on 'Adicionar Carro'

    fill_in 'Marca',            with: car.brand
    fill_in 'Modelo',           with: car.name
    fill_in 'Versão',           with: car.version
    fill_in 'Ano/Modelo',       with: car.yearmodel
    fill_in 'Volume do Tanque', with: car.tankvol

    click_on 'Adicionar'

    expect(page).to have_css('h1', text: "#{car.brand} #{car.name}")
    expect(page).to have_content("Versão: #{car.version}")
    expect(page).to have_content("Ano/Modelo: #{car.yearmodel}")
    expect(page).to have_content("Tanque: #{car.tankvol} litros")

    expect(page).to have_link('Voltar')
  end
end
