require 'rails_helper'

describe RachioService do
  let(:service) { RachioService.new }

  describe 'personal_id' do
    it 'should return id of person' do
      id = service.personal_id

      expect(id).to eq "61b28ce9-7bc1-47cc-9b85-98b6bebf8951"
    end
  end
end
