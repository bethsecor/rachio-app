require 'rails_helper'

describe RachioService do
  let(:service) { RachioService.new }

  describe 'personal info' do
    it 'should return id of person' do
      info = service.personal_info

      expect(info[:id]).to eq "61b28ce9-7bc1-47cc-9b85-98b6bebf8951"
    end
  end
end
