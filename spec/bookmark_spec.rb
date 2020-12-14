require 'bookmark'

describe Bookmark do
  subject { described_class.new("www.google.com") }
  it "contains a link" do
    expect(subject.address).to eq "www.google.com"
  end
end