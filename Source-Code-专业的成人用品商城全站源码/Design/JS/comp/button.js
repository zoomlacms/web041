define(function (require, exports, module) {
    var _self = function () { }, _base = require("base"), $ = require('jquery');
    _base.utils.inherits(_self, _base.Control);

    _self.prototype.Init_Pre = function (model, extend) {
        var btnstyle = model.config.bgcolor + "width:" + model.config.width + ";height:" + model.config.height + ";font-size:" + model.config.fontsize + ";";
        this.htmlTlp += '<a href="javascript:;" ng-bind-html="list.@id.dataMod.value|html" style="color:#fff;' + btnstyle + '" class="' + model.config.class + '">' + model.config.htm + '</a>';
    }
    //处理拖动事件,动态调整大小
    _self.prototype.resize = function (ui) {
        var ref = this;
        var $tar = ref.instance.find("a");
        $tar.width(ui.width).height(ui.height);
    }
    module.exports = function () { return _self; }
});