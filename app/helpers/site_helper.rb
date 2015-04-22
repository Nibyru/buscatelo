module SiteHelper
  def checked_filter(filter_name)
    params[:filtro] && params[:filtro].include?(filter_name) ? 'checked="checked"' : ''
  end
end
