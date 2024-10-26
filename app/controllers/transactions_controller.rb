class TransactionsController < ApplicationController
  before_action :validate_isbn_number!

  def search
    data = SearchIsbn.run({ isbn: @isbn }).result
    render json: data.except(:status), status: data[:status]
  end

  def convert_isbn
    result = ConvertIsbn.run(isbn: @isbn).result

    render json: { success: true, converted_value: result }, status: :ok
  end

  private

  def validate_isbn_number!
    return render json: { message: "ISBN is required" } if params[:isbn].blank?

    if ISBN_Tools.is_valid?(params[:isbn])
      @isbn = params[:isbn]
    else
      render json: {message: 'Invalid ISBN'}, status: :bad_request
    end
  end
end
