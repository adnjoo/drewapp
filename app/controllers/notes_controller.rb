class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = current_user.notes
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to notes_path, notice: "Note created successfully" }
      end
    else
      render :new
    end
  end

  def update
    @note = current_user.notes.find(params[:id])
    if @note.update(note_params)
      grant_points if @note.completed?
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to notes_path, notice: "Note updated successfully" }
      end
    else
      render :edit
    end
  end

  def destroy
    @note = current_user.notes.find(params[:id])
    @note.destroy
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to notes_path, notice: "Note deleted successfully" }
    end
  end

  private

  def note_params
    params.require(:note).permit(:content, :completed)
  end

  def grant_points
    current_user.increment!(:points, 10)
  end
end
