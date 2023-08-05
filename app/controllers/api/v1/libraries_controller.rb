class Api::V1::LibrariesController < ApplicationController
	def index
    library = Library.find(params[:id])
    books = library.books.select(:id, :title, :status, :checked_out_to)

    render json: { library_name: library.name, books: books }
  end
end
