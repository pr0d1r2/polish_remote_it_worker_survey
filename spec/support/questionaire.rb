shared_examples_for "questionaire" do

  should_belong_to :identity

  describe "FIELDS" do
    subject { the_class::FIELDS }

    its(:size) { should == number_of_fields }
  end

  describe "SELECTIONS" do
    subject { the_class::SELECTIONS }

    its(:size) { should == number_of_selections }
  end

  describe "SELECTION_STARTS" do
    subject { the_class::SELECTION_STARTS }

    it { should == selection_starts }
  end

  describe "TITLE" do
    subject { the_class::TITLE }

    its(:size) { should > 0 }
  end

  describe "AUTHOR" do
    subject { the_class::AUTHOR }

    its(:size) { should > 0 }
  end

  describe "NAME" do
    subject { the_class::NAME }

    its(:size) { should > 0 }
  end

  describe "DESCRIPTION" do
    subject { the_class::DESCRIPTION }

    its(:size) { should > 0 }
  end

  describe "class ancestors" do
    subject { the_class.ancestors }

    it { should include Questionaire }
  end

  describe "class" do
    subject { the_class }

    its(:table_name) { should == table_name }
  end

  describe "POSITIVE_FIELDS" do
    it "should not have fields included in NEGATIVE_FIELDS" do
      the_class::POSITIVE_FIELDS.each do |p|
        raise "Positive field '#{p}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(p)
      end
    end
  end

  describe "NEGATIVE_FIELDS" do
    it "should not have fields included in POSITIVE_FIELDS" do
      the_class::NEGATIVE_FIELDS.each do |n|
        raise "Negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

  describe "EXACT_POSITIVE_FIELDS" do
    it "should be always in POSITIVE_FIELDS" do
      the_class::EXACT_POSITIVE_FIELDS.flatten.each do |n|
        raise "Exact positive field '#{n}' not included in POSITIVE_FIELDS" unless the_class::POSITIVE_FIELDS.include?(n)
      end
    end

    it "should not be in NEGATIVE_FIELDS" do
      the_class::EXACT_POSITIVE_FIELDS.flatten.each do |n|
        raise "Exact positive field '#{n}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(n)
      end
    end
  end

  describe "EXACT_NEGATIVE_FIELDS" do
    it "should be always in NEGATIVE_FIELDS" do
      the_class::EXACT_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Exact negative field '#{n}' not included in NEGATIVE_FIELDS" unless the_class::NEGATIVE_FIELDS.include?(n)
      end
    end

    it "should not be in POSITIVE_FIELDS" do
      the_class::EXACT_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Exact negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

  describe "SIMILAR_POSITIVE_FIELDS" do
    it "should be always in POSITIVE_FIELDS" do
      the_class::SIMILAR_POSITIVE_FIELDS.flatten.each do |n|
        raise "Similar positive field '#{n}' not included in POSITIVE_FIELDS" unless the_class::POSITIVE_FIELDS.include?(n)
      end
    end

    it "should not be in NEGATIVE_FIELDS" do
      the_class::SIMILAR_POSITIVE_FIELDS.flatten.each do |n|
        raise "Similar positive field '#{n}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(n)
      end
    end
  end

  describe "SIMILAR_NEGATIVE_FIELDS" do
    it "should be always in NEGATIVE_FIELDS" do
      the_class::SIMILAR_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Similar negative field '#{n}' not included in NEGATIVE_FIELDS" unless the_class::NEGATIVE_FIELDS.include?(n)
      end
    end

    it "should not be in POSITIVE_FIELDS" do
      the_class::SIMILAR_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Similar negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

end
