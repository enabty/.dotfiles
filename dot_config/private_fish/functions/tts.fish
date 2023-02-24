function tts
  set -f status_output (timetrace status -o json)
  set -f project (echo $status_output | jq -r '.project')
  set -f tracked_time_today (echo $status_output | jq -r '.trackedTimeToday')
  set -f tracked_time_current (echo $status_output | jq -r '.trackedTimeCurrent')

  echo "********************************"
  echo "Current project: $project"
  echo "Worked today: $tracked_time_today"
  echo "Worked on current task: $tracked_time_current"
  echo "********************************"
end
