import QtQuick 2.6
import QtQuick.Window 2.2

Item {
    x:0
    y:0
    visible: true
    width: 640
    height: 480

    Column{

        id:column
        x:0
        y:12
        //anchors.fill: parent
        //元素之间上下间距
        spacing: 20
        Square{



        }
        Square{



        }

        Square{



        }
    }

    Row{
        x:200
        y:12
        id:row
        width: 200
        height: 200
        spacing: 20

        Square{

            color: "black"

        }
        Square{

            color: "black"


        }

        Square{

            color: "black"

        }
        Square{

            color: "black"

        }



    }

    //
    Grid{
        id:grid
        x:0
        y:200

        //不指定行列的话就是自动排列
        rows:3
        columns: 3
        //anchors.fill: parent
        spacing: 8


        Square{

            color: "black"

        }
        Square{

            color: "black"


        }

        Square{

            color: "black"

        }
        Square{

            color: "black"

        }

        Square{

            color: "black"

        }
        Square{

            color: "black"


        }

        Square{

            color: "black"

        }
        Square{

            color: "black"


        }
        Square{

            color: "black"

        }
        Square{

            color: "black"


        }

    }
    //Flow
    Flow{
        id:flow
        x:200
        y:100
        //        anchors.margins: 1
        //        anchors.fill: parent

        Square{

            color: "black"

        }
        Square{

            color: "black"


        }

        Square{

            color: "red"

        }
        Square{

            color: "black"


        }
        Square{

            color: "black"

        }
        Square{

            color: "black"


        }


    }

    Grid{

        id:root
        x:200
        y:150
        height: 300
        width: 300
        spacing: 16
        //定义数组
        property variant  colorArray: ["green","black","gray"]
        Repeater{
            model: 16
            Square{
                width: 56
                height: 56
                //Math.floor() 返回小于或等于一个给定数字的最大整数。
                //Math.random()函数返回一个浮点,  伪随机数在范围[0，1)，也就是说，从0（包括0）往上，但是不包括1（排除1）
                property int colorIndex:Math.floor(Math.random()*3)
                color: root.colorArray[colorIndex]
                border.color: Qt.lighter(color)
                Text {
                    id: tex1
                    color: "red"
                    text: "cell  "+index
                }

            }
        }




    }

}
