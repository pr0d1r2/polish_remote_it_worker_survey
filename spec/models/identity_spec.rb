require 'spec_helper'

describe Identity do

  let(:the_object) { Identity.new }
  let(:object_in_database) { Identity.create }

  should_have_many :cope_loss_questionaires
  should_have_many :eas_d_adult_questionaires
  should_have_many :olbi_questionaires
  should_have_many :pss_questionaires
  should_have_many :ssp_questionaires
  should_have_many :uwes_questionaires
  should_have_many :demographic_questionaires

  context "before create" do
    after do
      the_object.token = "a"*32
      the_object.save
    end

    it "should call #generate_token" do
      the_object.should_receive(:generate_token)
    end
  end

  context "before save" do
    after { object_in_database.save! }

    it "should not call #generate_token" do
      the_object.should_not_receive(:generate_token)
    end
  end

  describe ".create_and_return_token" do
    let(:token) { "a"*32 }
    let(:identity) { mock(:token => token) }
    before { Identity.stub!(:create => identity) }

    describe "behavior" do
      after { Identity.create_and_return_token }

      it "should create record" do
        Identity.should_receive(:create).and_return(identity)
      end

      it "should call #token" do
        identity.should_receive(:token)
      end
    end

    describe "returns" do
      subject { Identity.create_and_return_token }

      it { should == token }
    end
  end

  describe ".get_token" do
    let(:token) { mock }

    context "when valid token exist" do
      let(:valid_token) { mock }
      let(:identity_with_valid_token) { mock(:token => valid_token) }
      before { Identity.stub!(:find_with_valid_token => identity_with_valid_token) }

      describe "behavior" do
        after { Identity.get_token(token) }

        it "should check that valid token exist" do
          Identity.should_receive(:find_with_valid_token).and_return(identity_with_valid_token)
        end

        it "should not create new record" do
          Identity.should_not_receive(:create)
        end

        it "should call #token" do
          identity_with_valid_token.should_receive(:token)
        end
      end

      describe "returns" do
        subject { Identity.get_token(token) }

        it { should == valid_token }
      end
    end

    context "when valid token not exist" do
      let(:new_token) { mock }
      let(:identity_with_new_token) { mock(:token => new_token) }
      before { Identity.stub!(:find_with_valid_token => nil, :create => identity_with_new_token) }

      describe "behavior" do
        after { Identity.get_token(token) }

        it "should check that valid token exist" do
          Identity.should_receive(:find_with_valid_token).and_return(nil)
        end

        it "should create new record" do
          Identity.should_receive(:create)
        end

        it "should call #token" do
          identity_with_new_token.should_receive(:token)
        end
      end

      describe "returns" do
        subject { Identity.get_token(token) }

        it { should == new_token }
      end
    end
  end

  describe ".find_with_valid_token" do
    let(:token) { mock }
    after { Identity.find_with_valid_token(token) }

    it "should search for not finished token not older than one week" do
      Identity.should_receive(:find).with(
        :first,
        :conditions => ["token = ? AND finished = ? AND created_at > ?", token, false, 1.week.ago.at_beginning_of_day]
      )
    end
  end

  describe ".token_finish!" do
    let(:token) { mock }
    let(:identity) { mock(:try => nil) }
    before { Identity.stub!(:find_with_valid_token => identity) }
    after { Identity.token_finish!(token) }

    it "should find identity with valid token" do
      Identity.should_receive(:find_with_valid_token).with(token).and_return(identity)
    end

    it "should try call #finish! on identity" do
      identity.should_receive(:try).with(:token_finish!)
    end
  end

  describe "#token_finish!" do
    after { the_object.token_finish! }

    it "should update attribute finished" do
      the_object.should_receive(:update_attribute).with(:finished, true)
    end
  end

  describe "#generate_token" do
    let(:generated_token) { "c"*32 }
    before { ActiveSupport::SecureRandom.stub!(:urlsafe_base64 => generated_token) }

    describe "behavior" do
      after { subject.send(:generate_token) }

      it "should use ActiveSupport::SecureRandom.urlsafe_base64" do
        ActiveSupport::SecureRandom.should_receive(:urlsafe_base64).with(32)
      end

      it "should set token on object" do
        subject.should_receive(:token=).with(generated_token)
      end
    end

    describe "returns" do
      subject { the_object.send(:generate_token) }

      it { should == generated_token }
    end
  end

end
