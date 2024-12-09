# SoliditySmartContracts
Development and deployment of Solidity smart contracts.

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

