(function(){Handlebars.registerHelper("number_to_currency_special",function(e,t){if(e!=null)return e='<span class="dollar-sign">$</span><span class="dollar-amount">'+e.toString().substring(0,-2)+"</span>"+'<span class="cents-amount">.'+(parseFloat(e.toString().slice(-2))/100).toFixed(2)+"</span>",e}),Handlebars.registerHelper("dollar_amount",function(e,t){if(e!=null)return e=e.toString().substring(0,e.toString().length-2),e}),Handlebars.registerHelper("cents_amount",function(e,t){if(e!=null)return e=(parseFloat(e.toString().slice(-2))/100).toFixed(2).toString().slice(-3),e}),Handlebars.registerHelper("number_to_currency_dollar",function(e,t){if(e!=null)return e="$"+parseInt(e).toFixed(0).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g,",")}),Handlebars.registerHelper("number_to_standard_comma",function(e,t){if(e!=null){while(/(\d+)(\d{3})/.test(e.toString()))e=e.toString().replace(/(\d+)(\d{3})/,"$1,$2");return e}})}).call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/bounty_list"]=Handlebars.template(function(e,t,n,r,i){return n=n||e.helpers,i=i||{},"<div class='map-container' id='map-container'></div>\n<div class='list-container' id='list-container'></div>\n"}),this.JST["bounty_list_app/bounty_list"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/bounty_list_item"]=Handlebars.template(function(e,t,n,r,i){n=n||e.helpers,i=i||{};var s="",o,u="function",a=this.escapeExpression;return s+="<div class='bounty-list-item'>\n  <div class='content'>\n    <div class='reward'></div>\n    <div class='title'>\n      ",(o=n.title)?o=o.call(t,{hash:{},data:i}):(o=t.title,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n    </div>\n    <div class='description'>\n      ",(o=n.description)?o=o.call(t,{hash:{},data:i}):(o=t.description,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n    </div>\n    <div class='distance'>\n      ",(o=n.distance)?o=o.call(t,{hash:{},data:i}):(o=t.distance,o=typeof o===u?o.apply(t):o),s+=a(o)+" miles away\n    </div>\n    <div class='issued-time'>\n      ",(o=n.minutes_since_issued)?o=o.call(t,{hash:{},data:i}):(o=t.minutes_since_issued,o=typeof o===u?o.apply(t):o),s+=a(o)+" min ago\n    </div>\n    <div class='arrow-box'>\n      <div class='arrow'></div>\n    </div>\n  </div>\n</div>\n",s}),this.JST["bounty_list_app/bounty_list_item"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/bounty_mini_nav"]=Handlebars.template(function(e,t,n,r,i){n=n||e.helpers,i=i||{};var s="",o,u="function",a=this.escapeExpression;return s+="<div class='nav-item available' id='1'>\n  <div class='count-box plus-one hidden'>\n    1\n    <div class='plus'>\n      +\n    </div>\n  </div>\n  Available\n</div>\n<div class='nav-item in-progress' id='2'>\n  <div class='count-box plus-one hidden'>\n    1\n    <div class='plus'>\n      +\n    </div>\n  </div>\n  <div class='count-box in-progress-count-box'>\n    ",(o=n.in_progress_count)?o=o.call(t,{hash:{},data:i}):(o=t.in_progress_count,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n  </div>\n  In progress\n</div>\n<div class='nav-item completed' id='3'>\n  <div class='count-box plus-one hidden'>\n    1\n    <div class='plus'>\n      +\n    </div>\n  </div>\n  Completed\n</div>\n",s}),this.JST["bounty_list_app/bounty_mini_nav"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/bounty_single"]=Handlebars.template(function(e,t,n,r,i){n=n||e.helpers,i=i||{};var s="",o,u="function",a=this.escapeExpression;return s+="<div class='top-info'>\n  <div class='reward'></div>\n  <div class='title'>\n    ",(o=n.title)?o=o.call(t,{hash:{},data:i}):(o=t.title,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n  </div>\n</div>\n<div class='action-section'>\n  <div class='action-button-container'>\n    <button class='button-accept'>\n      Accept this bounty\n    </button>\n  </div>\n  <div class='verification-box hidden'>\n    Additional info here\n    <button class='verify-button'>\n      Verify\n    </button>\n  </div>\n</div>\n<div class='bottom-info'>\n  <div class='section owner-section'>\n    <div class='avatar'></div>\n    <div class='details'>\n      <div class='name'>\n        Connor Warnock\n      </div>\n      <div class='level'>\n        Veteran\n      </div>\n    </div>\n  </div>\n  <div class='section details-section'>\n    <div class='block distance'>\n      <div class='number'>\n        1.2 miles\n      </div>\n      <div class='label'>\n        Away from you\n      </div>\n    </div>\n    <div class='block time'>\n      <div class='number'>\n        2 hrs\n      </div>\n      <div class='label'>\n        Until expiration\n      </div>\n    </div>\n    <div class='block duration'>\n      <div class='number'>\n        5 min\n      </div>\n      <div class='label'>\n        to complete\n      </div>\n    </div>\n  </div>\n  <div class='section description-section'>\n    <div class='label'>\n      Description\n    </div>\n    <div class='description-block'>\n      <p>\n        ",(o=n.description)?o=o.call(t,{hash:{},data:i}):(o=t.description,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n      </p>\n    </div>\n  </div>\n  <div class='section description-section'>\n    <div class='label'>\n      Verification\n    </div>\n    <div class='description-block'>\n      <p>\n        ",(o=n.verification_description)?o=o.call(t,{hash:{},data:i}):(o=t.verification_description,o=typeof o===u?o.apply(t):o),s+=a(o)+"\n      </p>\n    </div>\n  </div>\n</div>\n",s}),this.JST["bounty_list_app/bounty_single"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/filter_box"]=Handlebars.template(function(e,t,n,r,i){return n=n||e.helpers,i=i||{},"<div class='button filter-button'>\n  Filter\n</div>\n<div class='button-container'>\n  <div class='button add-button'>\n    +\n  </div>\n  <div class='button button-map'>\n    Map\n  </div>\n</div>\n<div class='filter-status'>\n  Showing closest first\n</div>\n"}),this.JST["bounty_list_app/filter_box"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/new_bounty"]=Handlebars.template(function(e,t,n,r,i){return n=n||e.helpers,i=i||{},"<div class='new-bounty-top'>\n  <h2>\n    Create a new bounty\n  </h2>\n</div>\n<div class='field-box title-field-box'>\n  <label>\n    Title\n  </label>\n  <div class='field'>\n    <input class='large' id='title' placeholder='Put my name on the waiting list' type='text'>\n  </div>\n</div>\n<div class='field-box'>\n  <label>\n    Description\n  </label>\n  <div class='field'>\n    <textarea id='description' placeholder='Keep it short and sweet...'></textarea>\n  </div>\n</div>\n<div class='field-box'>\n  <label>\n    Verification Process\n  </label>\n  <div class='field'>\n    <textarea id='verification-process' placeholder='How do they prove the task is complete.  Can be as easy as \"Will verify in person\" or the bounty hunter can send you a picture...'></textarea>\n  </div>\n</div>\n<div class='field-box'>\n  <label>\n    Reward\n  </label>\n  <div class='field'>\n    <input class='short' id='reward' placeholder='1.00' type='text'>\n  </div>\n</div>\n<div class='field-box'>\n  <label>\n    Amount of time to complete\n  </label>\n  <div class='field'>\n    <input class='short' id='duration' placeholder='10 minutes' type='text'>\n  </div>\n</div>\n<div class='field-box'>\n  <label>\n    Location\n  </label>\n  <div class='field'>\n    <input id='location' placeholder='44 Second Street, San Francisco' type='text'>\n  </div>\n</div>\n<div class='field-box button-field-box'>\n  <button class='big-button submit-button'>\n    Create this bounty!\n  </button>\n</div>\n"}),this.JST["bounty_list_app/new_bounty"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/plus_one"]=Handlebars.template(function(e,t,n,r,i){return n=n||e.helpers,i=i||{},"<div class='count-box plus-one'>\n  1\n  <div class='plus'>\n    +\n  </div>\n</div>\n"}),this.JST["bounty_list_app/plus_one"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/reward_box"]=Handlebars.template(function(e,t,n,r,i){n=n||e.helpers,i=i||{};var s="",o,u,a=n.helperMissing,f=this.escapeExpression;return s+="<div class='dollar-sign'>\n  $\n</div>\n<div class='dollar-amount'>\n  ",u={hash:{},data:i},s+=f((o=n.dollar_amount,o?o.call(t,t.reward,u):a.call(t,"dollar_amount",t.reward,u)))+"\n</div>\n<div class='cents-amount'>\n  ",u={hash:{},data:i},s+=f((o=n.cents_amount,o?o.call(t,t.reward,u):a.call(t,"cents_amount",t.reward,u)))+"\n</div>\n",s}),this.JST["bounty_list_app/reward_box"]}.call(this),function(){return this.JST||(this.JST={}),this.JST["bounty_list_app/side_nav"]=Handlebars.template(function(e,t,n,r,i){return n=n||e.helpers,i=i||{},"<li class='side-nav-item active'>\n  All bounties\n</li>\n<li class='side-nav-item'>\n  My issued bounties\n</li>\n<li class='side-nav-item'>\n  My account\n</li>\n<li class='side-nav-item'>\n  Sign out\n</li>\n"}),this.JST["bounty_list_app/side_nav"]}.call(this),function(){var e;(e=window.Bounty)==null&&(window.Bounty={}),Bounty.BountyListApp={Models:{},Collections:{},Views:{},Routers:{},init:function(e){return this.firebase_url=e.firebase_url,this.user=e.user,this.available_bounties_collection=new Bounty.BountyListApp.Collections.Bounties,this.in_progress_bounties_collection=new Bounty.BountyListApp.Collections.BountiesInProgress,this.completed_bounties_collection=new Bounty.BountyListApp.Collections.BountiesCompleted,this.vent=_.extend({},Backbone.Events,{cid:"dispatcher"}),this.router=new Bounty.BountyListApp.Routers.Main,Backbone.history.start({}),this.app=new Bounty.BountyListApp.Views.AppView}}}.call(this),function(){var e={}.hasOwnProperty,t=function(t,n){function i(){this.constructor=t}for(var r in n)e.call(n,r)&&(t[r]=n[r]);return i.prototype=n.prototype,t.prototype=new i,t.__super__=n.prototype,t};Bounty.BountyListApp.Models.Bounty=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.defaults={reward:145,title:"Untitled",description:"Please provide a description",distance:".2",minutes_since_issued:4},n.prototype.accept=function(e){var t;return t=this,$.ajax("/api/bounties/"+this.get("id")+"/accept",{type:"POST",dataType:"json",error:function(e,t,n){},success:function(t,n,r){return e.call()}})},n.prototype.verify=function(){var e;return e=this,$.ajax("/api/bounties/"+this.get("id")+"/complete",{type:"POST",dataType:"json",error:function(e,t,n){},success:function(e,t,n){}})},n.prototype.url=function(){return this.isNew()?"/api/bounties/":"/api/bounties/"+this.get("id")},n}(Backbone.Model)}.call(this),function(){var e={}.hasOwnProperty,t=function(t,n){function i(){this.constructor=t}for(var r in n)e.call(n,r)&&(t[r]=n[r]);return i.prototype=n.prototype,t.prototype=new i,t.__super__=n.prototype,t};Bounty.BountyListApp.Collections.Bounties=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/bounties/available",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection),Bounty.BountyListApp.Collections.BountiesInProgress=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/users/"+Bounty.BountyListApp.user.firebase_token+"/bounties/in-progress",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection),Bounty.BountyListApp.Collections.BountiesCompleted=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/users/"+Bounty.BountyListApp.user.firebase_token+"/bounties/completed",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection),Bounty.BountyListApp.Collections.IssuedBountiesCompleted=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/users/"+Bounty.BountyListApp.user.firebase_token+"/bounties/available-issued",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection),Bounty.BountyListApp.Collections.IssuedBountiesCompleted=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/users/"+Bounty.BountyListApp.user.firebase_token+"/bounties/in-progress-issued",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection),Bounty.BountyListApp.Collections.IssuedBountiesCompleted=function(e){function n(){n.__super__.constructor.apply(this,arguments)}return t(n,e),n.prototype.model=Bounty.BountyListApp.Models.Bounty,n.prototype.firebase=function(){return this.api_endpoint="/users/"+Bounty.BountyListApp.user.firebase_token+"/bounties/completed-issued",Bounty.BountyListApp.firebase_url+this.api_endpoint},n}(Backbone.Firebase.Collection)}.call(this),function(){Bounty.BountyListApp.Views.AppView=Support.CompositeView.extend({initialize:function(){return this.bounty_content_panel_view=new Bounty.BountyListApp.Views.BountyContentPanel,this.bounty_secondary_panel_view=new Bounty.BountyListApp.Views.BountySecondaryPanel,this.bounty_secondary_panel_view.setElement("#bounty-secondary-panel"),this.renderChild(this.bounty_secondary_panel_view),this.side_nav_view=new Bounty.BountyListApp.Views.SideNav,this.side_nav_view.setElement($("#side-nav")),this.renderChild(this.side_nav_view)}})}.call(this),function(){Bounty.BountyListApp.Views.BountyContentPanel=Support.CompositeView.extend({initialize:function(){return this.listenTo(Bounty.BountyListApp.vent,"content-panel:show-bounty-list",this.showBountyList),this.listenTo(Bounty.BountyListApp.vent,"content-panel:show-bounty-map",this.showBountyMap),this.showMiniNav(),this.showAvailableBounties()},showMiniNav:function(){return this.bounty_mini_nav=new Bounty.BountyListApp.Views.BountyMiniNav,this.renderChild(this.bounty_mini_nav),$("#bounty-mini-nav-container").append(this.bounty_mini_nav.el)},showAvailableBounties:function(){return this.filter_box_view=new Bounty.BountyListApp.Views.FilterBox,this.renderChild(this.filter_box_view),$("#bounty-sub-content").append(this.filter_box_view.el),this.bounty_list=new Bounty.BountyListApp.Views.BountyList,this.renderChild(this.bounty_list),$("#bounty-sub-content").append(this.bounty_list.el)},showBountyMap:function(){return console.log("show bounty map")},showBountyList:function(){return console.log("show bounty list")}})}.call(this),function(){Bounty.BountyListApp.Views.BountyList=Support.CompositeView.extend({className:"bounty-list",template:JST["bounty_list_app/bounty_list"],render:function(){return this.$el.html(this.template()),this.renderListItems(),this.showBountyMap(),this.$el},initialize:function(){return this.collection=Bounty.BountyListApp.available_bounties_collection,this.bindUniversalEvents(),this.bindEvents()},bindUniversalEvents:function(){return this.listenTo(Bounty.BountyListApp.vent,"bounty-list:show-available",_.bind(this.showAvailable,this)),this.listenTo(Bounty.BountyListApp.vent,"bounty-list:show-in-progress",_.bind(this.showInProgress,this)),this.listenTo(Bounty.BountyListApp.vent,"bounty-list:show-completed",_.bind(this.showCompleted,this)),this.listenTo(Bounty.BountyListApp.vent,"bounty-list:show-bounty-map",this.showBountyMap),this.listenTo(Bounty.BountyListApp.vent,"bounty-list:hide-bounty-map",this.hideBountyMap),this.listenTo(Bounty.BountyListApp.vent,"bounty-list:add",_.bind(this.addNewListItem,this))},unbindEvents:function(){return this.stopListening(this.collection)},bindEvents:function(){return this.listenTo(this.collection,"add",this.addListItem)},resetFired:function(){return console.log("change!!!")},showBountyMap:function(){return this.$el.find("#map-container").slideDown(200,_.bind(this.renderMap,this))},renderMap:function(){var e;return(e=this.map_view)==null&&(this.map_view=new Bounty.BountyListApp.Views.BountyMap),this.renderChild(this.map_view),this.$el.find("#map-container").html(this.map_view.el)},hideBountyMap:function(){return this.$el.find("#map-container").slideUp(200)},showAvailable:function(){return console.log("show avail"),this.unbindEvents(),this.collection=Bounty.BountyListApp.available_bounties_collection,this.bindEvents(),this.renderListItems()},showInProgress:function(){return this.unbindEvents(),this.collection=Bounty.BountyListApp.in_progress_bounties_collection,this.bindEvents(),this.renderListItems()},showCompleted:function(){return this.unbindEvents(),this.collection=Bounty.BountyListApp.completed_bounties_collection,this.bindEvents(),this.renderListItems()},addNewListItem:function(){return this.collection.add({title:"Sample item"})},addListItem:function(e){var t,n;return n=new Bounty.BountyListApp.Views.BountyListItem({model:e}),this.renderChild(n),$(n.el).find(".content").hide(),$(n.el).find(".bounty-list-item").hide(),$(n.el).hide(),this.$el.find("#list-container").prepend(n.el),$(n.el).slideDown(200,"swing"),t=$(n.el).find(".bounty-list-item"),t.delay(400).effect("scale",{origin:["middle","center"],from:{width:t.width()*.8,height:t.height()*.8},percent:100,direction:"both",easing:"swing"},100,function(){return t.find(".content").fadeIn(300)})},renderListItems:function(){var e;return e=this,this.$el.find("#list-container").empty(),this.collection.each(function(t){var n;return n=new Bounty.BountyListApp.Views.BountyListItem({model:t}),e.renderChild(n),$(e.el).find("#list-container").append(n.el)})}})}.call(this),function(){Bounty.BountyListApp.Views.BountyListItem=Support.CompositeView.extend({className:"bounty-list-item-container",template:JST["bounty_list_app/bounty_list_item"],templateRewardBox:JST["bounty_list_app/reward_box"],events:{click:"showInSecondary"},initialize:function(){return this.listenTo(this.model,"remove",this.disable)},disable:function(){return this.$el.find(".bounty-list-item").addClass("disabled")},render:function(){return this.$el.html(this.template(this.model.toJSON())),this.renderRewardBox(),this.$el},renderRewardBox:function(){return this.$el.find(".reward").html(this.templateRewardBox(this.model.toJSON())),this.$el},showInSecondary:function(){return console.log("show"),Bounty.BountyListApp.vent.trigger("secondary-panel:show-single-bounty",{model:this.model})}})}.call(this),function(){Bounty.BountyListApp.Views.BountyMap=Support.CompositeView.extend({className:"bounty-map",render:function(){return this.generateMap(this.el,[],450,300),this.$el},generateMap:function(e,t,n,r){var i,s;return this.listOfMarkers=[],i=["reward-b.png","reward-r.png","reward-g.png","reward-y.png","reward-lb.png"],s=this,this.getLocation=function(){return navigator.geolocation?navigator.geolocation.getCurrentPosition(this.showPosition):x.html("Geolocation is not supported by this browser.")},this.showPosition=function(o){var u,a,f,l,c,h;return a=o.coords.latitude,l=o.coords.longitude,f=new google.maps.LatLng(a,l),h=e,h.style.height=r+"px",h.style.width=n+"px",c={center:f,zoom:15,mapTypeId:google.maps.MapTypeId.ROADMAP,mapTypeControl:!1,navigationControlOptions:{style:google.maps.NavigationControlStyle.SMALL}},s.map=new google.maps.Map(h,c),u=new google.maps.Marker({position:f,map:s.map,title:"You are here!"}),$.each(t,function(e,t){var n;return f=new google.maps.LatLng(t.lat,t.lon),n=new google.maps.Marker({position:f,map:s.map,icon:i[parseInt(Math.random()*5)]}),s.listOfMarkers.push({googleMarker:n,myMarker:t})})},this.getLocation(),this.addMarker=function(e){var t,n;return t=new google.maps.LatLng(e.lat,e.lon),n=new google.maps.Marker({position:t,map:s.map,icon:i[parseInt(Math.random()*5)]}),this.listOfMarkers.push({googleMarker:n,myMarker:e})},this.removeMarker=function(e){return s=this,$.each(this.listOfMarkers,function(t,n){if(n.myMarker.title===e)return s.listOfMarkers.splice(t,1)[0].googleMarker.setMap(null)})}}})}.call(this),function(){Bounty.BountyListApp.Views.BountyMiniNav=Support.CompositeView.extend({template:JST["bounty_list_app/bounty_mini_nav"],templatePlusOne:JST["bounty_list_app/plus_one"],className:"bounty-mini-nav",events:{"click .nav-item":"selectNavItem"},initialize:function(){return this.active_nav_item="1",this.in_progress_count=0,this.listenTo(Bounty.BountyListApp.in_progress_bounties_collection,"add",this.updateInProgressCount),this.listenTo(Bounty.BountyListApp.in_progress_bounties_collection,"remove",this.updateInProgressCount),this.listenTo(Bounty.BountyListApp.available_bounties_collection,"add",this.showIncrementOfAvailable),this.listenTo(Bounty.BountyListApp.in_progress_bounties_collection,"add",this.showIncrementOfInProgress),this.listenTo(Bounty.BountyListApp.completed_bounties_collection,"add",this.showIncrementOfCompleted)},updateInProgressCount:function(){return this.in_progress_count=Bounty.BountyListApp.in_progress_bounties_collection.length,console.log(this.in_progress_count),this.render()},showIncrementOfAvailable:function(){var e;return e=this.$el.find("#1 .plus-one"),e.fadeIn(100,function(){return e.delay(200).fadeOut(100)})},showIncrementOfInProgress:function(){var e;return e=this.$el.find("#2 .plus-one"),e.fadeIn(100,function(){return e.delay(200).fadeOut(100)})},showIncrementOfCompleted:function(){var e;return e=this.$el.find("#3 .plus-one"),e.fadeIn(100,function(){return e.delay(200).fadeOut(100)})},render:function(){return this.$el.html(this.template({active_nav_item:this.active_nav_item,in_progress_count:this.in_progress_count})),this.in_progress_count===0&&this.$el.find(".in-progress-count-box").hide(),this.$el.find("#"+this.active_nav_item).addClass("active"),this.$el},selectNavItem:function(e){var t;this.active_nav_item=$(e.target).attr("id"),this.render();switch(this.active_nav_item){case"1":t="show-available";break;case"2":t="show-in-progress";break;case"3":t="show-completed"}return Bounty.BountyListApp.vent.trigger("bounty-list:"+t)}})}.call(this),function(){Bounty.BountyListApp.Views.BountySecondaryPanel=Support.CompositeView.extend({initialize:function(){var e;return this.listenTo(Bounty.BountyListApp.vent,"secondary-panel:show-single-bounty",_.bind(this.showSingleBounty,this)),this.listenTo(Bounty.BountyListApp.vent,"secondary-panel:show-recent-in-progress",_.bind(this.showRecentInProgress,this)),this.listenTo(Bounty.BountyListApp.vent,"secondary-panel:show-new-bounty",_.bind(this.showNewBounty,this)),e=this,$("#new-bounty-button").click(function(){return e.showNewBounty()})},render:function(){return this.$el},showSingleBounty:function(e){return this._closeChildren(),this.single_view=new Bounty.BountyListApp.Views.BountySingle({model:e.model}),this.renderChild(this.single_view),this.$el.html(this.single_view.el)},showNewBounty:function(){return this._closeChildren(),this.new_bounty=new Bounty.BountyListApp.Views.NewBounty,this.renderChild(this.new_bounty),this.$el.html(this.new_bounty.el)},showRecentInProgress:function(){var e;return this._closeChildren(),e=Bounty.BountyListApp.in_progress_bounties_collection.first(),this.single_view=new Bounty.BountyListApp.Views.BountySingle({model:e}),this.renderChild(this.single_view),this.$el.html(this.single_view.el)}})}.call(this),function(){Bounty.BountyListApp.Views.BountySingle=Support.CompositeView.extend({className:"bounty-single",template:JST["bounty_list_app/bounty_single"],templateRewardBox:JST["bounty_list_app/reward_box"],events:{"click .button-accept":"accept","click .verify-button":"verify"},initialize:function(){},render:function(){return this.$el.html(this.template(this.model.toJSON())),this.$el.find(".reward").html(this.templateRewardBox(this.model.toJSON())),this.model.get("status")==="in_progress"&&(this.$el.find(".button-accept").html("Bounty accepted!"),this.$el.find(".verification-box").show()),this.$el},accept:function(){var e,t;return this.$el.find(".button-accept").html("Bounty accepted!"),e=function(){return Bounty.BountyListApp.vent.trigger("secondary-panel:show-recent-in-progress")},t=this,this.$el.find(".verification-box").slideDown(200,function(){return t.model.accept(e)})},verify:function(){return console.log("verify"),this.model.verify()}})}.call(this),function(){Bounty.BountyListApp.Views.FilterBox=Support.CompositeView.extend({template:JST["bounty_list_app/filter_box"],className:"filter-box",events:{"click .add-button":"add","click .button-map":"toggleMap"},initialize:function(){return this.show_map=!0},render:function(){return this.$el.html(this.template())},add:function(){return Bounty.BountyListApp.vent.trigger("bounty-list:add")},toggleMap:function(){return this.show_map===!0?(this.show_map=!1,this.$el.find(".button-map").removeClass("active"),Bounty.BountyListApp.vent.trigger("bounty-list:hide-bounty-map")):(this.show_map=!0,this.$el.find(".button-map").addClass("active"),Bounty.BountyListApp.vent.trigger("bounty-list:show-bounty-map"))}})}.call(this),function(){Bounty.BountyListApp.Views.NewBounty=Support.CompositeView.extend({className:"new-bounty",template:JST["bounty_list_app/new_bounty"],events:{"click .submit-button":"createNew"},initialize:function(){},render:function(){return this.$el.html(this.template()),this.$el},createNew:function(){var e;return console.log("create"),e={},e.title=this.$el.find("#title").val(),e.description=this.$el.find("#description").val(),e.verification=this.$el.find("#verification-process").val(),e.reward=this.$el.find("#reward").val(),e.duration=this.$el.find("#duration").val(),this.model=new Bounty.BountyListApp.Models.Bounty(e),this.model.save({success:function(){return console.log("successfuly!")}})}})}.call(this),function(){Bounty.BountyListApp.Views.SideNav=Support.CompositeView.extend({template:JST["bounty_list_app/side_nav"],className:"side-nav",tagName:"ul",render:function(){return this.$el.html(this.template())}})}.call(this),function(){Bounty.BountyListApp.Routers.Main=Backbone.Router.extend({routes:{"":"overview"},overview:function(){}})}.call(this);