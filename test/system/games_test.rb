require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "creating a Game" do
    visit games_url
    click_on "New Game"

    fill_in "First Inning Fours", with: @game.first_inning_fours
    fill_in "First Inning Sixes", with: @game.first_inning_sixes
    fill_in "First Inning Wickets", with: @game.first_inning_wickets
    fill_in "First Team", with: @game.first_team
    fill_in "First Team Score", with: @game.first_team_score
    fill_in "Home Team", with: @game.home_team
    fill_in "Match Type", with: @game.match_type
    fill_in "Result", with: @game.result
    fill_in "Second Inning Fours", with: @game.second_inning_fours
    fill_in "Second Inning Sixes", with: @game.second_inning_sixes
    fill_in "Second Inning Wickets", with: @game.second_inning_wickets
    fill_in "Second Team", with: @game.second_team
    fill_in "Second Team Score", with: @game.second_team_score
    fill_in "Series", with: @game.series_id
    fill_in "Venue", with: @game.venue_id
    fill_in "Winning Team", with: @game.winning_team
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "updating a Game" do
    visit games_url
    click_on "Edit", match: :first

    fill_in "First Inning Fours", with: @game.first_inning_fours
    fill_in "First Inning Sixes", with: @game.first_inning_sixes
    fill_in "First Inning Wickets", with: @game.first_inning_wickets
    fill_in "First Team", with: @game.first_team
    fill_in "First Team Score", with: @game.first_team_score
    fill_in "Home Team", with: @game.home_team
    fill_in "Match Type", with: @game.match_type
    fill_in "Result", with: @game.result
    fill_in "Second Inning Fours", with: @game.second_inning_fours
    fill_in "Second Inning Sixes", with: @game.second_inning_sixes
    fill_in "Second Inning Wickets", with: @game.second_inning_wickets
    fill_in "Second Team", with: @game.second_team
    fill_in "Second Team Score", with: @game.second_team_score
    fill_in "Series", with: @game.series_id
    fill_in "Venue", with: @game.venue_id
    fill_in "Winning Team", with: @game.winning_team
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "destroying a Game" do
    visit games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game was successfully destroyed"
  end
end
