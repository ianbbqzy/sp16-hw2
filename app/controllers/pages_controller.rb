class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    @name = params[:name]
    @adjective = params[:adjective]
    if @adjective.blank?
      @text = "You are nothing!"
    else
      @text = @name + " is so " + @adjective
    end
  end

  def age
  end

  def person
    @name = params[:name]
    @age = params[:age]
    you = Person.new(@name, @age)
    @introduction = you.introduce() 
    @birth_year = you.birth_year().to_s
    @nickname = you.nickname()
  end
end
