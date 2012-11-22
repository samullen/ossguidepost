require_relative "../minitest_helper"

describe Project do
  describe "Associations" do
    before do
      @project = Project.new
    end

    it("belongs to User") { @project.must_respond_to(:user) }
  end

  describe "Validations" do
    before do
      @project = Project.new
    end

    describe "#name" do
      it "validates presence of some fields" do
        @project.valid? 
        @project.errors.full_messages.must_include("Name can't be blank")
        @project.errors.full_messages.must_include("Full name can't be blank")
      end

      it "validates max length of name" do
        maxlength = Project.columns_hash["name"].limit

        @project.name = "x" * ( maxlength + 1)
        @project.valid? 
        @project.errors.full_messages.must_include("Name is too long (maximum is #{maxlength} characters)")
      end

      it "validates max length of language" do
        maxlength = Project.columns_hash["full_name"].limit

        @project.full_name = "x" * ( maxlength + 1)
        @project.valid? 
        @project.errors.full_messages.must_include("Full name is too long (maximum is #{maxlength} characters)")
      end

      it "validates max length of language" do
        maxlength = Project.columns_hash["language"].limit

        @project.language = "x" * ( maxlength + 1)
        @project.valid? 
        @project.errors.full_messages.must_include("Language is too long (maximum is #{maxlength} characters)")
      end
    end
  end

end
