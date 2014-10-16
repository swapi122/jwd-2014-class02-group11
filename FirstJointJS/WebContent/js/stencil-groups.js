(function() {
	joint.shapes.custom = {};
	// The following custom shape creates a link only out of the label inside the element.
	joint.shapes.custom.ElementLabelLink = joint.shapes.basic.Rect.extend({
	    // Note the `<a>` SVG element surrounding the rest of the markup.
	    markup: '<g class="rotatable"><g class="scalable"><rect/></g><a><text/></a></g>',
	    defaults: joint.util.deepSupplement({
	        type: 'custom.ElementLabelLink'
	    }, joint.shapes.basic.Rect.prototype.defaults)
	});
	
	//auto layout
	 var LightLinkView = joint.dia.LinkView.extend({

	        node: V('<line stroke="gray" fill="none" />'),

	        initialize: function() {
	            
	            joint.dia.CellView.prototype.initialize.apply(this, arguments);
	            
	            V(this.el).attr({ 'class': 'link', 'model-id': this.model.id });
	            
	            // this.throttledUpdate = _.bind(_.throttle(this.update, 10), this);
	        },
	        
	        render: function() {

	            var node = this.node.clone();

	            this._sourceModel = this.paper.getModelById(this.model.get('source').id);
	            this._targetModel = this.paper.getModelById(this.model.get('target').id);
	                
	            this._lineNode = V(node.node);

	            var attrs = this.model.get('attrs');
	            if (attrs && attrs.line)
	                this._lineNode.attr(attrs.line);
	            
	            this._sourceModel.on('change:position', this.update);
	            this._targetModel.on('change:position', this.update);
	            
	                this.update();

	            V(this.el).append(node);
	            },

	        update: function() {

	            var sourceSize = this._sourceModel.get('size') || { width: 0, height: 0 };
	            var targetSize = this._targetModel.get('size') || { width: 0, height: 0 };
	            
	            var sourcePosition = this._sourceModel.get('position');
	            var targetPosition = this._targetModel.get('position');

	            if (sourcePosition && targetPosition) {

	                sourcePosition = g.point(sourcePosition).offset(sourceSize.width/2, sourceSize.height/2);
	                targetPosition = g.point(targetPosition).offset(targetSize.width/2, targetSize.height/2);

	                this._lineNode.node.setAttribute('x1', sourcePosition.x);
	                this._lineNode.node.setAttribute('y1', sourcePosition.y);
	                this._lineNode.node.setAttribute('x2', targetPosition.x);
	                this._lineNode.node.setAttribute('y2', targetPosition.y);
	            }
	        }
	    });
	 
	 
	
	
    var graph = new joint.dia.Graph;
    var $app = $('#paper-holder-groups');
    var paper = new joint.dia.Paper({
        width: 800,
        height: 800,
        gridSize: 1,
        model: graph,
        defaultLink: new joint.dia.Link({
            attrs: { '.marker-target': { d: 'M 10 0 L 0 5 L 10 10 z' } }
        }),
        snapLinks: { radius: 75 },
        markAvailable: true
    });
    //scroller
    var paperScroller = new joint.ui.PaperScroller({
        autoResizePaper: true,
        padding: 50,
        paper: paper
    });

    // Initiate panning when the user grabs the blank area of the paper.
    paper.on('blank:pointerdown', paperScroller.startPanning);

    paperScroller.$el.css({
        width: 800,
        height: 500
    });

    $app.append(paperScroller.render().el);

    // Example of centering the paper.
    paperScroller.center();
 // Toolbar buttons.

    $('#btn-center').on('click', _.bind(paperScroller.center, paperScroller));
    $('#btn-center-content').on('click', _.bind(paperScroller.centerContent, paperScroller));

    $('#btn-zoomin').on('click', function() {
        paperScroller.zoom(0.2, { max: 2 });
    });
    $('#btn-zoomout').on('click', function() {
        paperScroller.zoom(-0.2, { min: 0.2 });
    });
    $('#btn-zoomtofit').on('click', function() {
        paperScroller.zoomToFit({
            minScale: 0.2,
            maxScale: 2
        });
    });
    
    var graphLayout = new joint.layout.ForceDirected({
        graph: graph,
        width: 380, height: 280,
        gravityCenter: { x: 190, y: 145 },
        charge: 180,
        linkDistance: 30
    });
    graphLayout.start();
    
    function animate() {
        joint.util.nextFrame(animate);
        graphLayout.step();
    }

    $('#btn-layout').on('click', animate);
    
    //scroll paper
    
    //tuy chinh shape
    paper.on('cell:pointerup', function(cellView) {
        // We don't want a Halo for links.
        if (cellView.model instanceof joint.dia.Link) return;

        var halo = new joint.ui.Halo({ graph: graph, paper: paper, cellView: cellView });
        halo.render();
    });
    //chon nhieu shape
    var selection = new Backbone.Collection;
    var selectionView = new joint.ui.SelectionView({ paper: paper, graph: graph, model: selection });
    
    paper.on('blank:pointerdown', selectionView.startSelecting);

    paper.on('cell:pointerup', function(cellView, evt) {
        if ((evt.ctrlKey || evt.metaKey) && !(cellView.model instanceof joint.dia.Link)) {
            selection.add(cellView.model);
            selectionView.createSelectionBox(cellView);
        }
    });
    
    selectionView.on('selection-box:pointerdown', function(evt) {
        if (evt.ctrlKey || evt.metaKey) {
            var cell = selection.get($(evt.target).data('model'));
            selection.reset(selection.without(cell));
            selectionView.destroySelectionBox(paper.findViewByModel(cell));
        }
    });
    
    //can chinh vi tri so voi shape khac
    var snaplines = new joint.ui.Snaplines({ paper: paper });
    snaplines.startListening();

    var stencil = new joint.ui.Stencil({ 
        graph: graph, 
        paper: paper,
        width: 200,
        height: 300,
        groups: {
            simple: { label: 'Select Shapes', index: 1 }
        }
    });
    //them btn
    var commandManager = new joint.dia.CommandManager({ graph: graph });

    $('#btn-undo').on('click', _.bind(commandManager.undo, commandManager));
    $('#btn-redo').on('click', _.bind(commandManager.redo, commandManager));
    $('#btn-reset').on('click', _.bind(commandManager.reset, commandManager));
    
    $('#stencil-holder-groups').append(stencil.render().el);

    var r = new joint.shapes.basic.Rect({ 
        position: { x: 20, y: 10 }, size: { width: 50, height: 30 },
        attrs: { rect: { fill: '#2ECC71' }, text: { text: 'rect', fill: 'black' } }
    });
    var c = new joint.shapes.basic.Circle({ 
        position: { x: 100, y: 10 }, size: { width: 50, height: 30 },
        attrs: { circle: { fill: '#9B59B6' }, text: { text: 'circle', fill: 'white' } }
    });

    var t = new joint.shapes.basic.Text({
        position: { x: 20, y: 40 }, size: { width: 50, height: 30 },
        attrs: { text: { text: 'Text' } }
    });
    var p = new joint.shapes.basic.Path({
        position: { x: 100, y: 40 }, size: { width: 50, height: 50 },
        attrs: {
            path: { d: 'M16,1.466C7.973,1.466,1.466,7.973,1.466,16c0,8.027,6.507,14.534,14.534,14.534c8.027,0,14.534-6.507,14.534-14.534C30.534,7.973,24.027,1.466,16,1.466z M14.757,8h2.42v2.574h-2.42V8z M18.762,23.622H16.1c-1.034,0-1.475-0.44-1.475-1.496v-6.865c0-0.33-0.176-0.484-0.484-0.484h-0.88V12.4h2.662c1.035,0,1.474,0.462,1.474,1.496v6.887c0,0.309,0.176,0.484,0.484,0.484h0.88V23.622z' }
        }
    });
    var m1 = new joint.shapes.devs.Model({
        position: { x: 20, y: 70 },
        size: { width: 50, height: 50 },
        inPorts: ['',''],
        outPorts: [''],
        attrs: {
            '.label': { text: '', 'ref-x': .4, 'ref-y': .2 },
            rect: { fill: '#2ECC71' },
            '.inPorts circle': { fill: '#16A085' },
            '.outPorts circle': { fill: '#E74C3C' }
        }
    });

    var t = new joint.shapes.basic.Text({
        position: { x: 100, y: 70 }, size: { width: 50, height: 30 },
        attrs: { text: { text: 'Text' } }
    });
    var p = new joint.shapes.basic.Path({
        position: { x: 20, y: 130 }, size: { width: 50, height: 50 },
        attrs: {
            path: { d: 'M16,1.466C7.973,1.466,1.466,7.973,1.466,16c0,8.027,6.507,14.534,14.534,14.534c8.027,0,14.534-6.507,14.534-14.534C30.534,7.973,24.027,1.466,16,1.466z M14.757,8h2.42v2.574h-2.42V8z M18.762,23.622H16.1c-1.034,0-1.475-0.44-1.475-1.496v-6.865c0-0.33-0.176-0.484-0.484-0.484h-0.88V12.4h2.662c1.035,0,1.474,0.462,1.474,1.496v6.887c0,0.309,0.176,0.484,0.484,0.484h0.88V23.622z' }
        }
    });
    var i = new joint.shapes.basic.Image({
        position: { x: 100, y: 130 },
        size: { width: 50, height: 50 },
        attrs: {
            image: { width: 50, height: 50, 'xlink:href': 'data:image/png;base64,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' }
        }
    });
    var el1 = new joint.shapes.custom.ElementLabelLink({
        position: { x: 20, y: 200 }, size: { width: 150, height: 70 },
        attrs: {
            rect: { fill: '#2ECC71'},
            a: { 'xlink:href': 'http://www.google.com.vn', cursor: 'pointer' },
            text: { text: 'Element as a link:\nhttp://www.google.com', fill: 'white' }
        }
    });
    
    
    stencil.load([r, c, t, p, i, m1, el1], 'simple');
    
}())