module API
  class Books < Grape::API
    resource :books do
      desc 'Return a book.'
      params do
        requires :id, type: Integer, desc: 'Book id.'
      end
      route_param :id do
        get do
          Book.find(params[:id])
        end
      end

      desc 'Return all books.'
      get do
        []
      end

      desc 'Create a book.'
      params do
        requires :title, type: String, desc: 'Title.'
        requires :description, type: String, desc: 'Description.'
        requires :page_count, type: Integer, desc: 'Page count.'
      end
      post do
        Book.create!({
                         title: params[:title],
                         description: params[:description],
                         page_count: params[:page_count]
                     })
      end

      desc 'Update a book.'
      params do
        requires :id, type: Integer, desc: 'Book id.'
        requires :title, type: String, desc: 'Title.'
        requires :description, type: String, desc: 'Description.'
        requires :page_count, type: Integer, desc: 'Page count.'
      end
      put do
        Book.find(params[:id]).update({
                                          title: params[:title],
                                          description: params[:description],
                                          page_count: params[:page_count]
                                      })
      end

      desc 'Delete a book.'
      params do
        requires :id, type: Integer, desc: 'Book id.'
      end
      route_param :id do
        delete do
          Book.find(params[:id]).destroy
        end
      end
    end
  end
end