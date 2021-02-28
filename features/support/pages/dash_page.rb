class DashPage
  include Capybara::DSL

  def seats_available
    find(:select, "departing").first(:option, "July").select_option
    find(:select, "returning").first(:option, "December (two years from now)").select_option
    click_on "Search"
  end

  def seats_unavailable
    find(:select, "departing").first(:option, "July").select_option
    find(:select, "returning").first(:option, "July (next year)").select_option
    click_on "Search"
  end

  def valid_code
    find(:select, "departing").first(:option, "July").select_option
    find(:select, "returning").first(:option, "December (two years from now)").select_option
    find("input[id='promotional_code']").set "AF3-FJK-418"
    click_on "Search"
  end

  def invalid_code
    find(:select, "departing").first(:option, "July").select_option
    find(:select, "returning").first(:option, "December (two years from now)").select_option
    find("input[id='promotional_code']").set "JJ5-OPQ-320"
    click_on "Search"
  end

  def invalid_search
    find(:select, "departing").first(:option, "July").select_option
    find(:select, "returning").first(:option, "December").select_option
    click_on "Search"
  end
end
