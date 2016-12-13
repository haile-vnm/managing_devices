class ArdController < ApplicationController
  def index
    mode = LightPlan.where('date <= ?', DateTime.now)
                    .where(value: [1,10,100])
                    .where.not(status: 'cancel')
                    .order(:date)
                    .last
    mode.update_attributes(status: 'done')
    timesheet = Timesheet.where('date <= ?', DateTime.now)
                         .where.not(status: 'cancel')
                         .order(:date)
                         .last
    timesheet.update_attributes(status: 'done')
    render json: { mode: mode.value, green: timesheet.turn_on, yellow: timesheet.turn_off }
  end

  def display
    @timesheets = Timesheet.all
    @light_plans = LightPlan.all

    render 'systemconfig/vih'
  end
end
