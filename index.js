let str = 'string GoodsId, string StoreId, string LotNo, string GoodsStatus, decimal Quantity, string mkCode'
function GetParameterType(str) {
    str = ' ' + str
    let strS = []
    str.split(',').forEach(element => {
        // console.dir(element.split(' ')[1]);     
        strS.push(element.split(' ')[1])
    })
    console.dir("参数一共" + strS.length + "个")
    console.dir(strS.toString())
}
 GetParameterType(str)

function name(str) {
    // console.dir(str.replace(/\;/g, ';\n'));
    str = str.replace(/\;/g, ';\n').replace(/\{/g, '{ \n    ').replace(/\,/g, ',\n').replace(/\}/, '\n }');// 遇到分号换行  遇到{换行
    console.dir(str);
    // console.dir(str.split(";").join(";\n"));
    // console.dir(str);
}
// name(Js)


