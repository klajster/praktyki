#coding: UTF-8

class StatementsController < ApplicationController

		before_action :authenticate_user!

		def index
			@statements=Statement.all
		end

		def show
			@statement=Statement.find(params[:id])
		end

		def destroy
			@statement=Statement.find(params[:id])
			@statement.destroy
			redirect_to statements_path, alert: "Deleted"
		end

		def new
			@statement=Statement.new
		end


		def create
			@statementl=Statement.new(statement_params)

			if @statement.save
				redirect_to statements_path, notice: "Created"
			else
				render 'new'
			end
		end


		def edit 
			@statement=Statement.find(params[:id])
		end

		def update
			@statement=Statement.find(params[:id])

			if @statement=Statement.find(params[:id])
				redirect_to statements_path, notice: "Edited"
			end
		end


		private
		def statement_params
			params.require(:statement).permit(:author, :age, :user_id)
		end


		