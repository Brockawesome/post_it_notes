class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note
    else
      render :new
    end
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else
      render :edit
    end
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path
  end

  private

    def note_params
      params.require(:note).permit(:color, :title, :body)
    end
end
