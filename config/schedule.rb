# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

#used for debugging and outputting error
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

#every :monday, :at => '1am' do
#  runner "Cleaner.clear_matches"
#end

every 1.minutes do
	rake "clear_matches"
end
# Learn more: http://github.com/javan/whenever
