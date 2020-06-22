define(function (require, exports, module) {
    //var tlp = '<div id="@id" ng-model="list.@id.dataMod" class="@css" style="@style"><div class="layout"></div></div>';
    var _self = function () { }, _base = require("base"), $ = require('jquery');
    _base.utils.inherits(_self, _base.Control);
    _self.prototype.htmlTlp = '';
    _self.prototype.Init_Pre = function (model, extend) {
        var ref = this;
        switch (model.config.compid) {
            case "text":
                ref.htmlTlp = '<input type="text" class="form-control" style="font-size:24px;height:68px;" placeholder="{{list.@id.config.name}}" />';
                break;
            case "textarea":
                ref.htmlTlp = '<textarea type="text" class="form-control" style="font-size:24px;height:240px;" placeholder="{{list.@id.config.name}}" ></textarea>';
                break;
            default:
                alert(model.confi.compid) + "类型不正确";
                break;
        }
        //如果是design模式下,还需要加个遮罩,用于方便用户点击,同于地图组件
        if (model.mode == "design") {
            ref.htmlTlp = '<div class="comp_mask"></div>' + ref.htmlTlp;
        }
    }
    _self.prototype.resize = function (ui) {
        var ref = this;
        var $tar = ref.instance.find(".form-control");
        $tar.height(ui.height - 12);//width本身就是100%
    }
    module.exports = function () { return _self; }
});