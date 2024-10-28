class TransactionsController < ApplicationController
  before_action :validate_isbn_number!, except: :index

  def index
  end

  def search
    data = SearchIsbn.run({ isbn: @isbn }).result
    @result = data

    if params[:api]
      render json: data.except(:status), status: data[:status] if params[:api]
    else
      render :search
    end
  end

  def convert_isbn
    result = ConvertIsbn.run(isbn: @isbn).result

    render json: { success: true, converted_value: result }, status: :ok
  end

  private

  def validate_isbn_number!
    return render json: { message: "ISBN is required" }, status: :bad_request if params[:isbn].blank?

    if ISBN_Tools.is_valid?(params[:isbn])
      @isbn = params[:isbn]
    elsif params[:api]
      render json: { success: false, message: 'Invalid ISBN'}, status: :bad_request
    else
      @result = { success: false, message: 'Invalid ISBN'}
      render :search
    end
  end
end
