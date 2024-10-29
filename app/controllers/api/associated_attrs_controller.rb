module Api
    class AssociatedAttrsController < ApplicationController
      def show_by_title
        @associated_attr = AssociatedAttr.find_by(attr_title: params[:attr_title])
  
        if @associated_attr
          render json: @associated_attr
        else
          render json: { error: 'Attribute not found' }, status: :not_found
        end
      end
    end
  end