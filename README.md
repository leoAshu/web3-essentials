# Web3 Essentials

## Bitcoin

- one of the first `protocols` to use the `Blockchain` technology
- [Bitcoin Whitepaper](https://bitcoinwhitepaper.co/) by Satoshi Nakamoto
  - peer to peer transactions in a decentralized network
  - network was powered by cryptography and decentrality
- seen as a superior `digital store` of value or digital gold

## Ethereum

- built on the same Blockchain infrastructure with some additional features
- [Ethereum Whitepaper](https://ethereum.org/en/whitepaper/) by Vitalik Buterin
- along with decentralized transactions, other features included:
  - decentralized agreements (smart contracts)
  - decentralized organizations
- unlike Bitcoin which was viewed only as a store of value, Ethereum was viewed as both store of value and a utility to facilitate these decentralized agreements

## Smart Contracts

- are a set of instructions executed in a decentralized way without the need for a centralized or third party intermediary
- first proposed in early 1990s by Nick Szabo
- exist and exxecuted on the decentralized platforms like Ethereum
- is the factor that differentiates Bitcoin from Ethereum
  - Bitcoin does not have Smart Contracts unlike Ethereum
  - Bitcoin is intentionally "turning incomplete"

## Oracle Problem

- to convert everyday agreements to digital agreements on blockchains, they need to access the data
- these Blockchains are intentionally walled off and hence cannot read or listen to data from the real world
- `Blockchain Oracles` solve this problem by interacting with the `off-chain` world to provide external data or computation to smart contracts

> A single `Blockchain Oracle` or data source cannot be used as it defeats the purpose of blockchain. Inorder to keep the system fully decentralized, a decentralized `Blockchain Oracle` network is needed.

> `Chainlink` is a modular, decentralized oracle network that can both bring external data and external computation into the smart contracts to make the system decentralized end-to-end. It is also blockchain agnostic.

> This `on-chain` decentralized logic along with the `off-chain` decentralized data/computation gives rise to `Hybrid Smart Contracts`.

> Important Keywords
>
> - Dapp - Decentralized Application = Decentralized Protocol = Smart Contract
>   - A decentralized application is usually a combination of many smart contracts
