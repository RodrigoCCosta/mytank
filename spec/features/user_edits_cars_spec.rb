require 'rails_helper'
  feature 'user edits car' do
    scenario 'successfully' do
    car = create(:car)

    visit root_path

    click_on 'Carros'

    click_on car.name

    click_on 'Editar'

    fill_in 'Versão',           with: 'Xei 2.0 auto'

    fill_in 'Volume do Tanque', with: 60

    expect(page).to have_link('Voltar')
    expect(page).to have_button('Atualizar')
    end
    scenario 'unsuccessfully' do
      car = create(:car)
      car = build(:car)

      visit root_path

      click_on 'Carros'

      click_on car.name

      click_on 'Editar'

      fill_in 'Versão',           with: ''

      click_on 'Atualizar'

      expect(page).to have_content 'É necessário preencher todos os campos!'

    end
  end


  #    car = create(:car)
  #    car = build(:car)

  #    visit root_path

  #    click_on 'Carros'

  #    click_on car.name

  #    click_on 'Apagar Carro'

  #    expect(page).to have_content 'Tem certeza que deseja apagar este carro? Seus dados de consumo serão apagados, alterando o cáculo da média geral.'

  #    click_on 'Ok'

  #    redirect_to cars_path
  #  end
