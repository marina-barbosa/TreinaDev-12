require 'rails_helper'

describe 'Usuario cadastra um galpão' do
  it 'a partir da tela inicial' do
    # Arrange

    # Act
    visit root_path
    click_on 'Cadastrar Galpão'
    # Assert
    expect(page).to have_field('Nome')
    expect(page).to have_field('Código')
    expect(page).to have_field('Cidade')
    expect(page).to have_field('Area')
  end
  it 'com sucesso' do
    # Arrange

    # Act
    visit root_path
    click_on 'Cadastrar Galpão'
    fill_in 'Nome', with 'Rio de Janeiro'
    fill_in 'Código', with 'RIO'
    fill_in 'Cidade', with 'Rio de Janeiro'
    fill_in 'Area', with '32000'
    # Assert
    expect(current_path).to eq root_path
    expect(page).to have_content 'Rio de Janeiro'
    expect(page).to have_content 'RIO'
    expect(page).to have_content '32000'
  end