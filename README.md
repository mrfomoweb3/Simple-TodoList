# 📝 TodoList Smart Contract (Solidity)

A simple on-chain To-Do List built with Solidity and deployed on the Ethereum Sepolia testnet.

This smart contract allows users to:
- Add new tasks
- Mark tasks as completed
- Retrieve tasks from a mapping structure

It's a beginner-friendly project that demonstrates how to use:
- `struct` to define custom data types
- `mapping` to store dynamic lists
- `calldata` for gas-efficient inputs
- `event` emission for blockchain logs

---

## 🛠️ Tech Stack

- **Solidity v0.8.18**
- **Remix IDE / Hardhat**
- **Sepolia Testnet**

---

## 📂 Contract Structure

### Struct
```solidity
struct TodoItem {
  string Task;
  bool Iscompleted;
}
```
Defines a task with a description and a completion status.

### State Variables
```solidity
mapping(uint256 => TodoItem) public List;
uint256 public count = 0;
```
- `List` stores all tasks using `uint256` as an ID.
- `count` keeps track of the total number of tasks.

### Events
```solidity
event Istaskcompleted(uint256 indexed id);
```
Fired whenever a task is marked as completed.

---

## ⚙️ Functions

### `addTask(string calldata Task)`
Adds a new task to the to-do list.
```solidity
function addTask(string calldata Task) public
```
- Takes a string input from the caller
- Saves the task with default `Iscompleted = false`
- Increments the task counter

---

### `completeTask(uint256 id)`
Marks a specific task as completed if it isn't already.
```solidity
function completeTask(uint256 id) public
```
- Changes `Iscompleted` to `true`
- Emits an `Istaskcompleted` event

---

## 🚀 How to Deploy

1. Open [Remix IDE](https://remix.ethereum.org)
2. Paste the contract code into a new `.sol` file
3. Compile using **Solidity 0.8.18**
4. Deploy to **Sepolia** or local environment
5. Interact using the Remix UI:
   - Call `addTask("Your task here")`
   - Call `completeTask(taskId)`

---

## 📌 Notes

- `calldata` is used in `addTask` to save gas (since it's external input).
- `mapping` is used instead of arrays for efficient ID-based task storage.
- `event` logs task completion and can be tracked via frontend or Etherscan.

---

##  Future Improvements

- Add task deadlines (`uint256 timestamp`)
- Allow per-user task ownership (`mapping(address => TodoItem[])`)
- Add a delete function
- Integrate a basic React frontend with Ethers.js

---

##  Author

Built by [Mr FOMO](https://github.com/mrfomoweb3) — Solidity developer in the making.

---

## 🪪 License

MIT
