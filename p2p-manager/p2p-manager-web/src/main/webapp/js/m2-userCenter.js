/*----个人中心月益线型图表----*/
function loadChartmonth(monthData,monthCate){
	// 路径配置
    require.config({
        paths:{ 
            'echarts' : 'js/echarts',
            'echarts/chart/line' : 'js/echarts'
        }
    });
   // 使用
   require(
        [
            'echarts',
            'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('m2-chartMonth')); 
			var option = {
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['月收益']
				    },
				    toolbox: {
				        show : false,
				        feature : {
				            mark : {show: true},
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    },
				    calculable : false,
				    xAxis : [
				        {
				            type : 'category',
				            boundaryGap : false,
				            data : monthCate
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value',
				            axisLabel : {
				                formatter: '{value} 元'
				            }
				        }
				    ],
				    series : [
				        {
				            name:'月收益',
				            type:'line',
				            data:monthData,
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            }
				        }
				    ]
			};        
            // 为echarts对象加载数据 
            myChart.setOption(option); 
        }          
    );
};

