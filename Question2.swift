
import UIKit
import Foundation

func arrayLength(sequence:[Int])->Int{
    var count = 0
    for _ in sequence{
        count = count+1
    }
    return count
}


func testx2(start: Int,sequence:[Int])->(Bool,Int){
    let count = arrayLength(sequence: sequence)
    if start < count-2{
        for i in start...count-2{
            if 2*sequence[i] == sequence[i+1]{
            }
            else{
                if i+1 == count{
                    return(false,i)
                }
                else{
                    return(false,i+1)
                }
            }
        }
        return (true,count)
    }
    if start == count-1{
        return (false,start)
    }
    else{
        if sequence[start]*2 == sequence[start+1]{
            return (true,start)
        }
        else {
            return (false,start)
        }
    }
}

func test(sequence:[Int])-> Bool{
    let count = arrayLength(sequence: sequence)
    let condition = testx2(start: 0,sequence: sequence).0
    let index = testx2(start: 0,sequence: sequence).1
    
    
    if index == count{
        return condition
    }
    if condition{
        return true
    }
    else{
        var i = 0
        while i < index{
            if i != index-1{
                if sequence[index] == sequence[i]{
                    break
                }
                else{
                    i = i+1
                }
            }
            else{
                return false
            }
        }
        
        var condition_2 = testx2(start: index,sequence: sequence).0
        var index_2 = testx2(start: index,sequence: sequence).1
        while index_2 != count{
            condition_2 = testx2(start: index_2, sequence: sequence).0
            index_2 = testx2(start: index_2, sequence: sequence).1
        }
        return condition_2
        
    }
}
testx2(start: 0, sequence: [1,2,4,8,32,64,128,256])
test(sequence: [1,2,4,8,32,64,128])
