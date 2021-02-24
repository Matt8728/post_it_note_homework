class NotesController < ApplicationController
  def index 
    @notes = Note.all
    render component: "Notes", props: {notes: @notes}
  end

  # def create
  #   @page = Page.new(pages_params)
      
  #   if @page.save
  #       # this will take us to our index method
  #       redirect_to pages_path
  #   else
  #       # renders app/views/pages/new.html.erb (ERB WAY)
  #       # render :new
  #       ## SSRR way ##
  #       render component: "PageNew", props: { page: @page }
  #     end
  #   end
    
  #  private
    
   def pages_params
      params.require(:page).permit(:title, :author, :body)
    end



  def new
    @note = Note.new
   # If method ends here Rails will look for the erb file in app/views/pages/new.html.erb by default at this point

   ## SSRR WAY ###
   # if we comment this out Rails will look for the erb file in app/javascript/components/PageNew.js 
   render component: "NoteNew", props: {note: @note}
  end

  def show
    @note = Note.find(params[:id])
    render component: "Note", props: {note: @note}
  end

  def edit
    @note = Note.find(params[:id])
    @note.update_attributes(params)
    render component: "NoteEdit", props: {note: @note}
  end

# #   # def delete
# #   #   @note.destroy(params[:id])
    
# #   end
end
