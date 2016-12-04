class BuzsController < ApplicationController
 after_action :settings, only: [:update]

def index
	@buzs = Buz.all

end

def new
	@buz = Buz.new
end

def create
	@buz = Buz.create(buz_params)
	Setting.pessoa = @buz.pessoa
	Setting.horario = @buz.horario
	Setting.range = @buz.range
	@buz.save
	redirect_to root_path
end

def edit
	@buz = Buz.find(params[:id])
end

def update
	@buz = Buz.update(buz_params)
	redirect_to root_path
end

def show
	@buz = Buz.find(params[:id])
end

def destroy
	@buz = Buz.find(params[:id])
	@buz.destroy
end

private

def settings
	@buz = Buz.find(params[:id])
	Setting.pessoa = @buz.pessoa
	Setting.horario = @buz.horario
	Setting.range = @buz.range
end

def buz_params
	params.require(:buz).permit(:pessoa, :horario, :com, :fim, :range)
end
end
