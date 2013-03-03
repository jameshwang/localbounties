var Support = Support || {};

Support.CompositeView = function(options) {
  this.children = _([]);
  this.bindings = _([]);
  Backbone.View.apply(this, [options]);
};

_.extend(Support.CompositeView.prototype, Backbone.View.prototype, {
  close: function() {
    // Do before close
    if (typeof(this.before_close) != "undefined") {
      this.before_close();
    }
    this.unbind();
    this.unbindFromAll();
    this.remove();
    this._closeChildren();
    this._removeFromParent();
  },

  bindTo: function(source, event, callback) {
    source.bind(event, callback, this);
    this.bindings.push({ source: source, event: event, callback: callback });
  },

  unbindFromAll: function() {
    // New backbone method
    // @stopListening()
    this.bindings.each(function(binding) {
      binding.source.unbind(binding.event, binding.callback);
    });
    this.bindings = _([]);
  },

  renderChild: function(view) {
    view.render();
    this.children.push(view);
    view.parent = this;
  },
  
  renderChildInto: function(view, container) {
    this.renderChild(view);
    $(container).empty().append(view.el);
  },

  appendChild: function(view) {
    this.renderChild(view);
    $(this.el).append(view.el);
  },
  
  appendChildTo: function (view, container) {
    this.renderChild(view);
    $(container).append(view.el);
  },
  
  prependChild: function(view) {
    this.renderChild(view);
    $(this.el).prepend(view.el);
  },
  
  prependChildTo: function (view, container) {
    this.renderChild(view);
    $(container).prepend(view.el);
  },

  _closeChildren: function() {
    this.children.chain().clone().each(function(view) {
      if (view.close)
        view.close();
    });
  },

  _removeFromParent: function() {
    if (this.parent)
      this.parent._removeChild(this);
  },

  _removeChild: function(view) {
    var index = this.children.indexOf(view);
    this.children.splice(index, 1);
  }
});

Support.CompositeView.extend = Backbone.View.extend;

Support.SwappingRouter = function(options) {
  Backbone.Router.apply(this, [options]);
};

_.extend(Support.SwappingRouter.prototype, Backbone.Router.prototype, {
  swap: function(newView) {
    if (this.currentView && this.currentView.close) {
      this.currentView.close();
    }

    this.currentView = newView;
    $(this.el).empty().append(this.currentView.render().el);
  }
});

Support.SwappingRouter.extend = Backbone.Router.extend;