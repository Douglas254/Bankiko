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
        account = find_account(params)
        if !account
            # calling acc not found method
            acc_not_found
        else
            render json: {
                status: 200,
                message: "OK",
            data: {
                    account: account
                }
            }, status: :ok
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

    def update
        acc_number = params[:acc_number]
        account = find_account(params)
        if !account
            acc_not_found
        else
            # account.name = params[:name]
            # account.number = params[:number].to_i
            # account.amount = params[:amount].to_f
            # account.is_active = params[:is_active]
            # account.user_full_name = params[:user_full_name]
            # account.save

            account.update(account_update_params)

            render json: {
                status: 200,
                message: "Account update Successfully",
                data: {
                        account: account
                    }
            }, status: :created
        end
    end

    private

    def account_params
        params.permit(:number, :name, :amount, :is_active, :user_full_name)
    end

    def account_update_params
        params.permit(:name, :amount, :is_active, :user_full_name)
    end

    def find_account(params)
        Account.find_by(number: params[:acc_number ].to_i)
    end

    def acc_not_found     
        render json: {
            status: 404,
            message: "Missing Account",
            data: {
                account: account
            }
        }, status: :not_found
    end
end
