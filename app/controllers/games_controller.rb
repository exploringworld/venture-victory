class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
    @series = Series.inprogress_series
    @venues = Venue.all
    @teams = Team.all
  end

  # GET /games/1/edit
  def edit
    @series = Series.inprogress_series
    @venues = Venue.all
    @teams = Team.all    
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to games_path, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to games_path, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:series_id, :venue_id, :match_type, :first_team, :second_team, :home_team, :first_team_score, :second_team_score, :first_inning_fours, :second_inning_fours, :first_inning_sixes, :second_inning_sixes, :first_inning_wickets, :second_inning_wickets, :result, :winning_team, :first_inning_six_over_runs, :first_inning_ten_over_runs, :first_inning_twenty_over_runs, :first_inning_wides, :first_inning_extras, :second_inning_six_over_runs, :second_inning_ten_over_runs, :second_inning_twenty_over_runs, :second_inning_wides, :second_inning_extras,:game_type,:first_inning_thirty_over_runs,:first_inning_forty_over_runs,:first_inning_fifty_over_runs,:second_inning_thirty_over_runs,:second_inning_forty_over_runs,:second_inning_fifty_over_runs)
    end
end
