/*
Copyright (c) 2008-2017, www.redips.net All rights reserved.
Code licensed under the BSD License: http://www.redips.net/license/
http://www.redips.net/javascript/drag-and-drop-table-content/
Version 5.2.4
Apr 16, 2017.
*/
var REDIPS = REDIPS || {};
REDIPS.drag = function () {
    var s, A, M, Da, Sa, Ta, fa, ga, ma, Ea, Fa, W, na, Ga, $, oa, aa, Ha, B, w, N, pa, qa, ra, Ia, sa, Ja, H, t, Ka, Ua, ta, La, ha, ia, ua, Va, Wa, Ma, Na, va, wa, xa, ja, Oa, Xa, ba, Ya, p = null,
        Za = /\bredips-drag\b/i,
        J = 0,
        K = 0,
        ya = null,
        za = null,
        O = [],
        u = null,
        P = 0,
        Q = 0,
        S = 0,
        T = 0,
        U = 0,
        V = 0,
        ca, g = [],
        da, Aa, q, L = [],
        n = [],
        y = null,
        F = null,
        X = 0,
        Y = 0,
        $a = 0,
        ab = 0,
        ka = !1,
        Pa = !1,
        ea = !1,
        Ba = [],
        Ca, I, h = null,
        x = null,
        C = null,
        j = null,
        z = null,
        R = null,
        l = null,
        D = null,
        Z = null,
        i = !1,
        m = !1,
        v = "cell",
        la = {
            div: {},
            divClass: {},
            cname: "redips-only",
            other: "deny"
        },
        Qa = {
            action: "deny",
            cname: "redips-mark",
            exception: {},
            exceptionClass: {}
        },
        k = {},
        bb = {
            keyDiv: !1,
            keyRow: !1,
            sendBack: !1,
            drop: !1
        };
    M = function () {
        return !1
    };
    s = function (a) {
        var c, b, d, e, f;
        g.length = 0;
        e = void 0 === a ? y.getElementsByTagName("table") : document.querySelectorAll(a);
        for (c = a = 0; a < e.length; a++)
            if (!("redips_clone" === e[a].parentNode.id || -1 < e[a].className.indexOf("redips-nolayout"))) {
                b = e[a].parentNode;
                d = 0;
                do "TD" === b.nodeName && d++, b = b.parentNode; while (b && b !== y);
                g[c] = e[a];
                g[c].redips || (g[c].redips = {});
                g[c].redips.container = y;
                g[c].redips.nestedLevel = d;
                g[c].redips.idx =
                    c;
                Ba[c] = 0;
                d = g[c].getElementsByTagName("td");
                b = 0;
                for (f = !1; b < d.length; b++)
                    if (1 < d[b].rowSpan) {
                        f = !0;
                        break
                    }
                g[c].redips.rowspan = f;
                c++
            }
        a = 0;
        for (e = da = 1; a < g.length; a++)
            if (0 === g[a].redips.nestedLevel) {
                g[a].redips.nestedGroup = e;
                g[a].redips.sort = 100 * da;
                b = g[a].getElementsByTagName("table");
                for (c = 0; c < b.length; c++) - 1 < b[c].className.indexOf("redips-nolayout") || (b[c].redips.nestedGroup = e, b[c].redips.sort = 100 * da + b[c].redips.nestedLevel);
                e++;
                da++
            }
    };
    Da = function (a) {
        var c = a || window.event,
            b, d;
        if (!0 === this.redips.animated) return !0;
        c.cancelBubble = !0;
        c.stopPropagation && c.stopPropagation();
        Pa = c.shiftKey;
        a = c.which ? c.which : c.button;
        if (Ja(c) || !c.touches && 1 !== a) return !0;
        if (window.getSelection) window.getSelection().removeAllRanges();
        else if (document.selection && "Text" === document.selection.type) try {
            document.selection.empty()
        } catch (e) {}
        c.touches ? (a = X = c.touches[0].clientX, d = Y = c.touches[0].clientY) : (a = X = c.clientX, d = Y = c.clientY);
        $a = a;
        ab = d;
        ka = !1;
        REDIPS.drag.objOld = m = i || this;
        REDIPS.drag.obj = i = this;
        ea = -1 < i.className.indexOf("redips-clone");
        REDIPS.drag.tableSort && Ta(i);
        y !== i.redips.container && (y = i.redips.container, s());
        w();
        !ea && "cell" === v && (i.style.zIndex = 999);
        REDIPS.drag.td.source = k.source = t("TD", i) || t("TH", i);
        REDIPS.drag.td.current = k.current = k.source;
        REDIPS.drag.td.previous = k.previous = k.source;
        h = C = x = g.indexOf(t("TABLE", k.source));
        j = R = z = t("TR", k.source).rowIndex;
        l = Z = D = k.source.cellIndex;
        b = H(g[C], "position");
        "fixed" !== b && (b = H(g[C].parentNode, "position"));
        n = B(k.current, b); - 1 === i.className.indexOf("row") ? (REDIPS.drag.mode = v = "cell", REDIPS.drag.event.clicked(k.current)) :
            (REDIPS.drag.mode = v = "row", REDIPS.drag.obj = i = ja(i), REDIPS.drag.event.rowClicked(k.current));
        if (!1 === g[h].redips.enabled) return !0;
        Aa = q = !1;
        REDIPS.event.add(document, "mousemove", ga);
        REDIPS.event.add(document, "touchmove", ga);
        REDIPS.event.add(document, "mouseup", fa);
        REDIPS.event.add(document, "touchend", fa);
        i.setCapture && i.setCapture();
        null !== h && (null !== j && null !== l) && (ca = Ha(h, j, l));
        b = B(i, b);
        p = [d - b[0], b[1] - a, b[2] - d, a - b[3]];
        y.onselectstart = function (a) {
            c = a || window.event;
            if (!Ja(c)) {
                c.shiftKey && document.selection.clear();
                return false
            }
        };
        return !1
    };
    Sa = function () {
        REDIPS.drag.event.dblClicked()
    };
    Ta = function (a) {
        var c;
        c = t("TABLE", a).redips.nestedGroup;
        for (a = 0; a < g.length; a++) g[a].redips.nestedGroup === c && (g[a].redips.sort = 100 * da + g[a].redips.nestedLevel);
        g.sort(function (a, c) {
            return c.redips.sort - a.redips.sort
        });
        da++
    };
    ja = function (a, c) {
        var b, d, e, f, o, g;
        if ("DIV" === a.nodeName) return f = a, a = t("TR", a), void 0 === a.redips && (a.redips = {}), a.redips.div = f, a;
        d = a;
        void 0 === d.redips && (d.redips = {});
        a = t("TABLE", a);
        ea && q && (f = d.redips.div, f.className =
            ba(f.className.replace("redips-clone", "")));
        b = a.cloneNode(!0);
        ea && q && (f.className += " redips-clone");
        e = b.rows.length - 1;
        f = "animated" === c ? 0 === e : !0;
        for (o = e; 0 <= o; o--)
            if (o !== d.rowIndex) {
                if (!0 === f && void 0 === c) {
                    e = b.rows[o];
                    for (g = 0; g < e.cells.length; g++)
                        if (-1 < e.cells[g].className.indexOf("redips-rowhandler")) {
                            f = !1;
                            break
                        }
                }
                b.deleteRow(o)
            }
        q || (d.redips.emptyRow = f);
        b.redips = {};
        b.redips.container = a.redips.container;
        b.redips.sourceRow = d;
        Xa(d, b.rows[0]);
        Ia(d, b.rows[0]);
        document.getElementById("redips_clone").appendChild(b);
        d = B(d, "fixed");
        b.style.position = "fixed";
        b.style.top = d[0] + "px";
        b.style.left = d[3] + "px";
        b.style.width = d[1] - d[3] + "px";
        return b
    };
    Oa = function (a, c, b) {
        var d = !1,
            e, f, o, r, G, Ra, E, j;
        j = function (a) {
            var b;
            void 0 === a.redips || !a.redips.emptyRow ? (b = t("TABLE", a), b.deleteRow(a.rowIndex)) : xa(a, "empty", REDIPS.drag.style.rowEmptyColor)
        };
        void 0 === b ? b = i : d = !0;
        e = b.redips.sourceRow;
        f = e.rowIndex;
        o = t("TABLE", e);
        r = e.parentNode;
        a = g[a];
        c > a.rows.length - 1 && (c = a.rows.length - 1);
        G = a.rows[c];
        Ra = c;
        E = G.parentNode;
        c = b.getElementsByTagName("tr")[0];
        b.parentNode.removeChild(b);
        !1 !== REDIPS.drag.event.rowDroppedBefore(o, f) && (!d && -1 < k.target.className.indexOf(REDIPS.drag.trash.className) ? q ? REDIPS.drag.event.rowDeleted() : REDIPS.drag.trash.questionRow ? confirm(REDIPS.drag.trash.questionRow) ? (j(e), REDIPS.drag.event.rowDeleted()) : (delete m.redips.emptyRow, REDIPS.drag.event.rowUndeleted()) : (j(e), REDIPS.drag.event.rowDeleted()) : (Ra < a.rows.length ? h === C ? f > Ra ? E.insertBefore(c, G) : E.insertBefore(c, G.nextSibling) : "after" === REDIPS.drag.rowDropMode ? E.insertBefore(c,
            G.nextSibling) : E.insertBefore(c, G) : (E.appendChild(c), G = a.rows[0]), G && G.redips && G.redips.emptyRow ? a.deleteRow(G.rowIndex) : "overwrite" === REDIPS.drag.rowDropMode ? j(G) : "switch" === REDIPS.drag.rowDropMode && !q && (r.insertBefore(G, e), void 0 !== e.redips && delete e.redips.emptyRow), (d || !q) && j(e), delete c.redips.emptyRow, d || REDIPS.drag.event.rowDropped(c, o, f)), 0 < c.getElementsByTagName("table").length && s())
    };
    Xa = function (a, c) {
        var b, d, e, f = [],
            o = [];
        f[0] = a.getElementsByTagName("input");
        f[1] = a.getElementsByTagName("textarea");
        f[2] = a.getElementsByTagName("select");
        o[0] = c.getElementsByTagName("input");
        o[1] = c.getElementsByTagName("textarea");
        o[2] = c.getElementsByTagName("select");
        for (b = 0; b < f.length; b++)
            for (d = 0; d < f[b].length; d++) switch (e = f[b][d].type, e) {
                case "text":
                case "textarea":
                case "password":
                    o[b][d].value = f[b][d].value;
                    break;
                case "radio":
                case "checkbox":
                    o[b][d].checked = f[b][d].checked;
                    break;
                case "select-one":
                    o[b][d].selectedIndex = f[b][d].selectedIndex;
                    break;
                case "select-multiple":
                    for (e = 0; e < f[b][d].options.length; e++) o[b][d].options[e].selected =
                        f[b][d].options[e].selected
            }
    };
    fa = function (a) {
        var c = a || window.event,
            b, d, e, a = c.clientX;
        e = c.clientY;
        U = V = 0;
        i.releaseCapture && i.releaseCapture();
        REDIPS.event.remove(document, "mousemove", ga);
        REDIPS.event.remove(document, "touchmove", ga);
        REDIPS.event.remove(document, "mouseup", fa);
        REDIPS.event.remove(document, "touchend", fa);
        y.onselectstart = null;
        Fa(i);
        ya = document.documentElement.scrollWidth;
        za = document.documentElement.scrollHeight;
        U = V = 0;
        if (q && "cell" === v && (null === h || null === j || null === l)) i.parentNode.removeChild(i),
            L[m.id] -= 1, REDIPS.drag.event.notCloned();
        else if (null === h || null === j || null === l) REDIPS.drag.event.notMoved();
        else {
            h < g.length ? (c = g[h], REDIPS.drag.td.target = k.target = c.rows[j].cells[l], aa(h, j, l, ca), b = h, d = j) : null === x || null === z || null === D ? (c = g[C], REDIPS.drag.td.target = k.target = c.rows[R].cells[Z], aa(C, R, Z, ca), b = C, d = R) : (c = g[x], REDIPS.drag.td.target = k.target = c.rows[z].cells[D], aa(x, z, D, ca), b = x, d = z);
            if ("row" === v)
                if (Aa)
                    if (C === b && R === d) {
                        c = i.getElementsByTagName("tr")[0];
                        m.style.backgroundColor = c.style.backgroundColor;
                        for (a = 0; a < c.cells.length; a++) m.cells[a].style.backgroundColor = c.cells[a].style.backgroundColor;
                        i.parentNode.removeChild(i);
                        delete m.redips.emptyRow;
                        q ? REDIPS.drag.event.rowNotCloned() : REDIPS.drag.event.rowDroppedSource(k.target)
                    } else Oa(b, d);
            else REDIPS.drag.event.rowNotMoved();
            else if (!q && !ka) REDIPS.drag.event.notMoved();
            else if (q && C === h && R === j && Z === l) i.parentNode.removeChild(i), L[m.id] -= 1, REDIPS.drag.event.notCloned();
            else if (q && !1 === REDIPS.drag.clone.drop && (a < c.redips.offset[3] || a > c.redips.offset[1] ||
                    e < c.redips.offset[0] || e > c.redips.offset[2])) i.parentNode.removeChild(i), L[m.id] -= 1, REDIPS.drag.event.notCloned();
            else if (-1 < k.target.className.indexOf(REDIPS.drag.trash.className)) i.parentNode.removeChild(i), REDIPS.drag.trash.question ? setTimeout(function () {
                if (confirm(REDIPS.drag.trash.question)) Ea();
                else {
                    if (!q) {
                        g[C].rows[R].cells[Z].appendChild(i);
                        w()
                    }
                    REDIPS.drag.event.undeleted()
                }
            }, 20) : Ea();
            else if ("switch" === REDIPS.drag.dropMode)
                if (a = REDIPS.drag.event.droppedBefore(k.target), !1 === a) ma(!1);
                else {
                    i.parentNode.removeChild(i);
                    c = k.target.getElementsByTagName("div");
                    b = c.length;
                    for (a = 0; a < b; a++) void 0 !== c[0] && (REDIPS.drag.objOld = m = c[0], k.source.appendChild(m), W(m));
                    ma();
                    b && REDIPS.drag.event.switched()
                }
            else "overwrite" === REDIPS.drag.dropMode ? (a = REDIPS.drag.event.droppedBefore(k.target), !1 !== a && ia(k.target)) : a = REDIPS.drag.event.droppedBefore(k.target), ma(a);
            "cell" === v && 0 < i.getElementsByTagName("table").length && s();
            w();
            REDIPS.drag.event.finish()
        }
        x = z = D = null
    };
    ma = function (a) {
        var c = null,
            b;
        if (!1 !== a) {
            if (!0 === bb.sendBack) {
                a = k.target.getElementsByTagName("DIV");
                for (b = 0; b < a.length; b++)
                    if (i !== a[b] && 0 === i.id.indexOf(a[b].id)) {
                        c = a[b];
                        break
                    }
                if (c) {
                    sa(c, 1);
                    i.parentNode.removeChild(i);
                    return
                }
            }
            "shift" === REDIPS.drag.dropMode && (Ya(k.target) || "always" === REDIPS.drag.shift.after) && ua(k.source, k.target);
            "top" === REDIPS.drag.multipleDrop && k.target.hasChildNodes() ? k.target.insertBefore(i, k.target.firstChild) : k.target.appendChild(i);
            W(i);
            REDIPS.drag.event.dropped(k.target);
            q && (REDIPS.drag.event.clonedDropped(k.target), sa(m, -1))
        } else q && i.parentNode && i.parentNode.removeChild(i)
    };
    W = function (a, c) {
        !1 === c ? (a.onmousedown = null, a.ontouchstart = null, a.ondblclick = null) : (a.onmousedown = Da, a.ontouchstart = Da, a.ondblclick = Sa)
    };
    Fa = function (a) {
        a.style.top = "";
        a.style.left = "";
        a.style.position = "";
        a.style.zIndex = ""
    };
    Ea = function () {
        var a;
        q && sa(m, -1);
        if ("shift" === REDIPS.drag.dropMode && ("delete" === REDIPS.drag.shift.after || "always" === REDIPS.drag.shift.after)) {
            switch (REDIPS.drag.shift.mode) {
                case "vertical2":
                    a = "lastInColumn";
                    break;
                case "horizontal2":
                    a = "lastInRow";
                    break;
                default:
                    a = "last"
            }
            ua(k.source,
                Ka(a, k.source)[2])
        }
        REDIPS.drag.event.deleted(q)
    };
    ga = function (a) {
        var a = a || window.event,
            c = REDIPS.drag.scroll.bound,
            b, d, e, f;
        a.touches ? (d = X = a.touches[0].clientX, e = Y = a.touches[0].clientY) : (d = X = a.clientX, e = Y = a.clientY);
        b = Math.abs($a - d);
        f = Math.abs(ab - e);
        if (!Aa) {
            if ("cell" === v && (ea || !0 === REDIPS.drag.clone.keyDiv && Pa)) REDIPS.drag.objOld = m = i, REDIPS.drag.obj = i = ra(i, !0), q = !0, REDIPS.drag.event.cloned();
            else {
                if ("row" === v) {
                    if (ea || !0 === REDIPS.drag.clone.keyRow && Pa) q = !0;
                    REDIPS.drag.objOld = m = i;
                    REDIPS.drag.obj = i = ja(i);
                    i.style.zIndex = 999
                }
                i.setCapture && i.setCapture();
                i.style.position = "fixed";
                w();
                $();
                "row" === v && (q ? REDIPS.drag.event.rowCloned() : REDIPS.drag.event.rowMoved())
            }
            oa();
            d > J - p[1] && (i.style.left = J - (p[1] + p[3]) + "px");
            e > K - p[2] && (i.style.top = K - (p[0] + p[2]) + "px")
        }
        Aa = !0;
        if ("cell" === v && (7 < b || 7 < f) && !ka) ka = !0, oa(), REDIPS.drag.event.moved(q);
        d > p[3] && d < J - p[1] && (i.style.left = d - p[3] + "px");
        e > p[0] && e < K - p[2] && (i.style.top = e - p[0] + "px");
        if (d < F[1] && d > F[3] && e < F[2] && e > F[0] && 0 === U && 0 === V && (n.containTable || d < n[3] || d > n[1] || e < n[0] ||
                e > n[2])) $(), na();
        if (REDIPS.drag.scroll.enable) {
            P = c - (J / 2 > d ? d - p[3] : J - d - p[1]);
            if (0 < P) {
                if (P > c && (P = c), b = N()[0], P *= d < J / 2 ? -1 : 1, !(0 > P && 0 >= b || 0 < P && b >= ya - J) && 0 === U++) REDIPS.event.remove(window, "scroll", w), pa(window)
            } else P = 0;
            Q = c - (K / 2 > e ? e - p[0] : K - e - p[2]);
            if (0 < Q) {
                if (Q > c && (Q = c), b = N()[1], Q *= e < K / 2 ? -1 : 1, !(0 > Q && 0 >= b || 0 < Q && b >= za - K) && 0 === V++) REDIPS.event.remove(window, "scroll", w), qa(window)
            } else Q = 0;
            for (f = 0; f < O.length; f++)
                if (b = O[f], b.autoscroll && d < b.offset[1] && d > b.offset[3] && e < b.offset[2] && e > b.offset[0]) {
                    S = c - (b.midstX >
                        d ? d - p[3] - b.offset[3] : b.offset[1] - d - p[1]);
                    0 < S ? (S > c && (S = c), S *= d < b.midstX ? -1 : 1, 0 === U++ && (REDIPS.event.remove(b.div, "scroll", w), pa(b.div))) : S = 0;
                    T = c - (b.midstY > e ? e - p[0] - b.offset[0] : b.offset[2] - e - p[2]);
                    0 < T ? (T > c && (T = c), T *= e < b.midstY ? -1 : 1, 0 === V++ && (REDIPS.event.remove(b.div, "scroll", w), qa(b.div))) : T = 0;
                    break
                } else S = T = 0
        }
        a.cancelBubble = !0;
        a.stopPropagation && a.stopPropagation()
    };
    na = function () {
        if (h < g.length && (h !== x || j !== z || l !== D)) null !== x && (null !== z && null !== D) && (aa(x, z, D, ca), REDIPS.drag.td.previous = k.previous =
            g[x].rows[z].cells[D], REDIPS.drag.td.current = k.current = g[h].rows[j].cells[l], "switching" === REDIPS.drag.dropMode && "cell" === v && (ha(k.current, k.previous), w(), $()), "cell" === v ? REDIPS.drag.event.changed(k.current) : "row" === v && (h !== x || j !== z) && REDIPS.drag.event.rowChanged(k.current)), oa()
    };
    Ga = function () {
        if ("number" === typeof window.innerWidth) J = window.innerWidth, K = window.innerHeight;
        else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) J = document.documentElement.clientWidth,
            K = document.documentElement.clientHeight;
        else if (document.body && (document.body.clientWidth || document.body.clientHeight)) J = document.body.clientWidth, K = document.body.clientHeight;
        ya = document.documentElement.scrollWidth;
        za = document.documentElement.scrollHeight;
        w()
    };
    $ = function () {
        var a, c, b, d, e, f, o;
        b = [];
        var r;
        a = function () {
            null !== x && (null !== z && null !== D) && (h = x, j = z, l = D)
        };
        c = function (a, b, c) {
            var d = null,
                e;
            for (e in c)
                if (-1 < a.indexOf(e) && (d = !1, -1 < b.indexOf(c[e]))) {
                    d = !0;
                    break
                }
            return d
        };
        o = X;
        r = Y;
        for (h = 0; h < g.length; h++)
            if (!1 !==
                g[h].redips.enabled && (b[0] = g[h].redips.offset[0], b[1] = g[h].redips.offset[1], b[2] = g[h].redips.offset[2], b[3] = g[h].redips.offset[3], void 0 !== g[h].sca && (b[0] = b[0] > g[h].sca.offset[0] ? b[0] : g[h].sca.offset[0], b[1] = b[1] < g[h].sca.offset[1] ? b[1] : g[h].sca.offset[1], b[2] = b[2] < g[h].sca.offset[2] ? b[2] : g[h].sca.offset[2], b[3] = b[3] > g[h].sca.offset[3] ? b[3] : g[h].sca.offset[3]), b[3] < o && o < b[1] && b[0] < r && r < b[2])) {
                d = g[h].redips.row_offset;
                for (j = 0; j < d.length - 1; j++)
                    if (void 0 !== d[j]) {
                        n[0] = d[j][0];
                        if (void 0 !== d[j + 1]) n[2] =
                            d[j + 1][0];
                        else
                            for (f = j + 2; f < d.length; f++)
                                if (void 0 !== d[f]) {
                                    n[2] = d[f][0];
                                    break
                                } if (r <= n[2]) break
                    }
                f = j;
                j === d.length - 1 && (n[0] = d[j][0], n[2] = g[h].redips.offset[2]);
                do
                    for (l = b = g[h].rows[j].cells.length - 1; 0 <= l; l--)
                        if (b = g[h].rows[j].cells[l], n[3] = d[j][3] + b.offsetLeft, n[1] = n[3] + b.offsetWidth, e = n[0] + (b.offsetTop - g[h].rows[j].offsetTop), n[3] <= o && o <= n[1] && e <= r && r <= e + b.offsetHeight) {
                            n[0] = e;
                            n[2] = e + b.offsetHeight;
                            break
                        }
                while (g[h].redips.rowspan && -1 === l && 0 < j--);
                0 > j || 0 > l ? a() : j !== f && (n[0] = d[j][0], n[2] = n[0] + g[h].rows[j].cells[l].offsetHeight,
                    (r < n[0] || r > n[2]) && a());
                b = g[h].rows[j].cells[l];
                n.containTable = 0 < b.childNodes.length && 0 < b.getElementsByTagName("table").length;
                if (-1 === b.className.indexOf(REDIPS.drag.trash.className))
                    if (o = c(i.className, b.className, la.divClass), -1 < b.className.indexOf(REDIPS.drag.only.cname)) {
                        if (-1 === b.className.indexOf(la.div[i.id]) && !0 !== o) {
                            a();
                            break
                        }
                    } else if ((void 0 !== la.div[i.id] || null !== o) && "deny" === la.other) {
                    a();
                    break
                } else if (o = -1 < b.className.indexOf(REDIPS.drag.mark.cname), !0 === o && "deny" === REDIPS.drag.mark.action ||
                    !1 === o && "allow" === REDIPS.drag.mark.action)
                    if (o = c(i.className, b.className, Qa.exceptionClass), -1 === b.className.indexOf(Qa.exception[i.id]) && !0 !== o) {
                        a();
                        break
                    }
                c = -1 < b.className.indexOf("redips-single");
                if ("cell" === v) {
                    if (("single" === REDIPS.drag.dropMode || c) && 0 < b.childNodes.length) {
                        if (1 === b.childNodes.length && 3 === b.firstChild.nodeType) break;
                        c = !0;
                        for (f = b.childNodes.length - 1; 0 <= f; f--)
                            if (b.childNodes[f].className && -1 < b.childNodes[f].className.indexOf("redips-drag")) {
                                c = !1;
                                break
                            }
                        if (!c && (null !== x && null !== z &&
                                null !== D) && (C !== h || R !== j || Z !== l)) {
                            a();
                            break
                        }
                    }
                    if (-1 < b.className.indexOf("redips-rowhandler")) {
                        a();
                        break
                    }
                    if (b.parentNode.redips && b.parentNode.redips.emptyRow) {
                        a();
                        break
                    }
                }
                break
            }
    };
    oa = function () {
        h < g.length && (null !== h && null !== j && null !== l) && (ca = Ha(h, j, l), aa(h, j, l), x = h, z = j, D = l)
    };
    aa = function (a, c, b, d) {
        if ("cell" === v && ka) b = g[a].rows[c].cells[b].style, b.backgroundColor = void 0 === d ? REDIPS.drag.hover.colorTd : d.color[0].toString(), void 0 !== REDIPS.drag.hover.borderTd && (void 0 === d ? b.border = REDIPS.drag.hover.borderTd :
            (b.borderTopWidth = d.top[0][0], b.borderTopStyle = d.top[0][1], b.borderTopColor = d.top[0][2], b.borderRightWidth = d.right[0][0], b.borderRightStyle = d.right[0][1], b.borderRightColor = d.right[0][2], b.borderBottomWidth = d.bottom[0][0], b.borderBottomStyle = d.bottom[0][1], b.borderBottomColor = d.bottom[0][2], b.borderLeftWidth = d.left[0][0], b.borderLeftStyle = d.left[0][1], b.borderLeftColor = d.left[0][2]));
        else if ("row" === v) {
            a = g[a].rows[c];
            for (c = 0; c < a.cells.length; c++) b = a.cells[c].style, b.backgroundColor = void 0 === d ? REDIPS.drag.hover.colorTr :
                d.color[c].toString(), void 0 !== REDIPS.drag.hover.borderTr && (void 0 === d ? h === C ? j < R ? b.borderTop = REDIPS.drag.hover.borderTr : b.borderBottom = REDIPS.drag.hover.borderTr : "before" === REDIPS.drag.rowDropMode ? b.borderTop = REDIPS.drag.hover.borderTr : b.borderBottom = REDIPS.drag.hover.borderTr : (b.borderTopWidth = d.top[c][0], b.borderTopStyle = d.top[c][1], b.borderTopColor = d.top[c][2], b.borderBottomWidth = d.bottom[c][0], b.borderBottomStyle = d.bottom[c][1], b.borderBottomColor = d.bottom[c][2]))
        }
    };
    Ha = function (a, c, b) {
        var d = {
                color: [],
                top: [],
                right: [],
                bottom: [],
                left: []
            },
            e = function (a, b) {
                var c = "border" + b + "Style",
                    d = "border" + b + "Color";
                return [H(a, "border" + b + "Width"), H(a, c), H(a, d)]
            };
        if ("cell" === v) b = g[a].rows[c].cells[b], d.color[0] = b.style.backgroundColor, void 0 !== REDIPS.drag.hover.borderTd && (d.top[0] = e(b, "Top"), d.right[0] = e(b, "Right"), d.bottom[0] = e(b, "Bottom"), d.left[0] = e(b, "Left"));
        else {
            a = g[a].rows[c];
            for (c = 0; c < a.cells.length; c++) b = a.cells[c], d.color[c] = b.style.backgroundColor, void 0 !== REDIPS.drag.hover.borderTr && (d.top[c] = e(b, "Top"),
                d.bottom[c] = e(b, "Bottom"))
        }
        return d
    };
    B = function (a, c, b) {
        var d = 0,
            e = 0,
            f = a;
        "fixed" !== c && (d = 0 - Ca[0], e = 0 - Ca[1]);
        if (void 0 === b || !0 === b) {
            do d += a.offsetLeft - a.scrollLeft, e += a.offsetTop - a.scrollTop, a = a.offsetParent; while (a && "BODY" !== a.nodeName)
        } else {
            do d += a.offsetLeft, e += a.offsetTop, a = a.offsetParent; while (a && "BODY" !== a.nodeName)
        }
        return [e, d + f.offsetWidth, e + f.offsetHeight, d]
    };
    w = function () {
        var a, c, b, d;
        Ca = N();
        for (a = 0; a < g.length; a++) {
            b = [];
            d = H(g[a], "position");
            "fixed" !== d && (d = H(g[a].parentNode, "position"));
            for (c =
                g[a].rows.length - 1; 0 <= c; c--) "none" !== g[a].rows[c].style.display && (b[c] = B(g[a].rows[c], d));
            g[a].redips.offset = B(g[a], d);
            g[a].redips.row_offset = b
        }
        F = B(y);
        for (a = 0; a < O.length; a++) d = H(O[a].div, "position"), c = B(O[a].div, d, !1), O[a].offset = c, O[a].midstX = (c[1] + c[3]) / 2, O[a].midstY = (c[0] + c[2]) / 2
    };
    N = function () {
        var a, c;
        "number" === typeof window.pageYOffset ? (a = window.pageXOffset, c = window.pageYOffset) : document.body && (document.body.scrollLeft || document.body.scrollTop) ? (a = document.body.scrollLeft, c = document.body.scrollTop) :
            document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop) ? (a = document.documentElement.scrollLeft, c = document.documentElement.scrollTop) : a = c = 0;
        return [a, c]
    };
    pa = function (a) {
        var c, b;
        c = X;
        b = Y;
        0 < U && (w(), $(), c < F[1] && (c > F[3] && b < F[2] && b > F[0]) && na());
        "object" === typeof a && (u = a);
        u === window ? (a = N()[0], c = ya - J, b = P) : (a = u.scrollLeft, c = u.scrollWidth - u.clientWidth, b = S);
        0 < U && (0 > b && 0 < a || 0 < b && a < c) ? (u === window ? (window.scrollBy(b, 0), N(), a = parseInt(i.style.left, 10), isNaN(a)) : u.scrollLeft +=
            b, setTimeout(pa, REDIPS.drag.scroll.speed)) : (REDIPS.event.add(u, "scroll", w), U = 0, n = [0, 0, 0, 0])
    };
    qa = function (a) {
        var c, b;
        c = X;
        b = Y;
        0 < V && (w(), $(), c < F[1] && (c > F[3] && b < F[2] && b > F[0]) && na());
        "object" === typeof a && (u = a);
        u === window ? (a = N()[1], c = za - K, b = Q) : (a = u.scrollTop, c = u.scrollHeight - u.clientHeight, b = T);
        0 < V && (0 > b && 0 < a || 0 < b && a < c) ? (u === window ? (window.scrollBy(0, b), N(), a = parseInt(i.style.top, 10), isNaN(a)) : u.scrollTop += b, setTimeout(qa, REDIPS.drag.scroll.speed)) : (REDIPS.event.add(u, "scroll", w), V = 0, n = [0, 0, 0, 0])
    };
    ra = function (a,
        c) {
        var b = a.cloneNode(!0),
            d = b.className,
            e, f;
        !0 === c && (document.getElementById("redips_clone").appendChild(b), b.style.zIndex = 999, b.style.position = "fixed", e = B(a), f = B(b), b.style.top = e[0] - f[0] + "px", b.style.left = e[3] - f[3] + "px");
        b.setCapture && b.setCapture();
        d = d.replace("redips-clone", "");
        d = d.replace(/climit(\d)_(\d+)/, "");
        b.className = ba(d);
        void 0 === L[a.id] && (L[a.id] = 0);
        b.id = a.id + "c" + L[a.id];
        L[a.id] += 1;
        Ia(a, b);
        return b
    };
    Ia = function (a, c) {
        var b = [],
            d;
        b[0] = function (a, b) {
            a.redips && (b.redips = {}, b.redips.enabled =
                a.redips.enabled, b.redips.container = a.redips.container, a.redips.enabled && W(b))
        };
        b[1] = function (a, b) {
            a.redips && (b.redips = {}, b.redips.emptyRow = a.redips.emptyRow)
        };
        d = function (d) {
            var f, g, r;
            g = ["DIV", "TR"];
            f = a.getElementsByTagName(g[d]);
            g = c.getElementsByTagName(g[d]);
            for (r = 0; r < g.length; r++) b[d](f[r], g[r])
        };
        if ("DIV" === a.nodeName) b[0](a, c);
        else if ("TR" === a.nodeName) b[1](a, c);
        d(0);
        d(1)
    };
    sa = function (a, c) {
        var b, d, e;
        e = a.className;
        b = e.match(/climit(\d)_(\d+)/);
        null !== b && (d = parseInt(b[1], 10), b = parseInt(b[2], 10),
            0 === b && 1 === c && (e += " redips-clone", 2 === d && A(!0, a)), b += c, e = e.replace(/climit\d_\d+/g, "climit" + d + "_" + b), 0 >= b && (e = e.replace("redips-clone", ""), 2 === d ? (A(!1, a), REDIPS.drag.event.clonedEnd2()) : REDIPS.drag.event.clonedEnd1()), a.className = ba(e))
    };
    Ja = function (a) {
        var c = !1;
        a.srcElement ? (c = a.srcElement.nodeName, a = a.srcElement.className) : (c = a.target.nodeName, a = a.target.className);
        switch (c) {
            case "A":
            case "INPUT":
            case "SELECT":
            case "OPTION":
            case "TEXTAREA":
                c = !0;
                break;
            default:
                c = /\bredips-nodrag\b/i.test(a)
        }
        return c
    };
    A = function (a, c) {
        var b, d, e, f = [],
            g = [],
            r, i, h, j, k = /\bredips-noautoscroll\b/i;
        i = REDIPS.drag.style.opacityDisabled;
        !0 === a || "init" === a ? (r = REDIPS.drag.style.borderEnabled, h = "move", j = !0) : (r = REDIPS.drag.style.borderDisabled, h = "auto", j = !1);
        void 0 === c ? f = y.getElementsByTagName("div") : "string" === typeof c ? f = document.querySelectorAll(c) : "object" === typeof c && ("DIV" !== c.nodeName || -1 === c.className.indexOf("redips-drag")) ? f = c.getElementsByTagName("div") : f[0] = c;
        for (d = b = 0; b < f.length; b++)
            if (Za.test(f[b].className)) "init" ===
                a || void 0 === f[b].redips ? (f[b].redips = {}, f[b].redips.container = y) : !0 === a && "number" === typeof i ? (f[b].style.opacity = "", f[b].style.filter = "") : !1 === a && "number" === typeof i && (f[b].style.opacity = i / 100, f[b].style.filter = "alpha(opacity=" + i + ")"), W(f[b], j), f[b].style.borderStyle = r, f[b].style.cursor = h, f[b].redips.enabled = j;
            else if ("init" === a && (e = H(f[b], "overflow"), "visible" !== e)) {
            REDIPS.event.add(f[b], "scroll", w);
            e = H(f[b], "position");
            g = B(f[b], e, !1);
            e = !k.test(f[b].className);
            O[d] = {
                div: f[b],
                offset: g,
                midstX: (g[1] +
                    g[3]) / 2,
                midstY: (g[0] + g[2]) / 2,
                autoscroll: e
            };
            g = f[b].getElementsByTagName("table");
            for (e = 0; e < g.length; e++) g[e].sca = O[d];
            d++
        }
    };
    Ma = function (a) {
        "object" === typeof a && "DIV" === a.nodeName ? a.parentNode.removeChild(a) : "string" === typeof a && (a = document.getElementById(a)) && a.parentNode.removeChild(a)
    };
    H = function (a, c) {
        var b;
        a && a.currentStyle ? b = a.currentStyle[c] : a && window.getComputedStyle && (b = document.defaultView.getComputedStyle(a, null)[c]);
        return b
    };
    t = function (a, c, b) {
        c = c.parentNode;
        for (void 0 === b && (b = 0); c;) {
            if (c.nodeName ===
                a)
                if (0 < b) b--;
                else break;
            c = c.parentNode
        }
        return c
    };
    Ka = function (a, c) {
        var b = t("TABLE", c),
            d, e;
        switch (a) {
            case "firstInColumn":
                d = 0;
                e = c.cellIndex;
                break;
            case "firstInRow":
                d = c.parentNode.rowIndex;
                e = 0;
                break;
            case "lastInColumn":
                d = b.rows.length - 1;
                e = c.cellIndex;
                break;
            case "lastInRow":
                d = c.parentNode.rowIndex;
                e = b.rows[d].cells.length - 1;
                break;
            case "last":
                d = b.rows.length - 1;
                e = b.rows[d].cells.length - 1;
                break;
            default:
                d = e = 0
        }
        return [d, e, b.rows[d].cells[e]]
    };
    Ua = function (a, c) {
        200 === a.status ? ta(c.targetTable, a.responseText) :
            REDIPS.drag.error.loadContent({
                type: 0,
                message: "AJAX error: [" + a.status + "] " + a.statusText,
                text: null,
                rowIndex: null,
                cellIndex: null
            })
    };
    ta = function (a, c) {
        var b, d, e, f, g, r, i, h;
        "string" === typeof a && (a = document.getElementById(a));
        if (void 0 === a || null === a || "TABLE" !== a.nodeName) REDIPS.drag.error.loadContent({
            type: 0,
            message: "Target table does not exist",
            text: null,
            rowIndex: null,
            cellIndex: null
        });
        else {
            if (Array.isArray(c)) b = c;
            else try {
                b = JSON.parse(c)
            } catch (j) {
                REDIPS.drag.error.loadContent({
                    type: 0,
                    message: j.message,
                    text: null,
                    rowIndex: null,
                    cellIndex: null
                });
                return
            }
            for (h = 0; h < b.length; h++)
                if (e = b[h][0], f = b[h][1], g = b[h][2], r = b[h][3], i = b[h][4], d = document.createElement("div"), d.id = e, d.className = ba("redips-drag " + r), d.textContent = i, void 0 === a.rows[f]) {
                    if (d = REDIPS.drag.error.loadContent({
                            type: 1,
                            message: "Target TR [" + f + "] does not exist",
                            text: i,
                            rowIndex: f,
                            cellIndex: g
                        }), !1 === d) break
                } else if (void 0 === a.rows[f].cells[g]) {
                if (d = REDIPS.drag.error.loadContent({
                        type: 2,
                        message: "Target TD [" + f + "," + g + "] does not exist",
                        text: i,
                        rowIndex: f,
                        cellIndex: g
                    }), !1 === d) break
            } else a.rows[f].cells[g].appendChild(d), A(!0, d)
        }
    };
    La = function (a, c, b) {
        var d = "GET",
            e = "",
            f;
        void 0 === I && (I = new XMLHttpRequest);
        "object" === typeof b && ("string" === typeof b.method && "POST" === b.method && (d = "POST"), "string" === typeof b.data && (e = b.data));
        I.open(d, a, !0);
        I.onreadystatechange = function () {
            if (I.readyState === XMLHttpRequest.DONE) {
                if (I.status !== 200) {
                    f = REDIPS.drag.error.ajax(I, b);
                    if (f === false) return
                }
                typeof c === "function" && c.call(this, I, b)
            }
        };
        I.setRequestHeader("X-Requested-With",
            "XMLHttpRequest");
        "GET" === d ? I.send(null) : (I.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"), I.send(e))
    };
    ha = function (a, c, b) {
        var d, e, f;
        d = function (a, b) {
            REDIPS.drag.event.relocateBefore(a, b);
            var c = REDIPS.drag.getPosition(b);
            REDIPS.drag.moveObject({
                obj: a,
                target: c,
                callback: function (a) {
                    var c = REDIPS.drag.findParent("TABLE", a),
                        d = c.redips.idx;
                    REDIPS.drag.event.relocateAfter(a, b);
                    Ba[d]--;
                    0 === Ba[d] && (REDIPS.drag.event.relocateEnd(), REDIPS.drag.enableTable(!0, c))
                }
            })
        };
        if (a !== c && !("object" !==
                typeof a || "object" !== typeof c))
            if (f = a.childNodes.length, "animation" === b) {
                if (0 < f) {
                    b = t("TABLE", c);
                    e = b.redips.idx;
                    REDIPS.drag.enableTable(!1, b);
                    for (b = 0; b < f; b++) 1 === a.childNodes[b].nodeType && "DIV" === a.childNodes[b].nodeName && (Ba[e]++, d(a.childNodes[b], c))
                }
            } else
                for (d = b = 0; b < f; b++) 1 === a.childNodes[d].nodeType && "DIV" === a.childNodes[d].nodeName ? (e = a.childNodes[d], REDIPS.drag.event.relocateBefore(e, c), c.appendChild(e), e.redips && !1 !== e.redips.enabled && W(e), REDIPS.drag.event.relocateAfter(e)) : d++
    };
    ia = function (a,
        c) {
        var b, d = [],
            e;
        if ("TD" === a.nodeName) {
            b = a.childNodes.length;
            if ("test" === c) return b = k.source === a ? void 0 : 0 === a.childNodes.length || 1 === a.childNodes.length && 3 === a.firstChild.nodeType;
            for (e = 0; e < b; e++) d.push(a.childNodes[0]), a.removeChild(a.childNodes[0]);
            return d
        }
    };
    ua = function (a, c) {
        var b, d, e, f, g, i, h, j, E, n, l, m, p = !1,
            q, s;
        q = function (a, b) {
            REDIPS.drag.shift.animation ? ha(a, b, "animation") : ha(a, b)
        };
        s = function (a) {
            "delete" === REDIPS.drag.shift.overflow ? ia(a) : "source" === REDIPS.drag.shift.overflow ? q(a, k.source) : "object" ===
                typeof REDIPS.drag.shift.overflow && q(a, REDIPS.drag.shift.overflow);
            p = !1;
            REDIPS.drag.event.shiftOverflow(a)
        };
        if (a !== c) {
            g = REDIPS.drag.shift.mode;
            b = t("TABLE", a);
            d = t("TABLE", c);
            i = Va(d);
            e = b === d ? [a.redips.rowIndex, a.redips.cellIndex] : [-1, -1];
            f = [c.redips.rowIndex, c.redips.cellIndex];
            l = d.rows.length;
            m = Wa(d);
            switch (g) {
                case "vertical2":
                    b = b === d && a.redips.cellIndex === c.redips.cellIndex ? e : [l, c.redips.cellIndex];
                    break;
                case "horizontal2":
                    b = b === d && a.parentNode.rowIndex === c.parentNode.rowIndex ? e : [c.redips.rowIndex,
m];
                    break;
                default:
                    b = b === d ? e : [l, m]
            }
            "vertical1" === g || "vertical2" === g ? (g = 1E3 * b[1] + b[0] < 1E3 * f[1] + f[0] ? 1 : -1, d = l, l = 0, m = 1) : (g = 1E3 * b[0] + b[1] < 1E3 * f[0] + f[1] ? 1 : -1, d = m, l = 1, m = 0);
            for (b[0] !== e[0] && b[1] !== e[1] && (p = !0); b[0] !== f[0] || b[1] !== f[1];)(h = i[b[0] + "-" + b[1]], b[l] += g, 0 > b[l] ? (b[l] = d, b[m]--) : b[l] > d && (b[l] = 0, b[m]++), e = i[b[0] + "-" + b[1]], void 0 !== e && (j = e), void 0 !== h && (E = h), void 0 !== e && void 0 !== E || void 0 !== j && void 0 !== h) ? (e = -1 === j.className.indexOf(REDIPS.drag.mark.cname) ? 0 : 1, h = -1 === E.className.indexOf(REDIPS.drag.mark.cname) ?
                0 : 1, p && 0 === e && 1 === h && s(j), 1 === e ? 0 === h && (n = E) : (0 === e && 1 === h && (E = n), q(j, E))) : p && (void 0 !== j && void 0 === E) && (e = -1 === j.className.indexOf(REDIPS.drag.mark.cname) ? 0 : 1, 0 === e && s(j))
        }
    };
    Va = function (a) {
        var c = [],
            b, d = {},
            e, f, g, i, h, j, k, l;
        i = a.rows;
        for (h = 0; h < i.length; h++)
            for (j = 0; j < i[h].cells.length; j++) {
                b = i[h].cells[j];
                a = b.parentNode.rowIndex;
                e = b.rowSpan || 1;
                f = b.colSpan || 1;
                c[a] = c[a] || [];
                for (k = 0; k < c[a].length + 1; k++)
                    if ("undefined" === typeof c[a][k]) {
                        g = k;
                        break
                    }
                d[a + "-" + g] = b;
                void 0 === b.redips && (b.redips = {});
                b.redips.rowIndex =
                    a;
                b.redips.cellIndex = g;
                for (k = a; k < a + e; k++) {
                    c[k] = c[k] || [];
                    b = c[k];
                    for (l = g; l < g + f; l++) b[l] = "x"
                }
            }
        return d
    };
    Wa = function (a) {
        "string" === typeof a && (a = document.getElementById(a));
        var a = a.rows,
            c, b = 0,
            d, e;
        for (d = 0; d < a.length; d++) {
            for (e = c = 0; e < a[d].cells.length; e++) c += a[d].cells[e].colSpan || 1;
            c > b && (b = c)
        }
        return b
    };
    Na = function (a, c) {
        var b = (c.k1 - c.k2 * a) * (c.k1 - c.k2 * a),
            d, a = a + REDIPS.drag.animation.step * (4 - 3 * b) * c.direction;
        d = c.m * a + c.b;
        "horizontal" === c.type ? (c.obj.style.left = a + "px", c.obj.style.top = d + "px") : (c.obj.style.left =
            d + "px", c.obj.style.top = a + "px");
        a < c.last && 0 < c.direction || a > c.last && 0 > c.direction ? setTimeout(function () {
            Na(a, c)
        }, REDIPS.drag.animation.pause * b) : (Fa(c.obj), c.obj.redips && (c.obj.redips.animated = !1), "cell" === c.mode ? (!0 === c.overwrite && ia(c.targetCell), c.targetCell.appendChild(c.obj), c.obj.redips && !1 !== c.obj.redips.enabled && W(c.obj)) : Oa(va(c.target[0]), c.target[1], c.obj), "function" === typeof c.callback && c.callback(c.obj))
    };
    wa = function (a) {
        var c, b, d;
        c = [];
        c = b = d = -1;
        if (void 0 === a) c = h < g.length ? g[h].redips.idx :
            null === x || null === z || null === D ? g[C].redips.idx : g[x].redips.idx, b = g[C].redips.idx, c = [c, j, l, b, R, Z];
        else {
            if (a = "string" === typeof a ? document.getElementById(a) : a) "TD" !== a.nodeName && (a = t("TD", a)), a && "TD" === a.nodeName && (c = a.cellIndex, b = a.parentNode.rowIndex, a = t("TABLE", a), d = a.redips.idx);
            c = [d, b, c]
        }
        return c
    };
    va = function (a) {
        var c;
        for (c = 0; c < g.length && g[c].redips.idx !== a; c++);
        return c
    };
    ba = function (a) {
        void 0 !== a && (a = a.replace(/^\s+|\s+$/g, "").replace(/\s{2,}/g, " "));
        return a
    };
    Ya = function (a) {
        var c;
        for (c = 0; c < a.childNodes.length; c++)
            if (1 ===
                a.childNodes[c].nodeType) return !0;
        return !1
    };
    xa = function (a, c, b) {
        var d, e;
        "string" === typeof a && (a = document.getElementById(a), a = t("TABLE", a));
        if ("TR" === a.nodeName) {
            a = a.getElementsByTagName("td");
            for (d = 0; d < a.length; d++)
                if (a[d].style.backgroundColor = b ? b : "", "empty" === c) a[d].innerHTML = "";
                else
                    for (e = 0; e < a[d].childNodes.length; e++) 1 === a[d].childNodes[e].nodeType && (a[d].childNodes[e].style.opacity = c / 100, a[d].childNodes[e].style.filter = "alpha(opacity=" + c + ")")
        } else a.style.opacity = c / 100, a.style.filter = "alpha(opacity=" +
            c + ")", a.style.backgroundColor = b ? b : ""
    };
    return {
        obj: i,
        objOld: m,
        mode: v,
        td: k,
        hover: {
            colorTd: "#E7AB83",
            colorTr: "#E7AB83"
        },
        scroll: {
            enable: !0,
            bound: 25,
            speed: 20
        },
        only: la,
        mark: Qa,
        style: {
            borderDisabled: "dotted",
            opacityDisabled: "",
            rowEmptyColor: "white"
        },
        trash: {
            className: "redips-trash",
            question: null,
            questionRow: null
        },
        saveParamName: "p",
        dropMode: "multiple",
        multipleDrop: "bottom",
        clone: bb,
        animation: {
            pause: 20,
            step: 2,
            shift: !1
        },
        shift: {
            mode: "horizontal1",
            after: "default",
            overflow: "bunch"
        },
        rowDropMode: "before",
        tableSort: !0,
        init: function (a) {
            var c;
            if (void 0 === a || "string" !== typeof a) a = "redips-drag";
            y = document.getElementById(a);
            if (null === y) throw "REDIPS.drag - Drag container is not set!";
            Ca = N();
            document.getElementById("redips_clone") || (a = document.createElement("div"), a.id = "redips_clone", a.style.width = a.style.height = "1px", y.appendChild(a));
            A("init");
            s();
            Ga();
            REDIPS.event.add(window, "resize", Ga);
            c = y.getElementsByTagName("img");
            for (a = 0; a < c.length; a++) REDIPS.event.add(c[a], "mousemove", M), REDIPS.event.add(c[a], "touchmove",
                M);
            REDIPS.event.add(window, "scroll", w)
        },
        initTables: s,
        enableDrag: A,
        clearTable: function (a) {
            var c;
            "string" === typeof a && (a = document.getElementById(a));
            if ("object" !== typeof a || "TABLE" !== a.nodeName) console.log("REDIPS.drag.clearTable: input element is not HTML table");
            else {
                a = a.getElementsByTagName("DIV");
                for (c = a.length - 1; 0 <= c; c--) Za.test(a[c].className) && Ma(a[c])
            }
        },
        enableTable: function (a, c) {
            var b;
            if ("object" === typeof c && "TABLE" === c.nodeName) c.redips.enabled = a;
            else
                for (b = 0; b < g.length; b++) - 1 < g[b].className.indexOf(c) &&
                    (g[b].redips.enabled = a)
        },
        cloneObject: ra,
        saveContent: function (a, c) {
            var b = "",
                d, e, f, g, i, h, j, k, l, m = [],
                n = REDIPS.drag.saveParamName;
            "string" === typeof a && (a = document.getElementById(a));
            if (void 0 !== a && "object" === typeof a && "TABLE" === a.nodeName) {
                d = a.rows.length;
                for (j = 0; j < d; j++) {
                    e = a.rows[j].cells.length;
                    for (k = 0; k < e; k++)
                        if (i = a.rows[j].cells[k], 0 < i.childNodes.length)
                            for (l = 0; l < i.childNodes.length; l++) h = i.childNodes[l], "DIV" === h.nodeName && -1 < h.className.indexOf("redips-drag") && (f = h.className.replace(/redips-\w+/g,
                                ""), f = ba(f), g = h.innerText || h.textContent, b += n + "[]=" + h.id + "_" + j + "_" + k + "_" + f + "_" + g + "&", m.push([h.id, j, k, f, g]))
                }
                b = "json" === c && 0 < m.length ? JSON.stringify(m) : b.substring(0, b.length - 1)
            }
            return b
        },
        loadContent: function (a, c) {
            if (Array.isArray(c)) ta(a, c);
            else if ("string" === typeof c) try {
                JSON.parse(c), ta(a, c)
            } catch (b) {
                La(c, Ua, {
                    targetTable: a
                })
            } else REDIPS.drag.error.loadContent({
                type: 0,
                message: "Invalid input parameter (URL or JSON is expected)",
                text: null,
                rowIndex: null,
                cellIndex: null
            })
        },
        ajaxCall: La,
        relocate: ha,
        emptyCell: ia,
        moveObject: function (a) {
            var c = {
                    direction: 1
                },
                b, d, e, f, i, h;
            c.callback = a.callback;
            c.overwrite = a.overwrite;
            "string" === typeof a.id ? c.obj = c.objOld = document.getElementById(a.id) : "object" === typeof a.obj && "DIV" === a.obj.nodeName && (c.obj = c.objOld = a.obj);
            if ("row" === a.mode) {
                c.mode = "row";
                h = va(a.source[0]);
                i = a.source[1];
                m = c.objOld = g[h].rows[i];
                if (m.redips && !0 === m.redips.emptyRow) return !1;
                c.obj = ja(c.objOld, "animated")
            } else if (c.obj && -1 < c.obj.className.indexOf("redips-row")) {
                c.mode = "row";
                c.obj = c.objOld = m = t("TR", c.obj);
                if (m.redips && !0 === m.redips.emptyRow) return !1;
                c.obj = ja(c.objOld, "animated")
            } else c.mode = "cell";
            if (!("object" !== typeof c.obj || null === c.obj)) return c.obj.style.zIndex = 999, c.obj.redips && y !== c.obj.redips.container && (y = c.obj.redips.container, s()), h = B(c.obj), e = h[1] - h[3], f = h[2] - h[0], b = h[3], d = h[0], !0 === a.clone && "cell" === c.mode && (c.obj = ra(c.obj, !0), REDIPS.drag.event.cloned(c.obj)), void 0 === a.target ? a.target = wa() : "object" === typeof a.target && "TD" === a.target.nodeName && (a.target = wa(a.target)), c.target = a.target,
                h = va(a.target[0]), i = a.target[1], a = a.target[2], i > g[h].rows.length - 1 && (i = g[h].rows.length - 1), c.targetCell = g[h].rows[i].cells[a], "cell" === c.mode ? (h = B(c.targetCell), i = h[1] - h[3], a = h[2] - h[0], e = h[3] + (i - e) / 2, f = h[0] + (a - f) / 2) : (h = B(g[h].rows[i]), e = h[3], f = h[0]), h = e - b, a = f - d, c.obj.style.position = "fixed", Math.abs(h) > Math.abs(a) ? (c.type = "horizontal", c.m = a / h, c.b = d - c.m * b, c.k1 = (b + e) / (b - e), c.k2 = 2 / (b - e), b > e && (c.direction = -1), h = b, c.last = e) : (c.type = "vertical", c.m = h / a, c.b = b - c.m * d, c.k1 = (d + f) / (d - f), c.k2 = 2 / (d - f), d > f && (c.direction = -1), h = d, c.last = f), c.obj.redips && (c.obj.redips.animated = !0), Na(h, c), [c.obj, c.objOld]
        },
        shiftCells: ua,
        deleteObject: Ma,
        getPosition: wa,
        rowOpacity: xa,
        rowEmpty: function (a, c, b) {
            a = document.getElementById(a).rows[c];
            void 0 === b && (b = REDIPS.drag.style.rowEmptyColor);
            void 0 === a.redips && (a.redips = {});
            a.redips.emptyRow = !0;
            xa(a, "empty", b)
        },
        getScrollPosition: N,
        getStyle: H,
        findParent: t,
        findCell: Ka,
        event: {
            changed: function () {},
            clicked: function () {},
            cloned: function () {},
            clonedDropped: function () {},
            clonedEnd1: function () {},
            clonedEnd2: function () {},
            dblClicked: function () {},
            deleted: function () {},
            dropped: function () {},
            droppedBefore: function () {},
            finish: function () {},
            moved: function () {},
            notCloned: function () {},
            notMoved: function () {},
            shiftOverflow: function () {},
            relocateBefore: function () {},
            relocateAfter: function () {},
            relocateEnd: function () {},
            rowChanged: function () {},
            rowClicked: function () {},
            rowCloned: function () {},
            rowDeleted: function () {},
            rowDropped: function () {},
            rowDroppedBefore: function () {},
            rowDroppedSource: function () {},
            rowMoved: function () {},
            rowNotCloned: function () {},
            rowNotMoved: function () {},
            rowUndeleted: function () {},
            switched: function () {},
            undeleted: function () {}
        },
        error: {
            ajax: function () {},
            loadContent: function () {}
        }
    }
}();
REDIPS.event || (REDIPS.event = function () {
    return {
        add: function (s, A, M) {
            s.addEventListener ? s.addEventListener(A, M, !1) : s.attachEvent ? s.attachEvent("on" + A, M) : s["on" + A] = M
        },
        remove: function (s, A, M) {
            s.removeEventListener ? s.removeEventListener(A, M, !1) : s.detachEvent ? s.detachEvent("on" + A, M) : s["on" + A] = null
        }
    }
}());
