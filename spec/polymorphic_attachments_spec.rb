require 'polymorphic_attachments'

describe PolymorphicAttachments do
  it "return hello world" do
    expect(PolymorphicAttachments::Act.act).to eql("act_msg")
  end
end