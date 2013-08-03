class AdvicePost < ActiveRecord::Base
  attr_accessible :body, :image, :video_link
  validates :body, :user_id, presence: true
  before_save :create_video_html

  acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy
  has_attached_file :image, path: '/:class/:attachment/:id_partition/:style/:hash.:extension', styles: {
  	thumb: '150x100',
  	original: '450x300'
  }

  process_in_background :image, processing_image_url: "https://s3.amazonaws.com/HarnessTheCrowd/HTC-LOGO-SIDE-TRANSPARENT.png"

  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, size: { in: 0..1000.kilobytes }
  
  belongs_to :user

  def title
  	body.truncate(80, separator: ' ')
  end

  protected

  def create_video_html
    if video_link then
      video_html = create_kickstarter_html video_link
      if not video_html then
        video_html = create_youtube_html video_link
      end
      if not video_html then
        video_html = create_vimeo_html video_link
      end
      self.video_html = video_html
    end
  end

  def create_youtube_html(video_link)
    youtube_options = {width: 400, height: 250, frameborder: 0, wmode: nil}
    # i think here and below with vimeo we could get rid of the http stuff
    youtube_regex = /https?:\/\/(www.)?(youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/watch\?feature=player_embedded&v=)([A-Za-z0-9_-]*)(\&\S+)?(\S)*/
    video_link.match(youtube_regex) do
      youtube_id = $3
      width = youtube_options[:width]
      height = youtube_options[:height]
      frameborder = youtube_options[:frameborder]
      wmode = youtube_options[:wmode]
      src = "//www.youtube.com/embed/#{youtube_id}"
      src += "?wmode=#{wmode}" if wmode
      %{<iframe width="#{width}" height="#{height}" src="#{src}" frameborder="#{frameborder}" allowfullscreen></iframe>}
    end
  end

  def create_vimeo_html(video_link)
    vimeo_options = {width: 400, height: 250, show_title: true, show_byline: false, show_portrait: false}
    vimeo_regex = /https?:\/\/(www.)?vimeo\.com\/([A-Za-z0-9._%-]*)((\?|#)\S+)?/
    video_link.match(vimeo_regex) do
      vimeo_id = $2
      width  = vimeo_options[:width]
      height = vimeo_options[:height]
      show_title      = "title=0"    unless vimeo_options[:show_title]
      show_byline     = "byline=0"   unless vimeo_options[:show_byline]  
      show_portrait   = "portrait=0" unless vimeo_options[:show_portrait]
      frameborder     = vimeo_options[:frameborder] || 0
      query_string_variables = [show_title, show_byline, show_portrait].compact.join("&")
      query_string    = "?" + query_string_variables unless query_string_variables.empty?

      %{<iframe src="//player.vimeo.com/video/#{vimeo_id}#{query_string}" width="#{width}" height="#{height}" frameborder="#{frameborder}"></iframe>}
    end
  end

  def create_kickstarter_html(video_link)
    kickstarter_options = {width: 400, height: 250, frameborder: 0}
    kickstarter_regex = /(https?:\/\/)?(www.)?kickstarter.com\/projects\/([^\/]+)\/([^?]+)/
    video_link.match(kickstarter_regex) do
      project_id = $3
      project_name = $4
      video_url = %{http://www.kickstarter.com/projects/#{project_id}/#{project_name}/widget/video.html}
      %{<iframe width="#{kickstarter_options[:width]}" height="#{kickstarter_options[:height]}" src="#{video_url}" frameborder="#{kickstarter_options[:frameborder]}"> </iframe>}
    end

  end

end


