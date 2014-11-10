class BookshelvesController < ApplicationController
  before_action :set_bookshelf, only: [:show, :edit, :update, :destroy]

  # GET /bookshelves
  # GET /bookshelves.json
  def index
    @bookshelves = Bookshelf.all()
  end

  # GET /bookshelves/1
  # GET /bookshelves/1.json
  def show
    @bookshelf = Bookshelf.find(params[:id])
  end

  # GET /bookshelves/new
  def new
    @bookshelf = Bookshelf.new
  end

  # GET /bookshelves/1/edit
  def edit
  end

  # POST /bookshelves
  # POST /bookshelves.json
  def create
    @bookshelf = Bookshelf.new(params[:bookshelf])

    respond_to do |format|
      if @bookshelf.save
        #using flash helper
        flash[:success] = 'Book was successfully created.'
        format.html { redirect_to @bookshelf }
        format.json { render :show, status: :created, location: @bookshelf }
      else
        flash[:danger] = 'Error. Please check your submission.'
        format.html { render :new }
        format.json { render json: @bookshelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookshelves/1
  # PATCH/PUT /bookshelves/1.json
  def update
    respond_to do |format|
      if @bookshelf.update(bookshelf_params)
        flash[:success] = 'Bookshelf was successfully updated.'
        format.html { redirect_to @bookshelf }
        format.json { render :show, status: :ok, location: @bookshelf }
      else
        flash[:danger] = 'Error. Please check your update.'
        format.html { render :edit }
        format.json { render json: @bookshelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookshelves/1
  # DELETE /bookshelves/1.json
  def destroy
    @bookshelf.destroy
    respond_to do |format|
      format.html { redirect_to bookshelves_url, notice: 'Bookshelf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookshelf
      @bookshelf = Bookshelf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookshelf_params
      params.require(:bookshelf).permit(:title, :author)
    end
end
