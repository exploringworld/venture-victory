require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { first_inning_fours: @game.first_inning_fours, first_inning_sixes: @game.first_inning_sixes, first_inning_wickets: @game.first_inning_wickets, first_team: @game.first_team, first_team_score: @game.first_team_score, home_team: @game.home_team, match_type: @game.match_type, result: @game.result, second_inning_fours: @game.second_inning_fours, second_inning_sixes: @game.second_inning_sixes, second_inning_wickets: @game.second_inning_wickets, second_team: @game.second_team, second_team_score: @game.second_team_score, series_id: @game.series_id, venue_id: @game.venue_id, winning_team: @game.winning_team } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { first_inning_fours: @game.first_inning_fours, first_inning_sixes: @game.first_inning_sixes, first_inning_wickets: @game.first_inning_wickets, first_team: @game.first_team, first_team_score: @game.first_team_score, home_team: @game.home_team, match_type: @game.match_type, result: @game.result, second_inning_fours: @game.second_inning_fours, second_inning_sixes: @game.second_inning_sixes, second_inning_wickets: @game.second_inning_wickets, second_team: @game.second_team, second_team_score: @game.second_team_score, series_id: @game.series_id, venue_id: @game.venue_id, winning_team: @game.winning_team } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
