require "spec_helper"
require_relative "../lib/todo"


describe Todo do
  it { should respond_to(:title) }
  it { should respond_to(:completed?) }

  its(:title) { should == "" }
  it { should_not be_completed }

  describe "#toggle" do
    it "should toggle completed" do
      expect { subject.toggle }.to change {
        subject.completed
      }.from(false).to(true)
    end
  end
end
