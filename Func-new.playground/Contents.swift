import UIKit

var greeting = "Hello, playground"

/* Задание 1
 Разработайте функцию, которая принимает на вход значение типа Bool, преобразует его в строку и возвращает. То есть передав true типа Bool должно вернуться "true" типа String, то же самое и для false. */
func returnBool(b: Bool) -> String {
    return String(b)
}
returnBool(b: true)

/* Задание 2
 Напишите функцию, которая принимает на вход массив с элементами типа Int, а возвращает целое число – сумму всех положительных элементов переданного массива.
 К примеру для массива [1,-2,3,4,-5] должно быть возвращено 1+3+4 = 8*/
func sumArray(array: [Int]) -> Int {
    var sumOfArray = 0
    for num in array {
        if num > 0 {
            sumOfArray += num
        }
    }
    return sumOfArray
}
var array1 = [-1,2,3,-5,6]
sumArray(array: array1)

/* Задание 3
 Напишите функцию, которая принимает на вход массив типа [Int] и, в случае, если количество элементов > 0, то возвращает целое число – произведение всех элементов переданной коллекции. Если количество элементов = 0, то возвращается 0.
 Пример:
 [1,2,3,4] -> 1 * 2 * 3 * 4 = 24
 */
func arraySum(a: [Int]) -> Int {
    var result = 0
    if a.count > 0 {
        result = 1
        for num in a {
        result *= num
    }
    }
    return result
}
arraySum(a: [])

/* Задание 4
 Используя перегрузку (overloading) создайте две одноименные функции, которые могут принимать два однотипных параметра (Int или Double) и возвращают их произведение
 Пример:
 (4, 5) -> 4 * 5 = 20
 (4.1, 5.2) -> 4.1 * 5.2 = 21.32*/

func overLoading(a: Int, b: Int) -> Int {
    a*b
}

func overLoading(a: Double, b: Double) -> Double {
    a*b
}
overLoading(a: 2, b: 3)
overLoading(a: 3.1, b: 3.1)

/* Задание 5
 Напишите функцию, которая принимает на вход целое число и возвращает противоположное ему целое число
 Пример
 -12 -> 12
 32 -> -32*/
func num(a: Int) -> Int {
    return -a
}
num(a: 10)

/*Задание 6
 Напишите функцию, которая производит подсчет стоимости аренды квартиры с учетом следующих условий:
 1. Один день аренды стоит 850 рублей
 2. При аренде от 3 дней вы получаете скидку в размере 550 рублей от общей суммы
 3. При аренде от 7 дней вы получаете скидку в размере 1620 рублей от общей суммы
 Функция должна принимать на вход количество дней, а возвращать итоговую сумму.
 Пример
 funcName(5) -> 3700
 funcName(9) -> 6030
 */
func renta(day: Int) -> Int {
    let rentOfDay = 850
    var sum = day*rentOfDay
    switch day {
    case _ where day>=7:
        sum -= 1620
    case _ where day>=3:
        sum -= 550
    default:
        print("Некоректные данные")
    }
    return sum
}
renta(day: 8)

/* Задание 7
 
 Напишите функцию, которая принимает на вход массив типа [Int] и значение Int, проверяет содержится ли целочисленный элемент в массиве и возвращает true или false в зависимости от результата проверки
 Покажите не менее двух способов решения данной задачи
 Пример:
 funcName([1,2,3], 4) -> false
 funcName([2,3,4], 3) -> true*/
// 1 способ
func numInArray(array: [Int], num: Int) -> Bool {
    array.contains(num)
}
numInArray(array: [1,2,3], num: 7)

// 2 способ
func numInArray2(array: [Int], num: Int) -> Bool {
    for i in array {
        if i == num {
        return true
    }
}
    return false
}
numInArray2(array: [1,2,3], num: 7)

/* задание 8
 Напишите функцию, которая повторяет заданную строку N раз.
 Функция принимает на вход значение типа String (строку для повторений) и значение типа Int (количество повторений) и возвращает полученный результат.
 Пример:
 funcName("Swift", 2) -> "SwiftSwift"
 funcName("Xcode", 0) -> ""
 */
func repeatofStr(str: String, amount: Int) -> String {
    return String(repeating: str, count: amount)
}
repeatofStr(str: "Nadia", amount: 2)

/* Задание 9
 Мальчик находится на N-ом этаже в здании. Мама мальчика смотрит в окно на M-ом этаже здания. Мальчик выпускает из рук мячик, он летит вниз, отскакивает на (высота броска) * L, вновь летит вниз, вновь отскакивает на (высота предыдущего отскока) * L и т.д, пока не окончит отскакивать.
 Реализуйте функцию, которая высчитывает, сколько раз мяч пролетит мимо мамы (вниз и вверх). Функция должна принимать на вход следующие параметры:
 – высота одного этажа (h > 0)
 – этаж мальчика (N >= 2)
 – этаж мамы (M >= 1)
 – коэффициент отскока (L < 1)
 */
func pingPong(heigh h: Float, boyFloor N: Int, momFloor M: Int, rebound L: Float) -> Int {
  var currentFloor = Float(N)*L
    var sum = 1
    while currentFloor >= Float(M) {
        currentFloor *= L
            sum += 2
}
    return sum
}
pingPong(heigh: 4, boyFloor: 3, momFloor: 1, rebound: 0.6)

/* Задание 10
 Напишите функцию, которая принимает параметр типа String, а возвращает true (типа Bool) если в строке есть только уникальные символы, и false, если в ней есть хотя бы один повторяющийся символ.
 */
func uniqueSymbols(str: String) -> Bool {
    return Set(str).count == str.count
}
uniqueSymbols(str: "Dima")

/* Задание 11
 Напишите функцию, которая определяет, состоят ли две переданные в нее строки из одних и тех же символов.

 Пример:

 funcName(in: "abc", and: "bca") // true
 funcName(in: "abc", and: "bcaa") // false
 */

func sameSymbols(first: String, second: String) -> Bool {
    return Set(first) == Set(second)
}
sameSymbols(first: "abc", second: "bac")


/* Задание 12
 Реализуйте функцию pow(Int,Int), которая принимает два целочисленных элемента. Первый указывает на степень второго числа. Результат функции – второй аргумент функции, возведенный в степень (первый аргумент функции).
Предполагается, что аргументы могут быть только целыми положительными числами. */
    func pow1(a:Int, b: Int) -> Int {
        var sum = 1
        for _ in 0..<a {
           sum *= b
        }
        return sum
    }
    pow1(a: 3, b: 2)
