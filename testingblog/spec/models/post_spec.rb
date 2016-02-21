require 'rails_helper'

RSpec.describe Post, type: :model do

  before(:all) do
    @post = Post.new(body: "My Body", title: "My Title")
  end

  it "should have a matching body" do
    expect(@post.body).to eq("My Body")
  end

end
