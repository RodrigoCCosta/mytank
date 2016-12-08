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

      expect(page).to have_css('h1', car.brand)
      expect(page).to have_css('h1', car.name)
      expect(page).to have_content('Versão:')
      expect(page).to have_content(car.version)
      expect(page).to have_content('Ano/Modelo:')
      expect(page).to have_content(car.yearmodel)
      expect(page).to have_content('Tanque:')
      expect(page).to have_content(car.tankvol)
      expect(page).to have_content('litros')

      expect(page).to have_content('Voltar', cars_path)

    end
  end
