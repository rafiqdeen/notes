module ArticlesHelper
  def new_article_form?
    true if controller_name == 'articles' && action_name.match(/new|edit/)
  end
end
