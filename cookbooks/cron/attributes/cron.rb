# Add one hash per cron job required
# Set the utility instance name to install each cron job on via instance_name

default[:custom_crons] = [
  {name: 'postgresql', time: '10 1 * * *', command: 'eybackup -e postgresql >> /var/log/eybackup.log', instance_name: 'cron'}
]
