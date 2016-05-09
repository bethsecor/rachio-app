require 'rails_helper'

describe RachioService do
  let(:service) { RachioService.new }

  describe 'personal_id' do
    it 'should return id of person' do
      id = service.personal_id

      expect(id).to eq "61b28ce9-7bc1-47cc-9b85-98b6bebf8951"
    end
  end

  describe 'personal_info' do
    it 'should return info of person' do
      info = service.personal_info

      expect(info[:fullName]).to eq "Rachio Beta"
      expect(info[:devices].count).to eq 1
      expect(info[:devices].first[:id]).to eq "c761bfa0-4c49-4b4f-8a79-04e42bea881a"
      expect(info[:devices].first[:status]).to eq "ONLINE"
      expect(info[:devices].first[:zones].count).to eq 8
    end
  end
end
