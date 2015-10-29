class HelloWorldController < ApplicationController

	def show
		@helloWorld = HelloWorld.find(params[:id])
	end

	def create
		HelloWorld.create(name: params[:name], message: params[:message])
	end

	def new
	end

	def index
		@helloWorld = HelloWorld.all
	end
end
