module ApplicationHelper
  def author
    Struct.new(:name, :email).new(htcv2_config[:author][:name], htcv2_config[:author][:email])
  end


  # def format_comment_error(error)
  #   {
  #     'body'   => 'Please comment',
  #     'author' => 'Please provide your name',
  #     'base'   => error.last
  #   }[error.first.to_s]
  # end
end
