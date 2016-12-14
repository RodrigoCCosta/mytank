require 'rails_helper'

feature 'user edits car' do
  scenario 'successfully' do
  car = create(:car)

  visit root_path

  click_on 'Carros'

  click_on car.name

  expect(page).to have_css('h1', text: "#{car.brand} #{car.name}")
  expect(page).to have_content("Versão: #{car.version}")
  expect(page).to have_content("Ano/Modelo: #{car.yearmodel}")
  expect(page).to have_content("Tanque: #{car.tankvol} litros")

  expect(page).to have_link('Voltar')
  expect(page).to have_link('Editar')

  click_on 'Editar'

  fill_in 'Marca',            with: car.brand
  fill_in 'Modelo',           with: car.name
  fill_in 'Versão',           with: 'Xei 2.0 auto'
  fill_in 'Ano/Modelo',       with: car.yearmodel
  fill_in 'Volume do Tanque', with: 60

  expect(page).to have_link('Voltar')
  expect(page).to have_button('Atualizar')
  end
  scenario 'user delete car', js:true  do
    car = create(:car)
    car = build(:car)

    visit root_path

    click_on 'Carros'

    click_on car.name

    click_on 'Apagar Carro'

    expect(page).to have_content 'Tem certeza que deseja apagar este carro? Seus dados de consumo serão apagados, alterando o cáculo da média geral.'

    click_on 'Ok'

    redirect_to cars_path
  end
end
