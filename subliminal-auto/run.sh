if ! pgrep -f 'subliminal_watchdog.py'
then
    nohup python /subliminal_watchdog.py >> /tmp/log.txt 2>&1
else
    echo "running" >> ~/out_test.txt
fi
