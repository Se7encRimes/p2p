
var p2p = {

    //响应导航树上的动作
    registerMenuEvent: function () {
        var _this = this;
        $('#menu .easyui-tree').tree({
            onClick: function (node) {
                var href = node.attributes.href;
                _this.addTab(node.text,href);
            }
        });
    },
    //添加选项卡
    addTab:function(title,href){
        if($('#tab').tabs('exists',title)){
            $('#tab').tabs('select',title)
        }else{
            $('#tab').tabs('add', {
                title: title,
                href: href,
                closable: true
            });
        }
    },
    add_Tab:function(title,href,id){
        if($('#tab').tabs('exists',title)){
            $('#tab').tabs('select',title)
        }else{
            if(id==undefined){
                id=0;
            }
            $('#tab').tabs('add', {
                title: title,
                href: href+"?id="+id,
                closable: true
            });
        }
    },
    closeTab:function(title){
        $('#tab').tabs('close',title);
    }
};



