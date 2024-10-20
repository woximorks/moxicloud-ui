class ContactController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all
  end
end
