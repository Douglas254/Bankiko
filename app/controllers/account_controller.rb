class AccountController < ApplicationController

    wrap_parameters format: []

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
        account = Account.find_by(number: params[:acc_number ].to_i)
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

    def create
        # acc = Account.create(
        #     number: params[:number],
        #     name: params[:name],
        #     amount: params[:amount],
        #     is_active: params[:is_active],
        #     user_full_name: params[:user_full_name],
        # )

        acc = Account.create(account_params)


        render json: {
            status: 200,
            message: "Account Created Successfully",
        data: {
                account: acc
            }
        }, status: :created
    end

    # checks the request params
    def check_params
        # param_set = JSON.parse params
        param_set = JSON.parse request.body.read
        render json: param_set
        # render json: params
    end

    private

    def account_params
        params.permit(:number, :name, :amount, :is_active, :user_full_name)
    end
end
