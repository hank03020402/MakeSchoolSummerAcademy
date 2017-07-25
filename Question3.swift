import Foundation
func stringLength(string:String)->(Int,Array<Character>){
    let array = Array(string.characters)
    var count = 0
    for _ in array{
        count = count+1
    }
    return (count-1,array)
}
func checkUnique(string:String){
    let count = stringLength(string: string).0
    let array = stringLength(string: string).1
    for firstNum in 0...count{
        var test:Bool = true
        for secondNum in 0...count{
            if array[firstNum] == array[secondNum] && firstNum != secondNum{
                test = false
                break
            }
            else{
            }
        }
        if test{
            print(array[firstNum],terminator:"")
        }
    }
}

checkUnique(string: "HaHA")
