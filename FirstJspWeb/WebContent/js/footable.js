(function(e, t, n) {
	function i() {
		var e = this;
		e.id = null;
		e.busy = false;
		e.start = function(t, n) {
			if (e.busy) {
				return
			}
			e.stop();
			e.id = setTimeout(function() {
				t();
				e.id = null;
				e.busy = false
			}, n);
			e.busy = true
		};
		e.stop = function() {
			if (e.id !== null) {
				clearTimeout(e.id);
				e.id = null;
				e.busy = false
			}
		}
	}
	function s(n, r, s) {
		var o = this;
		o.id = s;
		o.table = n;
		o.options = r;
		o.breakpoints = [];
		o.breakpointNames = "";
		o.columns = {};
		o.plugins = t.footable.plugins.load(o);
		var u = o.options, a = u.classes, f = u.events, l = u.triggers, c = 0;
		o.timers = {
			resize : new i,
			register : function(e) {
				o.timers[e] = new i;
				return o.timers[e]
			}
		};
		o.init = function() {
			var n = e(t), r = e(o.table);
			t.footable.plugins.init(o);
			if (r.hasClass(a.loaded)) {
				o.raise(f.alreadyInitialized);
				return
			}
			o.raise(f.initializing);
			r.addClass(a.loading);
			r.find(u.columnDataSelector).each(function() {
				var e = o.getColumnData(this);
				o.columns[e.index] = e
			});
			for ( var i in u.breakpoints) {
				o.breakpoints.push({
					name : i,
					width : u.breakpoints[i]
				});
				o.breakpointNames += i + " "
			}
			o.breakpoints.sort(function(e, t) {
				return e["width"] - t["width"]
			});
			r.unbind(l.initialize).bind(l.initialize, function() {
				r.removeData("footable_info");
				r.data("breakpoint", "");
				r.trigger(l.resize);
				r.removeClass(a.loading);
				r.addClass(a.loaded).addClass(a.main);
				o.raise(f.initialized)
			}).unbind(l.redraw).bind(l.redraw, function() {
				o.redraw()
			}).unbind(l.resize).bind(l.resize, function() {
				o.resize()
			}).unbind(l.expandFirstRow).bind(
					l.expandFirstRow,
					function() {
						r.find(u.toggleSelector).first()
								.not("." + a.detailShow).trigger(l.toggleRow)
					});
			r.trigger(l.initialize);
			n.bind("resize.footable", function() {
				o.timers.resize.stop();
				o.timers.resize.start(function() {
					o.raise(l.resize)
				}, u.delay)
			})
		};
		o.addRowToggle = function() {
			if (!u.addRowToggle)
				return;
			var t = e(o.table), n = false;
			t.find("span." + a.toggle).remove();
			for ( var r in o.columns) {
				var i = o.columns[r];
				if (i.toggle) {
					n = true;
					var s = "> tbody > tr:not(." + a.detail + ",." + a.disabled
							+ ") > td:nth-child(" + (parseInt(i.index, 10) + 1)
							+ ")";
					t.find(s).not("." + a.detailCell).prepend(
							e(u.toggleHTMLElement).addClass(a.toggle));
					return
				}
			}
			if (!n) {
				t.find(
						"> tbody > tr:not(." + a.detail + ",." + a.disabled
								+ ") > td:first-child").not("." + a.detailCell)
						.prepend(e(u.toggleHTMLElement).addClass(a.toggle))
			}
		};
		o.setColumnClasses = function() {
			$table = e(o.table);
			for ( var t in o.columns) {
				var n = o.columns[t];
				if (n.className !== null) {
					var r = "", i = true;
					e.each(n.matches, function(e, t) {
						if (!i)
							r += ", ";
						r += "> tbody > tr:not(." + a.detail
								+ ") > td:nth-child(" + (parseInt(t, 10) + 1)
								+ ")";
						i = false
					});
					$table.find(r).not("." + a.detailCell)
							.addClass(n.className)
				}
			}
		};
		o.bindToggleSelectors = function() {
			var t = e(o.table);
			if (!o.hasAnyBreakpointColumn())
				return;
			t.find(u.toggleSelector).unbind(l.toggleRow).bind(
					l.toggleRow,
					function(t) {
						var n = e(this).is("tr") ? e(this) : e(this).parents(
								"tr:first");
						o.toggleDetail(n.get(0))
					});
			t.find(u.toggleSelector).unbind("click.footable").bind(
					"click.footable",
					function(n) {
						if (t.is(".breakpoint")
								&& e(n.target).is("td,." + a.toggle)) {
							e(this).trigger(l.toggleRow)
						}
					})
		};
		o.parse = function(e, t) {
			var n = u.parsers[t.type] || u.parsers.alpha;
			return n(e)
		};
		o.getColumnData = function(t) {
			var n = e(t), r = n.data("hide"), i = n.index();
			r = r || "";
			r = jQuery.map(r.split(","), function(e) {
				return jQuery.trim(e)
			});
			var s = {
				index : i,
				hide : {},
				type : n.data("type") || "alpha",
				name : n.data("name") || e.trim(n.text()),
				ignore : n.data("ignore") || false,
				toggle : n.data("toggle") || false,
				className : n.data("class") || null,
				matches : [],
				names : {},
				group : n.data("group") || null,
				groupName : null
			};
			if (s.group !== null) {
				var a = e(o.table)
						.find(
								'> thead > tr.footable-group-row > th[data-group="'
										+ s.group
										+ '"], > thead > tr.footable-group-row > td[data-group="'
										+ s.group + '"]').first();
				s.groupName = o.parse(a, {
					type : "alpha"
				})
			}
			var l = parseInt(n.prev().attr("colspan") || 0, 10);
			c += l > 1 ? l - 1 : 0;
			var h = parseInt(n.attr("colspan") || 0, 10), p = s.index + c;
			if (h > 1) {
				var d = n.data("names");
				d = d || "";
				d = d.split(",");
				for (var v = 0; v < h; v++) {
					s.matches.push(v + p);
					if (v < d.length)
						s.names[v + p] = d[v]
				}
			} else {
				s.matches.push(p)
			}
			s.hide["default"] = n.data("hide") === "all"
					|| e.inArray("default", r) >= 0;
			var m = false;
			for ( var g in u.breakpoints) {
				s.hide[g] = n.data("hide") === "all" || e.inArray(g, r) >= 0;
				m = m || s.hide[g]
			}
			s.hasBreakpoint = m;
			var y = o.raise(f.columnData, {
				column : {
					data : s,
					th : t
				}
			});
			return y.column.data
		};
		o.getViewportWidth = function() {
			return window.innerWidth
					|| (document.body ? document.body.offsetWidth : 0)
		};
		o.calculateWidth = function(e, t) {
			if (jQuery.isFunction(u.calculateWidthOverride)) {
				return u.calculateWidthOverride(e, t)
			}
			if (t.viewportWidth < t.width)
				t.width = t.viewportWidth;
			if (t.parentWidth < t.width)
				t.width = t.parentWidth;
			return t
		};
		o.hasBreakpointColumn = function(e) {
			for ( var t in o.columns) {
				if (o.columns[t].hide[e]) {
					if (o.columns[t].ignore) {
						continue
					}
					return true
				}
			}
			return false
		};
		o.hasAnyBreakpointColumn = function() {
			for ( var e in o.columns) {
				if (o.columns[e].hasBreakpoint) {
					return true
				}
			}
			return false
		};
		o.resize = function() {
			var t = e(o.table);
			if (!t.is(":visible")) {
				return
			}
			if (!o.hasAnyBreakpointColumn()) {
				return
			}
			var n = {
				width : t.width(),
				viewportWidth : o.getViewportWidth(),
				parentWidth : t.parent().width()
			};
			n = o.calculateWidth(t, n);
			var r = t.data("footable_info");
			t.data("footable_info", n);
			o.raise(f.resizing, {
				old : r,
				info : n
			});
			if (!r || r && r.width && r.width !== n.width) {
				var i = null, s;
				for (var u = 0; u < o.breakpoints.length; u++) {
					s = o.breakpoints[u];
					if (s && s.width && n.width <= s.width) {
						i = s;
						break
					}
				}
				var a = i === null ? "default" : i["name"], c = o
						.hasBreakpointColumn(a), h = t.data("breakpoint");
				t.data("breakpoint", a).removeClass("default breakpoint")
						.removeClass(o.breakpointNames).addClass(
								a + (c ? " breakpoint" : ""));
				if (a !== h) {
					t.trigger(l.redraw);
					o.raise(f.breakpoint, {
						breakpoint : a,
						info : n
					})
				}
			}
			o.raise(f.resized, {
				old : r,
				info : n
			})
		};
		o.redraw = function() {
			o.addRowToggle();
			o.bindToggleSelectors();
			o.setColumnClasses();
			var t = e(o.table), n = t.data("breakpoint"), r = o
					.hasBreakpointColumn(n);
			t
					.find("> tbody > tr:not(." + a.detail + ")")
					.data("detail_created", false)
					.end()
					.find("> thead > tr:last-child > th")
					.each(
							function() {
								var r = o.columns[e(this).index()], i = "", s = true;
								e.each(r.matches, function(e, t) {
									if (!s) {
										i += ", "
									}
									var n = t + 1;
									i += "> tbody > tr:not(." + a.detail
											+ ") > td:nth-child(" + n + ")";
									i += ", > tfoot > tr:not(." + a.detail
											+ ") > td:nth-child(" + n + ")";
									i += ", > colgroup > col:nth-child(" + n
											+ ")";
									s = false
								});
								i += ', > thead > tr[data-group-row="true"] > th[data-group="'
										+ r.group + '"]';
								var u = t.find(i).add(this);
								if (r.hide[n] === false)
									u.show();
								else
									u.hide();
								if (t.find("> thead > tr.footable-group-row").length === 1) {
									var f = t
											.find('> thead > tr:last-child > th[data-group="'
													+ r.group
													+ '"]:visible, > thead > tr:last-child > th[data-group="'
													+ r.group + '"]:visible'), l = t
											.find('> thead > tr.footable-group-row > th[data-group="'
													+ r.group
													+ '"], > thead > tr.footable-group-row > td[data-group="'
													+ r.group + '"]'), c = 0;
									e.each(f, function() {
										c += parseInt(
												e(this).attr("colspan") || 1,
												10)
									});
									if (c > 0)
										l.attr("colspan", c).show();
									else
										l.hide()
								}
							}).end().find("> tbody > tr." + a.detailShow).each(
							function() {
								o.createOrUpdateDetailRow(this)
							});
			t.find("> tbody > tr." + a.detailShow + ":visible").each(
					function() {
						var t = e(this).next();
						if (t.hasClass(a.detail)) {
							if (!r)
								t.hide();
							else
								t.show()
						}
					});
			t
					.find(
							"> thead > tr > th.footable-last-column, > tbody > tr > td.footable-last-column")
					.removeClass("footable-last-column");
			t
					.find(
							"> thead > tr > th.footable-first-column, > tbody > tr > td.footable-first-column")
					.removeClass("footable-first-column");
			t.find("> thead > tr, > tbody > tr").find(
					"> th:visible:last, > td:visible:last").addClass(
					"footable-last-column").end().find(
					"> th:visible:first, > td:visible:first").addClass(
					"footable-first-column");
			o.raise(f.redrawn)
		};
		o.toggleDetail = function(t) {
			var n = t.jquery ? t : e(t), r = n.next();
			if (n.hasClass(a.detailShow)) {
				n.removeClass(a.detailShow);
				if (r.hasClass(a.detail))
					r.hide();
				o.raise(f.rowCollapsed, {
					row : n[0]
				})
			} else {
				o.createOrUpdateDetailRow(n[0]);
				n.addClass(a.detailShow);
				n.next().show();
				o.raise(f.rowExpanded, {
					row : n[0]
				})
			}
		};
		o.removeRow = function(t) {
			var n = t.jquery ? t : e(t);
			if (n.hasClass(a.detail)) {
				n = n.prev()
			}
			var r = n.next();
			if (n.data("detail_created") === true) {
				r.remove()
			}
			n.remove();
			o.raise(f.rowRemoved)
		};
		o.appendRow = function(t) {
			var n = t.jquery ? t : e(t);
			e(o.table).find("tbody").append(n);
			o.redraw()
		};
		o.getColumnFromTdIndex = function(t) {
			var n = null;
			for ( var r in o.columns) {
				if (e.inArray(t, o.columns[r].matches) >= 0) {
					n = o.columns[r];
					break
				}
			}
			return n
		};
		o.createOrUpdateDetailRow = function(t) {
			var n = e(t), r = n.next(), i, s = [];
			if (n.data("detail_created") === true)
				return true;
			if (n.is(":hidden"))
				return false;
			o.raise(f.rowDetailUpdating, {
				row : n,
				detail : r
			});
			n.find("> td:hidden")
					.each(
							function() {
								var t = e(this).index(), n = o
										.getColumnFromTdIndex(t), r = n.name;
								if (n.ignore === true)
									return true;
								if (t in n.names)
									r = n.names[t];
								s.push({
									name : r,
									value : o.parse(this, n),
									display : e.trim(e(this).html()),
									group : n.group,
									groupName : n.groupName
								});
								return true
							});
			if (s.length === 0)
				return false;
			var l = n.find("> td:visible").length;
			var c = r.hasClass(a.detail);
			if (!c) {
				r = e('<tr class="' + a.detail + '"><td class="' + a.detailCell
						+ '"><div class="' + a.detailInner
						+ '"></div></td></tr>');
				n.after(r)
			}
			r.find("> td:first").attr("colspan", l);
			i = r.find("." + a.detailInner).empty();
			u.createDetail(i, s, u.createGroupedDetail, u.detailSeparator, a);
			n.data("detail_created", true);
			o.raise(f.rowDetailUpdated, {
				row : n,
				detail : r
			});
			return !c
		};
		o.raise = function(t, n) {
			if (o.options.debug === true && e.isFunction(o.options.log))
				o.options.log(t, "event");
			n = n || {};
			var r = {
				ft : o
			};
			e.extend(true, r, n);
			var i = e.Event(t, r);
			if (!i.ft) {
				e.extend(true, i, r)
			}
			e(o.table).trigger(i);
			return i
		};
		o.reset = function() {
			var t = e(o.table);
			t.removeData("footable_info").data("breakpoint", "").removeClass(
					a.loading).removeClass(a.loaded);
			t.find(u.toggleSelector).unbind(l.toggleRow).unbind(
					"click.footable");
			t.find("> tbody > tr").removeClass(a.detailShow);
			t.find("> tbody > tr." + a.detail).remove();
			o.raise(f.reset)
		};
		o.init();
		return o
	}
	t.footable = {
		options : {
			delay : 100,
			breakpoints : {
				phone : 480,
				tablet : 1024
			},
			parsers : {
				alpha : function(t) {
					return e(t).data("value") || e.trim(e(t).text())
				},
				numeric : function(t) {
					var n = e(t).data("value")
							|| e(t).text().replace(/[^0-9.\-]/g, "");
					n = parseFloat(n);
					if (isNaN(n))
						n = 0;
					return n
				}
			},
			addRowToggle : true,
			calculateWidthOverride : null,
			toggleSelector : " > tbody > tr:not(.footable-row-detail)",
			columnDataSelector : "> thead > tr:last-child > th, > thead > tr:last-child > td",
			detailSeparator : ":",
			toggleHTMLElement : "<span />",
			createGroupedDetail : function(e) {
				var t = {
					_none : {
						name : null,
						data : []
					}
				};
				for (var n = 0; n < e.length; n++) {
					var r = e[n].group;
					if (r !== null) {
						if (!(r in t))
							t[r] = {
								name : e[n].groupName || e[n].group,
								data : []
							};
						t[r].data.push(e[n])
					} else {
						t._none.data.push(e[n])
					}
				}
				return t
			},
			createDetail : function(e, t, n, r, i) {
				var s = n(t);
				for ( var o in s) {
					if (s[o].data.length === 0)
						continue;
					if (o !== "_none")
						e.append('<div class="' + i.detailInnerGroup + '">'
								+ s[o].name + "</div>");
					for (var u = 0; u < s[o].data.length; u++) {
						var a = s[o].data[u].name ? r : "";
						e.append('<div class="' + i.detailInnerRow
								+ '"><div class="' + i.detailInnerName + '">'
								+ s[o].data[u].name + a + '</div><div class="'
								+ i.detailInnerValue + '">'
								+ s[o].data[u].display + "</div></div>")
					}
				}
			},
			classes : {
				main : "footable",
				loading : "footable-loading",
				loaded : "footable-loaded",
				toggle : "footable-toggle",
				disabled : "footable-disabled",
				detail : "footable-row-detail",
				detailCell : "footable-row-detail-cell",
				detailInner : "footable-row-detail-inner",
				detailInnerRow : "footable-row-detail-row",
				detailInnerGroup : "footable-row-detail-group",
				detailInnerName : "footable-row-detail-name",
				detailInnerValue : "footable-row-detail-value",
				detailShow : "footable-detail-show"
			},
			triggers : {
				initialize : "footable_initialize",
				resize : "footable_resize",
				redraw : "footable_redraw",
				toggleRow : "footable_toggle_row",
				expandFirstRow : "footable_expand_first_row"
			},
			events : {
				alreadyInitialized : "footable_already_initialized",
				initializing : "footable_initializing",
				initialized : "footable_initialized",
				resizing : "footable_resizing",
				resized : "footable_resized",
				redrawn : "footable_redrawn",
				breakpoint : "footable_breakpoint",
				columnData : "footable_column_data",
				rowDetailUpdating : "footable_row_detail_updating",
				rowDetailUpdated : "footable_row_detail_updated",
				rowCollapsed : "footable_row_collapsed",
				rowExpanded : "footable_row_expanded",
				rowRemoved : "footable_row_removed",
				reset : "footable_reset"
			},
			debug : false,
			log : null
		},
		version : {
			major : 0,
			minor : 5,
			toString : function() {
				return t.footable.version.major + "."
						+ t.footable.version.minor
			},
			parse : function(e) {
				version = /(\d+)\.?(\d+)?\.?(\d+)?/.exec(e);
				return {
					major : parseInt(version[1], 10) || 0,
					minor : parseInt(version[2], 10) || 0,
					patch : parseInt(version[3], 10) || 0
				}
			}
		},
		plugins : {
			_validate : function(n) {
				if (!e.isFunction(n)) {
					if (t.footable.options.debug === true)
						console
								.error(
										'Validation failed, expected type "function", received type "{0}".',
										typeof n);
					return false
				}
				var r = new n;
				if (typeof r["name"] !== "string") {
					if (t.footable.options.debug === true)
						console
								.error(
										'Validation failed, plugin does not implement a string property called "name".',
										r);
					return false
				}
				if (!e.isFunction(r["init"])) {
					if (t.footable.options.debug === true)
						console
								.error(
										'Validation failed, plugin "'
												+ r["name"]
												+ '" does not implement a function called "init".',
										r);
					return false
				}
				if (t.footable.options.debug === true)
					console.log('Validation succeeded for plugin "' + r["name"]
							+ '".', r);
				return true
			},
			registered : [],
			register : function(n, r) {
				if (t.footable.plugins._validate(n)) {
					t.footable.plugins.registered.push(n);
					if (typeof r === "object")
						e.extend(true, t.footable.options, r)
				}
			},
			load : function(e) {
				var n = [], r, i;
				for (i = 0; i < t.footable.plugins.registered.length; i++) {
					try {
						r = t.footable.plugins.registered[i];
						n.push(new r(e))
					} catch (s) {
						if (t.footable.options.debug === true)
							console.error(s)
					}
				}
				return n
			},
			init : function(e) {
				for (var n = 0; n < e.plugins.length; n++) {
					try {
						e.plugins[n]["init"](e)
					} catch (r) {
						if (t.footable.options.debug === true)
							console.error(r)
					}
				}
			}
		}
	};
	var r = 0;
	e.fn.footable = function(n) {
		n = n || {};
		var i = e.extend(true, {}, t.footable.options, n);
		return this.each(function() {
			r++;
			var t = new s(this, i, r);
			e(this).data("footable", t)
		})
	}
})(jQuery, window)