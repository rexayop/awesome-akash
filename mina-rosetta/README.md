# Rosetta API
Rosetta API is an open-source specification and set of tools that make deploying and interacting with the blockchain quickly and easily.

Use Rosetta API if you are:
- Querying historical data from the Mina blockchain
- Integrating the Mina blockchain with your exchange
- Building blockchain applications, such as explorers and wallets

## Sending requests
After the Rosetta app is running, you can send requests to it. To run a /network/list request:
```
curl -L -X POST 'http://localhost:3087/network/list' \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json' -d '{}'
```

## GraphQL API

The Mina daemon exposes a GraphQL API used to request information from and submit commands to a running node.
To use the GraphQL API, connect your GraphQL client to `http://localhost:3085/graphql` or open in your browser to use the GraphiQL IDE.

## Documentation
[Mina Documentation](https://docs.minaprotocol.com/)
