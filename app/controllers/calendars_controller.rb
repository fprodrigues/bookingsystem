class CalendarsController < ApplicationController

def index
	@calendars=Calendar.all
	respond_to do |format|
		format.html
		format.json {render json: @calendars.as_json(only: [:title, :start, :end, :funcao, :nome])}
	end
end

def new
	@calendar = Calendar.new
end

def create
	@calendar = Calendar.create(calendar_params)
	@calendar.start = @calendar.funcao+"T"+@calendar.nome
	@calendar.numero = @calendar.nome.chomp(":00").to_i
	auxiliar = @calendar.numero + 1
	@calendar.end = @calendar.funcao+"T"+auxiliar.to_s+":00"
	@calendar.save
	redirect_to root_path
end

def edit
	@calendar = Calendar.find(params[:id])
end

def update
	@calendar = Calendar.update(calendar_params)
	@calendar.save
	redirect_to root_path
end

def show
	@calendar = Calendar.find(params[:id])
end

def destroy
	@calendar = Calendar.find(params[:id])
	@calendar.destroy
end

private

def calendar_params
	params.require(:calendar).permit(:dia, :fim, :numero, :nome, :funcao, :title, :start, :date_range, :end)
end
end
