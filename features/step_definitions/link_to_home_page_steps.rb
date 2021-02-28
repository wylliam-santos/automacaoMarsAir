Então("eu devo visualizar o titulo: {string}") do |string|
  expect(page).to have_text "Book a ticket to the red planet now!"
end

Quando("clico no logotipo da MarsAir") do
  find("a[href='/wylliamsantos']").click
end

Então("devo ser redirecionado para a tela inicial") do
  expect(page).to have_text "MarsAir"
end
