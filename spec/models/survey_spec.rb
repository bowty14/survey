require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }

  it { should validate_presence_of :topic }

  it("capitalizes each word of a survey") do
    survey = Survey.create({topic: "ice skating"})
    expect(survey.topic).to(eq("Ice Skating"))
  end

end