Dado("que acesso o portal MarsAir") do
  visit "/wylliamsantos"
end

Quando("a página é carregada") do
  expect(page).to have_text "Welcome to MarsAir!"
end

Então("eu devo visualizar os campos de Saida e Retorno no formulário") do
  expect(page).to have_selector(:id, "departing")
  expect(page).to have_selector(:id, "returning")
end

Então("eu posso selecionar as opções de julho e dezembro para pesquisa") do
  expect(page).to have_selector(:id, "departing", text: "July")
  expect(page).to have_selector(:id, "departing", text: "December")
  expect(page).to have_selector(:id, "returning", text: "July")
  expect(page).to have_selector(:id, "returning", text: "December")
end

Então("eu posso selecionar voos para os próximos dois anos") do
  expect(page).to have_selector(:id, "departing", text: "July (two years from now)")
  expect(page).to have_selector(:id, "departing", text: "December (two years from now)")
  expect(page).to have_selector(:id, "returning", text: "July (two years from now)")
  expect(page).to have_selector(:id, "returning", text: "December (two years from now)")
end

Quando("eu faço uma pesquisa com acentos disponiveis") do
  @dash_page.seats_available
end

Então("eu devo visualizar a mensagem de sucesso: {string}") do |string|
  expect(page).to have_text "Seats available!"
  expect(page).to have_text "Call now on 0800 MARSAIR to book!"
end

Quando("eu faço uma pesquisa com acentos indisponiveis") do
  @dash_page.seats_unavailable
end

Então("eu devo visualizar a mensagem de erro: {string}") do |string|
  expect(page).to have_text "Sorry, there are no more seats available."
end
