Quando("eu faço a inclusão de um código válido") do
  @dash_page.valid_code
end

Então("eu visualizo a mensagem de sucesso: {string}") do |string|
  expect(page).to have_text "Promotional code AF3-FJK-418 used: 30% discount!"
end

Quando("eu faço a inclusão de um código inválido") do
  @dash_page.invalid_code
end

Então("visualizo a mensagem de erro: {string}") do |string|
  expect(page).to have_text "Sorry, code JJ5-OPQ-320 is not valid"
end
