    #!/bin/bash
    # This script asks the user for a time, waits the specified amount
    # of time, and shows an alert dialog.

    TIME=$(zenity --entry --title=”progress_report_generator” --text=”Enter a duration for the timer.\n\n Use 5s for \
     5 seconds, 10m for 10 minutes, or 2h for 2 hours.”)

    sleep $TIME

    zenity --info --title=”Timer Complete” --text=”The \ntimer is over.\n\n It has been $TIME.”