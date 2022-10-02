class AccountController < ApplicationController
    def index
        accounts = Account.all
        render json: {
            status: 200,
            message: "OK",
            data: {
                accounts: accounts
            }
        }, status: :ok
    end

    def show
        account = Account.find_by(number: params[:acc_number ])
        if !account
            render json: {
                status: 404,
                message: "Missing Account",
                data: {
                    account: account
                }
            }, status: :ok
        else
            render json: {
                status: 200,
                message: "OK",
            data: {
                    account: account
                }
            }
        end
    end
end
