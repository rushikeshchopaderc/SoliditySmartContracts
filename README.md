# SoliditySmartContracts
Development and deployment of Solidity smart contracts.

Transactions have the following fields:
1) Nonce: Transaction count for the account.
2) Gas Price: Price per unit of Gas.
3) Gas Limit: max gas that this transaction can use.
4) To: Address to which the transaction is being sent.
5) Value: Amount of wei to send
6) Data: What to send to the TO address.
7) v, r, s: elliptical coordinates to hash a signature. Components of a transaction signature.

SafeMath library was used prior to solidity version 0.8. but now doesn't. 
Main Keywords: contract{}, library{}. Inside contract, you can have 'function{}', 'modifier{}' and 'constructor{}'
Libraries are like contacts only with no state variable defined. They maintain reusable functions.
Modifiers can be used to add any functionality inside a function. For example if we want to avoid writing the pieces of code again and again in the contract, we use modifiers

Main differences between solidity and vyper syntax are:
- Solidity is a curly bracket language, while vyper is a pythonic indentation sensitive language.
- The contract in solidity starts with the keyword 'contract' but in vyper it is '__init__()' constructor handles the contract initiation.
- In solidity functions are called inside the contract keyword but in vyper, different 'def' are called for different actions independently.
- In solidity, the fuctions visiblility and mutability are mentioned in the same line after the function name, but in vyper, it is mentioned in the seperate lines above with @ character at the beginning.
- In solidity, the function return value is stated by the 'returns' keyword followed by the type of return value in the same line of defining the contract, but in vyper, -> this arrow represents the return value. No need to type the returns keyword. 
- The variables are difined like "uint256 public favourite_number" in solidity. Variables are defined like "num : public(uint256)" in vyper.
- In solidity, you can have a arrays/lists of undefined length(syntax: "uint256[] list1"), but in vyper the lists must have a defined length (syntax: "list1 uint256[10]". This holds 10 uint256 chatacters). 
- struct type is a collection of variables that you want to assign to any object. This is taken from c/c++ language. These are present both in vyper and solidity and function in the same way. Struct acts as a variable type in itself.
- A Solidity struct is defined like Person public pat= Person({favourite_num:7, name: 'Pat'}). A vyper struct is defined like pat: public(Person) = (7, 'Pat')
- Global variables in solidity are same as that of environment variable in vyper and have same names, msg.sender, msg.value, block.number, tx.origin, tx.gasprice, msg.data etc.
- For conditional operations, solidity provides a 'require' method whereas vyper provides assert statements.
- Interfaces automatically generate the ABI of the contract in solidity as well as vyper.
- Constructors in Solidity are declared with 'construstor{}' keyword wherease in vyper they are defined using "__init__()" keyword.

