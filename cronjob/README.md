## BUILD
```bash
docker build -t magicbank/covidlab:cron .
```

## RUN
```bash
docker run -d -v ~/.ssh:/root/.ssh -e TOKEN=[LINE_NOTIFY_TOKEN] -e USERNAME=[GIT_GLOBAL_USER_NAME] -e USEREMAIL=[GIT_GLOBAL_USER_EMAIL] --init --name covidlab-cron magicbank/covidlab:cron
```
