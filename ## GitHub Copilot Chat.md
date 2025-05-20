## GitHub Copilot Chat

- Extension Version: 0.27.1 (prod)
- VS Code: vscode/1.100.2
- OS: Linux

## Network

User Settings:
```json
  "github.copilot.advanced.debug.useElectronFetcher": true,
  "github.copilot.advanced.debug.useNodeFetcher": false,
  "github.copilot.advanced.debug.useNodeFetchFetcher": true
```

Connecting to https://api.github.com:
- DNS ipv4 Lookup: 20.207.73.85 (264 ms)
- DNS ipv6 Lookup: Error (133 ms): getaddrinfo ENOTFOUND api.github.com
- Proxy URL: None (2 ms)
- Electron fetch (configured): timed out after 10 seconds
- Node.js https: HTTP 200 (5761 ms)
- Node.js fetch: timed out after 10 seconds
- Helix fetch: timed out after 10 seconds

Connecting to https://api.individual.githubcopilot.com/_ping:
- DNS ipv4 Lookup: timed out after 10 seconds
- DNS ipv6 Lookup: Error (9173 ms): getaddrinfo ENOTFOUND api.individual.githubcopilot.com
- Proxy URL: None (125 ms)
- Electron fetch (configured): timed out after 10 seconds
- Node.js https: HTTP 200 (7397 ms)
- Node.js fetch: HTTP 200 (8498 ms)
- Helix fetch: HTTP 200 (8761 ms)

## Documentation

In corporate networks: [Troubleshooting firewall settings for GitHub Copilot](https://docs.github.com/en/copilot/troubleshooting-github-copilot/troubleshooting-firewall-settings-for-github-copilot).

