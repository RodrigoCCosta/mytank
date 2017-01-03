require 'rails_helper'
  feature 'user creates a tank' do
    scenario 'successfully' do
      car = create(:car)
      tank = build(:tank)

      visit root_path

      click_on 'Tanques'

      click_on 'Novo Tanque'

      expect(page).to have_css('h1', text: "Registrar Tanque")
      select 'car',                          from: 'Escolha o Carro:'
      select 'Urbano',                       from: 'Trecho predominantemente:'
      fill_in 'Distância percorrida:',       with: tank.distance
      fill_in 'Litros para completar:',      with: tank.fillvol
      fill_in 'Preço por litro: R$',         with: tank.price
      select 'Etanol',                       from: 'Combustível:'
      select '2017',                         from: 'tank_startdate_1i'
      select 'January',                      from: 'tank_startdate_2i'
      select '1',                            from: 'tank_startdate_3i'
      select '2017',                         from: 'tank_finaldate_1i'
      select 'January',                      from: 'tank_finaldate_2i'
      select '1',                            from: 'tank_finaldate_3i'
      fill_in 'Anotações e Oberservações:',  with: tank.obs

      click_on 'Calcular e Salvar'

      expect(page).to have_css('h1', text: "#{tank.car.brand} #{tank.car.name}")
      expect(page).to have_css('h2', text: "Tanque utilizado de #{tank.startdate} a #{tank.finaldate}")
      expect(page).to have_content("#{tank.fillvol} litros de #{tank.fuel} gastos em #{tank.distance} km de trecho #{tank.way}")
      expect(page).to have_content("O custo total foi de R$ #{tank.price*tank.fillvol}")
      expect(page).to have_content("O cuto por Km foi de R$ #{((tank.price*tank.fillvol).round(2)/(tank.distance)).round(2)}")
      expect(page).to have_content("O consumo médio foi de #{tank.distance/tank.fillvol} km/l")
      expect(page).to have_content("Anotações e Observações: #{tank.obs}")
      expect(page).to have_link('Voltar')
    end
end
