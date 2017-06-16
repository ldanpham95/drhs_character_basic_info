class CharacterInfosController < ApplicationController
  before_action :set_character_info, only: [:show, :edit, :update, :destroy]

  # GET /character_infos
  # GET /character_infos.json
  def index
    @character_infos = CharacterInfo.all
  end

  # GET /character_infos/1
  # GET /character_infos/1.json
  def show
  end

  # GET /character_infos/new
  def new
    @character_info = CharacterInfo.new
  end

  # GET /character_infos/1/edit
  def edit
  end

  # POST /character_infos
  # POST /character_infos.json
  def create
    @character_info = CharacterInfo.new(character_info_params)

    respond_to do |format|
      if @character_info.save
        format.html { redirect_to @character_info, notice: 'Character info was successfully created.' }
        format.json { render :show, status: :created, location: @character_info }
      else
        format.html { render :new }
        format.json { render json: @character_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_infos/1
  # PATCH/PUT /character_infos/1.json
  def update
    respond_to do |format|
      if @character_info.update(character_info_params)
        format.html { redirect_to @character_info, notice: 'Character info was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_info }
      else
        format.html { render :edit }
        format.json { render json: @character_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_infos/1
  # DELETE /character_infos/1.json
  def destroy
    @character_info.destroy
    respond_to do |format|
      format.html { redirect_to character_infos_url, notice: 'Character info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_info
      @character_info = CharacterInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_info_params
      params.require(:character_info).permit(:name, :shsl, :height, :weight, :chest, :bloodtype, :birthday, :likes, :dislike, :eyecolor, :haircolor, :associates, :nicknames)
    end
end
