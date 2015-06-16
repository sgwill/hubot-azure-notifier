## Azure Deployment notifier for Hubot
This lets you send the Post Deployment status for your Azure sites to a Hubot instance.

### Installing in Hubot

1. Add `"hubot-azure-scripts": ">=0.2.0"` to your hubot `package.json`.
2. Add `"hubot-azure-notifier/azure-notifier"` to `external-scripts.json`

### Configure in Azure

1. Navigate to `https://{your-azure-site}.scm.azurewebsites.net/WebHooks`
2. Add a url to `{your-hubot-url}/hubot/kudu/{room}`, where `{room}` is the room you want the deployment message to go to.
