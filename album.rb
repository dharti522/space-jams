class Album

  attr_reader :id, :title, :artists
  attr_accessor :summary, :duration, :tracks

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    # length = 0
    # @tracks.each do |track|
    #   length += track[:duration_ms].to_f
    # end
    # (length/1000/60).round(2)
  total_duration_ms  = @tracks.reduce(0) { |sum, track| sum + track[:duration_ms].to_f }
   (total_duration_ms/1000/60).round(2)
  end

  def summary
    string = "Name: #{@title}\n Artist(s): #{@artist}\n Duration (min.):#{duration_min}\n Tracks : \n"
    @tracks.each do |track|
      string << "- #{track[:title]}\n"
    end
    string
  end
end
