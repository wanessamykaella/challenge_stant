class ProposalsController < ApplicationController
  def create
    tracks = Track.all
    file = File.open('proposals.txt')
    file_data = file.readlines.map(&:chomp)
    
    file_data.each do |line|
      track = Track.create(name: 'Track 1')
      session1 = track.sessions.create(shift: 'morning', start_time: DateTime.current, finish_time: DateTime.current )
      track.sessions.each{|session|   session.talks.create(name: line, duration: line.scan(/\d+/).first.to_i )    }
    end
    
    render json: tracks, status: :created, each_serializer: TrackSerializer

  end
end
