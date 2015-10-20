require 'rails_helper'

RSpec.describe "API V1 Events", type: :request do
  describe "POST /events" do
    let(:trigger) { post api_v1_events_path }

    it "should respond 201 created" do
      trigger
      expect(response).to have_http_status(201)
    end

    it "should create raw event" do
      expect { trigger }
        .to change { Event.count }
        .by 1
    end
  end
end
