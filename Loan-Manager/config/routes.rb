Rails.application.routes.draw do

  #####################################
  #  Loan API functionality
  #####################################
  get 'GetAllLoans' => 'loans#GetAllLoans'
  get 'GetLoan/:id' => 'loans#GetLoan'

  #####################################
  #  Payment API functionality
  #####################################
  get 'GetPayment/:id' => 'payments#GetPayment'
  get 'GetAllPaymentsForLoan/:id' => 'payments#GetAllPaymentsForLoan'
  post 'ScheduleNewPayment' => 'payments#ScheduleNewPayment'

  #App root
  root 'sextant/routes#index'
end
