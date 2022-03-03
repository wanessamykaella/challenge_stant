require 'rails_helper'

RSpec.describe "Proposals", type: :request do  
  describe "POST  /proposals" do
    it 'must return 201 status' do
      track = create(:track, name: 'Track 1')
      session = create(:session, track: track)
      create(:talk, name: 'Erros comuns em Ruby', session: session)
      
      track2 = create(:track, name: 'Track 2')
      session2 = create(:session, track: track2)
      create(:talk, name: 'A mágica do Rails: como ser mais produtivo', session: session2)

      post '/proposals'
      json_body = JSON.parse(response.body)
      byebug

      expect(response).to have_http_status(:created)
      expect(json_body[0]).to include('name', 'id', 'sessions')
      expect(json_body[0]['sessions'][0]['talks'][0]).to include('name')
    end
  end
end
