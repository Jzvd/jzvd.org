pragma solidity >=0.4.21 <0.6.0;


contract ERC20 {
    mapping (address => uint) balances;
    mapping (address => mapping (address => uint)) allowed;

    function balanceOf(address _owner) public view returns (uint256 balance);
    function transfer(address _to, uint256 _value) public returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    function approve(address _spender, uint256 _value) public returns (bool success);
    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract RegularToken is ERC20 {
    function transfer(address _to,uint256 _value) public returns (bool) {
        if(balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
            balances[msg.sender] -= _value;
            balances[_to] += _value;
            emit Transfer(msg.sender, _to, _value);
            return true;
        } else { return false; }
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        if(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
            balances[_to] += _value;
            balances[_from] += _value;
            allowed[_from][msg.sender] -= _value;
            emit Transfer(_from, _to, _value);
            return true;
        } else { return false; }
    }

    function balanceOf(address _owner) public view returns (uint) {
        return balances[_owner];
    }

    function approve(address _spender, uint256 _value) public returns (bool) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return allowed[_owner][_spender];
    }
}

contract UnboundedRegularToken is RegularToken {
    uint constant MAX_UINT = 2**256 - 1;

    function transferFrom(address _from, address _to, uint _value) public returns (bool) {
        uint allowance = allowed[_from][msg.sender];
        if(balances[_from] >= _value && allowance >= _value && balances[_to] + _value >= balances[_to]) {
            balances[_to] += _value;
            balances[_from] -= _value;
            if(allowance < MAX_UINT) {
                allowed[_from][msg.sender] -= _value;
            }
            emit Transfer(_from, _to , _value);
            return true;
        } else { return false; }
    }
}

contract JiaoZiToken is UnboundedRegularToken {
    uint8 constant public decimals = 18;//no change
    string constant public name = "JiaoZiToken";//contrace name
    string constant public symbol = "JZT";//contract short name
    uint256 constant public totalSupply = 10*10**26;//total
    constructor () public {
        balances[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender , totalSupply);
    }
}
