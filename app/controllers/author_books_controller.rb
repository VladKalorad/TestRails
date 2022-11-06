class AuthorBooksController < ApplicationController
  before_action :set_author_book, only: %i[ show edit update destroy ]

  # GET /author_books or /author_books.json
  def index
    @author_books = AuthorBook.all
  end

  # GET /author_books/1 or /author_books/1.json
  def show
  end

  # GET /author_books/new
  def new
    @author_book = AuthorBook.new
  end

  # GET /author_books/1/edit
  def edit
  end

  # POST /author_books or /author_books.json
  def create
    @author_book = AuthorBook.new(author_book_params)

    respond_to do |format|
      if @author_book.save
        format.html { redirect_to author_book_url(@author_book), notice: "Author book was successfully created." }
        format.json { render :show, status: :created, location: @author_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @author_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_books/1 or /author_books/1.json
  def update
    respond_to do |format|
      if @author_book.update(author_book_params)
        format.html { redirect_to author_book_url(@author_book), notice: "Author book was successfully updated." }
        format.json { render :show, status: :ok, location: @author_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @author_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_books/1 or /author_books/1.json
  def destroy
    @author_book.destroy

    respond_to do |format|
      format.html { redirect_to author_books_url, notice: "Author book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_book
      @author_book = AuthorBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_book_params
      params.require(:author_book).permit(:book_id, :author_id)
    end
end
