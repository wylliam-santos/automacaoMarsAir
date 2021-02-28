Quando("faço uma pesquisa com data de retorno menor que um ano") do
  @dash_page.invalid_search
end

Então("devo visualizar a mensagem: {string}") do |string|
  expect(page).to have_text "Unfortunately, this schedule is not possible. Please try again."
end
