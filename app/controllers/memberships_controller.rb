class MembershipsController < ApplicationController
    def create
        
        newMembership = Membership.create!(membership_params)
        render json: newMembership, status: :ok
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
