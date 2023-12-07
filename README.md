# Web3 Essentials

## Bitcoin

- one of the first `protocols` to use the `Blockchain` technology
- [Bitcoin Whitepaper](https://bitcoinwhitepaper.co/) by Satoshi Nakamoto
  - peer to peer transactions in a decentralized network
  - network was powered by cryptography and decentrality
- seen as a superior `digital store` of value or digital gold

## Ethereum

- and other similar Smart Contract platforms take a step further from the Bitcoin platform
- built on the same Blockchain infrastructure with some additional features
- [Ethereum Whitepaper](https://ethereum.org/en/whitepaper/) by Vitalik Buterin
- along with decentralized transactions, other features included:
  - decentralized agreements (Smart Contracts)
  - decentralized organizations
- unlike Bitcoin which was viewed only as a store of value, Ethereum was viewed as both store of value and a utility to facilitate these decentralized agreements

## Smart Contracts

- are a set of instructions executed in a decentralized way without the need for a centralized or third party intermediary
- first proposed in early 1990s by Nick Szabo
- exist and executed on the decentralized platforms like Ethereum
- is the factor that differentiates Bitcoin from Ethereum
  - Bitcoin does not have Smart Contracts unlike Ethereum
  - Bitcoin is intentionally "turning incomplete"

### Oracle Problem

- to convert everyday agreements to digital agreements on blockchains, they need to access the data
- these Blockchains are intentionally walled off and hence cannot read or listen to data from the real world
- `Blockchain Oracles` solve this problem by interacting with the `off-chain` world to provide external data or computation to Smart Contracts

> A single `Blockchain Oracle` or data source cannot be used as it defeats the purpose of blockchain. Inorder to keep the system fully decentralized, a decentralized `Blockchain Oracle` network is needed.

> `Chainlink` is a modular, decentralized oracle network that can both bring external data and external computation into the Smart ontracts to make the system decentralized end-to-end. It is also blockchain agnostic.

> This `on-chain` decentralized logic along with the `off-chain` decentralized data/computation gives rise to `Hybrid Smart Contracts`.

> Important Keywords
>
> - Dapp - Decentralized Application = Decentralized Protocol = Smart Contract
>   - A decentralized application is usually a combination of many Smart Contracts

### Purpose of Blockchain or Smart Contracts

- [McDonald's scandal](https://www.chicagotribune.com/sns-mcdonalds-story.html)
- relandscape markets and agreements
- makes the agreements unbreakable promises as Smart Contracts are
  - immutable and cannot be altered once deployed
  - decentralized and not limited to a single authority
  - transparent and everyone sees the terms of the agreement
  - impossible to hack, defraud or manipulate
  - executed automatically
- `Smart Contract Value = Trust Minimized Agreements`
  - Moving over from `Brand-based` to `Math-based` agreements

> **Note:**
>
> Any agreement in the history of mankind where there was a trust assumption that was broken, Smart Contracts can and should be applied to.

<br />
<p align='center'>
    <img src='./images/trust-issues.png' />
    <strong>
        Advantages of Smart Contracts
    </strong>
</p>
<br />

## Other Blockchain Benefits

- Decentralized
- Transparency & Flexibility
- Speed & Efficiency
- Security & Immutability
- Counterparty Risk Removal
- Trust Minimized Agreements

## Smart Contract based Industries

- **DeFi**

  - Decentralized Finance
  - gives users the ability to engage with finance and markets in a decentralized way

- **DAOs**

  - Decentralized Autonomous Organizations
  - are groups that are governed completely decentralized by a set of Smart Contracts on-chain
    - fair and transparent governance & voting

- **NFT**
  - Non-Fungible Tokens
  - digital arts or unique assets

> Note:
>
> - Access to `secret phrase` gives access to all accounts on a wallet
> - Access to a `private key` gives access to a single account

## Transactions

<br />
<p align='center'>
    <img src='./images/my-first-transaction.png' />
    <strong>
        My First SepoliaETH (Testnet) Transaction
    </strong>
</p>
<br />

### Key Terminologies in Transaction Details

- **Transaction Hash**
  - a TxHash or transaction hash is a unique 66-character identifier that is generated whenever a transaction is executed
- **Block**
  - number of the block in which the transaction is recorded
  - block confirmations indicate how many blocks have been added since the transaction was produced
- **From**
  - the sending part of the transaction
- **To**
  - the receiving part of the transaction
  - could be a contract address
- **Value**
  - the value being transacted in Ether and fiat value
- **Transaction Fee**
  - amount paid to process the transaction in native currency, ETH in this case
  - paid by the sender
  - paid to the validators or miner nodes to process the transaction
- **Gas Price**
  - cost per unit of gas spent for the transaction, in Ether and Gwei
- **Gas Limit & Usage by Txn**
  - maximum amount of gas allocated for the transaction and the amount eventually used
  - normal ETH transfers involve 21,000 gas units while contracts involve higher values
- **Gas Fees**
  - base fee refers to the network base fee at the time of the block
  - max fee and max priority fee refer to the max amount a user is willing to pay for their tx and,
  - to give to the block producer respectively
- **Burnt Fees**
  - total amount of ETH burnt from this tx
- **Input Data**
  - additional data included for this transaction
  - commonly used as part of contract interaction or
  - as a message sent to the recipient

> Note: For each transaction, some amount of ether is burnt/lost forever, while some is paid to the miners or validators.

<br />
<p align='center'>
    <img src='./images/demo-hash.png' />
    <strong>
      Demo Hash
    </strong>
</p>
<br />

<br />
<p align='center'>
    <img src='./images/demo-block.png' />
    <strong>
      Demo Block
    </strong>
</p>
<br />

<br />
<p align='center'>
    <img src='./images/demo-blockchain.png' />
    <strong>
      Demo Blockchain
    </strong>
</p>
<br />

<br />
<p align='center'>
    <img src='./images/demo-transaction.png' />
    <strong>
      Demo Transaction Blockchain
    </strong>
</p>
<br />

## Gas

- crucial component of the Ethereum network
- serves as the fuel that powers its operations, a computation unit of measurement

### Gas Fees

- is paid for each transaction
- ensures that the network is not vulnerable to spam and infinite computational loops
- must be paid in Etherium's native currency, ether (ETH)
- consists of two components
  - base fee
    - set by the protocol
    - minimum amount that must be paid for a transaction to be considered valid
  - priority fee
    - is a tip that users can add to the base fee
    - incentivizes validators to include theit transaction in the next block
    - offering too little may result in delayed transaction
    - offering too much may waste ETH
- `Gas Fees = Gas Used * Cost per unit Gas`
  - `Gas Fees = Gas Used * (Base Fee + Priority Fee)`

### Gas Limit

- is the maximum amount of gas that a user is willing to consume in a transaction
- higher the complexity of a transaction, like those involving Smart Contracts, higher the required gas limit
- if gas limit too low, the transaction may fail to complete
  - the gas units already consumed will be lost

> Note:
>
> - Gas fees can get high when there is a high demand for transactions on the Ethereum network.
> - Users may need to offer higher tip amounts to outbid other users' transactions to increase the likelihood of their transaction to be processed.
> - Initiatives such as scalability upgrades and layer 2 scaling are being implemented to address gas fee issues.
>   **Nonce**
>
> - a **number used once** to find the solution to the blockchain problem
> - also used to define the transaction number for an account/address

> **Public Key**
>
> - is derived from the private key for a user
> - is visible publicly and is used to verify that a transaction came from the user
> - `Secret/Seed Phrase => Private Key => Public Key => Address`

### Signing transactions

- a **one way** process
- someone with a private key signs a transaction by their private key being hashed with their transaction data
- anyone can then verify this new transaction hash with signer's public key

> Notes:
>
> - Mining a cyrptocurrency is referred to the process of solving a problem which is specific to the cryptocurrency.
> - The transactions are **digitally signed** using a private key and can be verified later on using the corresponding public key.
> - The account addresses are in some form derived from their respective public keys.
