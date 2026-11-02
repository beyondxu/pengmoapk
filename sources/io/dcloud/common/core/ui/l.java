package io.dcloud.common.core.ui;

import android.content.Intent;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.dcloud.android.widget.StatusBarView;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IActivityHandler;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.DHInterface.ICore;
import io.dcloud.common.DHInterface.IEventCallback;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.DHInterface.IWebviewStateListener;
import io.dcloud.common.adapter.ui.AdaFrameItem;
import io.dcloud.common.adapter.ui.AdaFrameView;
import io.dcloud.common.adapter.ui.AdaWebViewParent;
import io.dcloud.common.adapter.ui.AdaWebview;
import io.dcloud.common.adapter.util.AnimOptions;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.adapter.util.ViewOptions;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.IntentConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.JSONUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.StringUtil;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.TitleNViewUtil;
import io.dcloud.feature.gg.dcloud.ADSim;
import io.dcloud.nineoldandroids.view.ViewHelper;
import io.src.dcloud.adapter.DCloudAdapterUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes.dex */
public class l extends AbsMgr implements IMgr.WindowEvent {
    HashMap a;
    List b;
    String c;
    Runnable d;
    Runnable e;
    boolean f;
    WindowManager.LayoutParams g;

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class a implements IEventCallback {
        final /* synthetic */ io.dcloud.common.core.ui.b a;
        final /* synthetic */ IApp b;
        final /* synthetic */ io.dcloud.common.core.ui.a c;

        a(io.dcloud.common.core.ui.b bVar, IApp iApp, io.dcloud.common.core.ui.a aVar) {
            this.a = bVar;
            this.b = iApp;
            this.c = aVar;
        }

        @Override // io.dcloud.common.DHInterface.IEventCallback
        public Object onCallBack(String str, Object obj) {
            if (!PdrUtil.isEquals(str, AbsoluteConst.EVENTS_CLOSE)) {
                return null;
            }
            this.a.removeFrameViewListener(this);
            l.this.a(this.b, this.c);
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class b implements IWebviewStateListener {
        boolean a = false;
        final /* synthetic */ IApp b;
        final /* synthetic */ io.dcloud.common.core.ui.b c;
        final /* synthetic */ boolean d;
        final /* synthetic */ boolean e;
        final /* synthetic */ String f;
        final /* synthetic */ AdaWebview g;
        final /* synthetic */ io.dcloud.common.core.ui.a h;
        final /* synthetic */ int i;

        /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
        class a implements MessageHandler.IMessages {
            a() {
            }

            @Override // io.dcloud.common.adapter.util.MessageHandler.IMessages
            public void execute(Object obj) {
                if (((io.dcloud.common.core.ui.a) b.this.b.obtainWebAppRootView()).a(5) == null) {
                    b.this.b.checkOrLoadlaunchWebview();
                }
            }
        }

        b(IApp iApp, io.dcloud.common.core.ui.b bVar, boolean z, boolean z2, String str, AdaWebview adaWebview, io.dcloud.common.core.ui.a aVar, int i) {
            this.b = iApp;
            this.c = bVar;
            this.d = z;
            this.e = z2;
            this.f = str;
            this.g = adaWebview;
            this.h = aVar;
            this.i = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00ef  */
        @Override // io.dcloud.common.DHInterface.ICallBack
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object onCallBack(int r23, java.lang.Object r24) {
            /*
                Method dump skipped, instruction units count: 270
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.b.onCallBack(int, java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class c implements Runnable {
        final /* synthetic */ AdaFrameItem a;

        c(AdaFrameItem adaFrameItem) {
            this.a = adaFrameItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((AdaFrameView) this.a).changeWebParentViewRect();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class d implements ICallBack {
        final /* synthetic */ io.dcloud.common.core.ui.b a;
        final /* synthetic */ Object[] b;

        d(io.dcloud.common.core.ui.b bVar, Object[] objArr) {
            this.a = bVar;
            this.b = objArr;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            if (this.a.u) {
                return null;
            }
            this.a.c(((Boolean) this.b[1]).booleanValue());
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class e implements ICallBack {
        final /* synthetic */ io.dcloud.common.core.ui.b a;

        e(io.dcloud.common.core.ui.b bVar) {
            this.a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            this.a.setVisible(true, false);
            this.a.p();
            this.a.lastShowTime = System.currentTimeMillis();
            this.a.k.k();
            io.dcloud.common.core.ui.b bVar = this.a;
            if (!bVar.isChildOfFrameView) {
                TestUtil.record("computeStackArray");
                io.dcloud.common.core.ui.b bVar2 = this.a;
                bVar2.k.b(bVar2);
                io.dcloud.common.core.ui.b bVar3 = this.a;
                bVar3.onPushToStack(bVar3.isAutoPop());
                TestUtil.print("computeStackArray", "计算满屏幕时间");
                if (this.a.k.d().contains(this.a)) {
                    this.a.k.l();
                } else {
                    io.dcloud.common.core.ui.b bVar4 = this.a;
                    bVar4.k.e(bVar4);
                }
            } else if (bVar.getParentFrameItem() != null) {
                io.dcloud.common.core.ui.b bVar5 = this.a;
                bVar5.k.h(bVar5);
            }
            io.dcloud.common.core.ui.b bVar6 = this.a;
            if (!bVar6.isChildOfFrameView) {
                int i2 = bVar6.obtainApp().getInt(0);
                int i3 = this.a.obtainApp().getInt(1);
                if ((i2 == this.a.obtainFrameOptions().width && this.a.obtainFrameOptions().height + 1 >= i3) || (this.a.obtainFrameOptions().width == -1 && this.a.obtainFrameOptions().height == -1)) {
                    io.dcloud.common.core.ui.i.a(this.a, 0);
                }
                if (PdrUtil.isEquals(this.a.getAnimOptions().mAnimType, "none")) {
                    this.a.makeViewOptions_animate();
                    this.a.m();
                } else {
                    this.a.s();
                    this.a.startAnimator(0);
                }
            } else if (PdrUtil.isEquals(bVar6.getAnimOptions().mAnimType, AnimOptions.ANIM_FADE_IN)) {
                this.a.s();
                this.a.startAnimator(0);
            } else {
                this.a.makeViewOptions_animate();
                this.a.m();
            }
            io.dcloud.common.core.ui.b bVar7 = this.a;
            bVar7.k.i(bVar7);
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class f implements ICallBack {
        final /* synthetic */ io.dcloud.common.core.ui.b a;

        f(io.dcloud.common.core.ui.b bVar) {
            this.a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            io.dcloud.common.core.ui.b bVar = this.a;
            int iC = bVar.k.c(bVar);
            this.a.p();
            boolean z = false;
            boolean z2 = this.a.obtainMainView().getVisibility() == AdaFrameItem.VISIBLE;
            io.dcloud.common.core.ui.b bVar2 = this.a;
            if (bVar2.inStack && z2 && !bVar2.isChildOfFrameView) {
                bVar2.k.b(bVar2);
                if (this.a.e()) {
                    l.this.processEvent(IMgr.MgrType.WindowMgr, 28, this.a.b);
                    this.a.b = null;
                }
                int i2 = this.a.obtainApp().getInt(0);
                int i3 = this.a.obtainApp().getInt(1);
                if ((i2 == this.a.obtainFrameOptions().width && this.a.obtainFrameOptions().height + 1 >= i3) || (this.a.obtainFrameOptions().width == -1 && this.a.obtainFrameOptions().height == -1)) {
                    z = true;
                }
                if ((!PdrUtil.isEquals(this.a.getAnimOptions().mAnimType_close, "none") || (BaseInfo.isDefaultAim && z)) && iC >= 0) {
                    this.a.s();
                    if (z && !PdrUtil.isEquals(this.a.getAnimOptions().mAnimType_close, "none")) {
                        io.dcloud.common.core.ui.i.a(this.a, 1);
                    }
                    this.a.startAnimator(1);
                } else {
                    this.a.makeViewOptions_animate();
                    this.a.l();
                    this.a.k();
                }
            } else {
                bVar2.makeViewOptions_animate();
                this.a.l();
                this.a.k();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class g implements ICallBack {
        final /* synthetic */ io.dcloud.common.core.ui.b a;
        final /* synthetic */ int b;

        g(io.dcloud.common.core.ui.b bVar, int i) {
            this.a = bVar;
            this.b = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
        @Override // io.dcloud.common.DHInterface.ICallBack
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object onCallBack(int r10, java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 325
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.g.onCallBack(int, java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class h implements ICallBack {
        final /* synthetic */ io.dcloud.common.core.ui.b a;

        h(io.dcloud.common.core.ui.b bVar) {
            this.a = bVar;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            io.dcloud.common.core.ui.b bVar = this.a;
            bVar.k.e(bVar);
            this.a.setVisible(true, false);
            this.a.k.i();
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class i implements IWebviewStateListener {
        boolean a = false;
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;
        final /* synthetic */ IApp d;
        final /* synthetic */ io.dcloud.common.core.ui.a e;
        final /* synthetic */ String f;
        final /* synthetic */ IWebview g;
        final /* synthetic */ int h;
        final /* synthetic */ io.dcloud.common.core.ui.b i;
        final /* synthetic */ int j;
        final /* synthetic */ long k;

        i(String str, boolean z, IApp iApp, io.dcloud.common.core.ui.a aVar, String str2, IWebview iWebview, int i, io.dcloud.common.core.ui.b bVar, int i2, long j) {
            this.b = str;
            this.c = z;
            this.d = iApp;
            this.e = aVar;
            this.f = str2;
            this.g = iWebview;
            this.h = i;
            this.i = bVar;
            this.j = i2;
            this.k = j;
        }

        @Override // io.dcloud.common.DHInterface.ICallBack
        public Object onCallBack(int i, Object obj) {
            IActivityHandler iActivityHandler;
            int i2 = AbsoluteConst.EVENTS_TITLE_UPDATE.equals(l.this.c) ? 4 : AbsoluteConst.EVENTS_RENDERING.equals(l.this.c) ? 6 : 1;
            Logger.d(Logger.MAIN_TAG, "autoCloseSplash4LaunchWebview  IWebviewStateListener pType= " + i + ";pArgs=" + obj);
            if (i != i2) {
                if (i != 3 || (iActivityHandler = DCloudAdapterUtil.getIActivityHandler(this.d.getActivity())) == null) {
                    return null;
                }
                iActivityHandler.updateParam("progress", obj);
                return null;
            }
            if (this.b.equals("id:*") && this.c) {
                l.this.a(this.d, this.e);
            } else if (this.b.equals("default") && this.c) {
                if (PdrUtil.isNetPath(this.f) && (i == 4 || i == 6)) {
                    int i3 = i == 4 ? TestUtil.PointTime.AC_TYPE_1_2 : i == 6 ? TestUtil.PointTime.AC_TYPE_1_3 : TestUtil.PointTime.AC_TYPE_1_1;
                    l lVar = l.this;
                    lVar.f = false;
                    lVar.a(this.g, this.d, false, this.e, this.h, this.i, this.j, i3);
                } else {
                    this.d.setConfigProperty("timeout", "-1");
                    io.dcloud.common.core.ui.a aVar = this.e;
                    aVar.a(aVar, this.i, this.j, true, TestUtil.PointTime.AC_TYPE_1_1);
                }
            }
            BaseInfo.setLoadingLaunchePage(false, "f_need_auto_close_splash");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            this.d.setConfigProperty(IApp.ConfigProperty.CONFIG_LOADED_TIME, String.valueOf(jCurrentTimeMillis));
            this.g.evalJS(AbsoluteConst.PROTOCOL_JAVASCRIPT + StringUtil.format(AbsoluteConst.JS_RUNTIME_BASE, StringUtil.format(AbsoluteConst.JS_RUNTIME_LOADEDTIME, String.valueOf(jCurrentTimeMillis))));
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class j implements Runnable {
        final /* synthetic */ io.dcloud.common.core.ui.a a;
        final /* synthetic */ io.dcloud.common.core.ui.b b;
        final /* synthetic */ int c;

        j(io.dcloud.common.core.ui.a aVar, io.dcloud.common.core.ui.b bVar, int i) {
            this.a = aVar;
            this.b = bVar;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            io.dcloud.common.core.ui.a aVar = this.a;
            if (aVar != null) {
                aVar.a(aVar, this.b, this.c, true, 1000);
            }
            l.this.d = null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class k implements Runnable {
        final /* synthetic */ io.dcloud.common.core.ui.b a;
        final /* synthetic */ io.dcloud.common.core.ui.a b;
        final /* synthetic */ IApp c;

        k(io.dcloud.common.core.ui.b bVar, io.dcloud.common.core.ui.a aVar, IApp iApp) {
            this.a = bVar;
            this.b = aVar;
            this.c = iApp;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.a.obtainWebView().isLoaded()) {
                    l.this.a(this.c, this.b);
                } else if (this.a.obtainWebView().obtainUrl().endsWith("__uniappservice.html") || this.a.obtainWebView().checkWhite("auto")) {
                    l.this.a(this.c, this.b);
                } else {
                    io.dcloud.common.core.ui.a aVar = this.b;
                    aVar.a(aVar, this.a, 0, true, 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: io.dcloud.common.core.ui.l$l, reason: collision with other inner class name */
    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class RunnableC0037l implements Runnable {
        final /* synthetic */ io.dcloud.common.core.ui.a a;
        final /* synthetic */ boolean b;
        final /* synthetic */ io.dcloud.common.core.ui.b c;
        final /* synthetic */ IWebview d;
        final /* synthetic */ IApp e;
        final /* synthetic */ int f;
        final /* synthetic */ int g;
        final /* synthetic */ int h;

        RunnableC0037l(io.dcloud.common.core.ui.a aVar, boolean z, io.dcloud.common.core.ui.b bVar, IWebview iWebview, IApp iApp, int i, int i2, int i3) {
            this.a = aVar;
            this.b = z;
            this.c = bVar;
            this.d = iWebview;
            this.e = iApp;
            this.f = i;
            this.g = i2;
            this.h = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                io.dcloud.common.core.ui.a aVar = this.a;
                if (aVar != null && !aVar.q && !l.this.f) {
                    if ((this.b || this.c.obtainFrameOptions().titleNView == null) && this.d.checkWhite("auto")) {
                        l.this.a(this.d, this.e, this.b, this.a, this.h, this.c, this.f, this.g);
                        return;
                    }
                    System.currentTimeMillis();
                    String str = BaseInfo.sGlobalUserAgent;
                    this.e.setConfigProperty("timeout", "-1");
                    io.dcloud.common.core.ui.a aVar2 = this.a;
                    aVar2.a(aVar2, this.c, this.f, true, this.g);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    public interface m {
        void onAnimationEnd();
    }

    public l(ICore iCore) {
        super(iCore, "windowmgr", IMgr.MgrType.WindowMgr);
        this.a = new HashMap(0);
        this.b = Collections.synchronizedList(new ArrayList());
        this.c = null;
        this.d = null;
        this.f = false;
        this.g = null;
    }

    private boolean a(int i2, int i3, int i4, int i5, int i6, int i7) {
        return i2 == 0 && i3 == 0 && i4 == i6 && i5 == i7;
    }

    private void b(int i2, Object obj) {
        JSONObject jSONObjectCreateJSONObject;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            IApp iApp = (IApp) objArr[0];
            boolean zBooleanValue = objArr.length >= 3 ? ((Boolean) objArr[2]).booleanValue() : false;
            String strObtainAppId = iApp.obtainAppId();
            io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) this.a.get(strObtainAppId);
            io.dcloud.common.core.ui.b bVar = aVar.d;
            boolean z = bVar == null;
            if (bVar == null) {
                String stringExtra = iApp.obtainWebAppIntent().getStringExtra(IntentConst.FROM_STREAM_OPEN_STYLE);
                try {
                    if (TextUtils.isEmpty(stringExtra)) {
                        jSONObjectCreateJSONObject = JSONUtil.createJSONObject("{}");
                    } else {
                        jSONObjectCreateJSONObject = new JSONObject(stringExtra);
                        try {
                            iApp.obtainWebAppIntent().removeExtra(IntentConst.FROM_STREAM_OPEN_STYLE);
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    jSONObjectCreateJSONObject = null;
                }
                bVar = (io.dcloud.common.core.ui.b) processEvent(IMgr.MgrType.WindowMgr, 3, new Object[]{3, iApp, new Object[]{objArr[1], jSONObjectCreateJSONObject}, aVar});
                aVar.d = bVar;
            }
            IWebview iWebviewObtainWebView = bVar.obtainWebView();
            if (zBooleanValue) {
                iWebviewObtainWebView.obtainWindowView().setLayerType(0, null);
            } else {
                iWebviewObtainWebView.obtainWindowView().setLayerType(1, null);
            }
            Logger.d(Logger.MAIN_TAG, "load " + strObtainAppId + " launchPage =" + objArr[1]);
            iWebviewObtainWebView.loadUrl(String.valueOf(objArr[1]));
            if (z) {
                aVar.e(bVar);
            }
        }
    }

    protected synchronized void c() {
        if (this.b != null) {
            try {
                ArrayList arrayList = new ArrayList();
                for (m mVar : this.b) {
                    mVar.onAnimationEnd();
                    arrayList.add(mVar);
                }
                if (arrayList.size() > 0) {
                    this.b.removeAll(arrayList);
                }
                arrayList.clear();
            } catch (Exception unused) {
            }
        }
    }

    public void d(io.dcloud.common.core.ui.b bVar) {
        IApp iAppObtainApp = bVar.obtainApp();
        iAppObtainApp.setMaskLayer(true);
        iAppObtainApp.obtainWebAppRootView().obtainMainView().invalidate();
    }

    @Override // io.dcloud.common.DHInterface.AbsMgr
    public void dispose() {
        try {
            List list = this.b;
            if (list != null) {
                list.clear();
            }
            Iterator it = this.a.keySet().iterator();
            while (it.hasNext()) {
                ((io.dcloud.common.core.ui.a) this.a.get((String) it.next())).dispose();
            }
            this.a.clear();
            if (BaseInfo.ISDEBUG) {
                io.dcloud.common.core.ui.f.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0248 A[Catch: all -> 0x0031, TryCatch #1 {all -> 0x0031, blocks: (B:5:0x0028, B:303:0x0716, B:305:0x071a, B:307:0x0725, B:309:0x072b, B:311:0x0733, B:313:0x0739, B:314:0x0742, B:316:0x0749, B:318:0x074f, B:319:0x075a, B:321:0x075e, B:323:0x076d, B:325:0x0773, B:326:0x077c, B:328:0x0782, B:330:0x0788, B:331:0x0793, B:333:0x0797, B:335:0x07a9, B:337:0x07b3, B:336:0x07ae, B:338:0x0803, B:340:0x0811, B:342:0x0816, B:344:0x0824, B:346:0x0829, B:348:0x0841, B:349:0x084f, B:350:0x0883, B:352:0x0897, B:147:0x036a, B:149:0x036e, B:154:0x0390, B:150:0x037a, B:152:0x037e, B:166:0x03c3, B:168:0x03d8, B:169:0x03dd, B:170:0x03e5, B:172:0x03ef, B:174:0x03f8, B:176:0x0405, B:179:0x040f, B:181:0x0413, B:182:0x0417, B:184:0x0421, B:185:0x0454, B:186:0x045c, B:188:0x0461, B:189:0x046f, B:191:0x0474, B:193:0x0480, B:196:0x048a, B:198:0x048e, B:199:0x0492, B:201:0x049e, B:203:0x04a4, B:205:0x04a8, B:208:0x04b3, B:210:0x04bd, B:212:0x04c3, B:213:0x04cb, B:214:0x050c, B:217:0x0514, B:219:0x051a, B:221:0x0527, B:223:0x0533, B:225:0x0539, B:227:0x053f, B:229:0x0543, B:231:0x054d, B:233:0x0555, B:235:0x055d, B:236:0x0566, B:237:0x0571, B:238:0x0579, B:239:0x057c, B:241:0x0581, B:242:0x0589, B:243:0x059e, B:245:0x05a2, B:250:0x05ac, B:251:0x05d4, B:253:0x05d8, B:258:0x05e2, B:260:0x060c, B:262:0x061b, B:264:0x0625, B:265:0x0649, B:275:0x0687, B:277:0x0691, B:293:0x06ef, B:297:0x06f9, B:301:0x0706, B:302:0x070f, B:278:0x069b, B:280:0x069f, B:281:0x06ab, B:283:0x06af, B:287:0x06c1, B:290:0x06dd, B:133:0x02df, B:135:0x02e4, B:137:0x02fa, B:139:0x0302, B:141:0x0308, B:143:0x0343, B:144:0x034a, B:146:0x034e, B:22:0x005f, B:23:0x006c, B:24:0x0076, B:25:0x0080, B:26:0x008a, B:28:0x0098, B:30:0x00a2, B:32:0x00ab, B:34:0x00b0, B:36:0x00bc, B:38:0x00d7, B:39:0x00dd, B:40:0x00e5, B:48:0x0123, B:51:0x014a, B:53:0x014e, B:55:0x0159, B:56:0x0163, B:57:0x016c, B:59:0x0174, B:66:0x0191, B:69:0x0199, B:70:0x01a8, B:72:0x01b0, B:73:0x01be, B:75:0x01c2, B:77:0x01d2, B:79:0x01db, B:81:0x01e1, B:83:0x01fb, B:85:0x0219, B:87:0x0221, B:89:0x0227, B:91:0x022c, B:93:0x0230, B:95:0x0236, B:101:0x0244, B:103:0x0248, B:105:0x0250, B:108:0x0256, B:112:0x0262, B:113:0x0266, B:115:0x026a, B:120:0x0278, B:123:0x027e, B:96:0x0239, B:98:0x023d, B:124:0x0295, B:126:0x02a0, B:131:0x02b1, B:132:0x02b7, B:129:0x02a7, B:266:0x0650, B:268:0x0654, B:273:0x065d), top: B:453:0x0026, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0650 A[Catch: all -> 0x0031, TryCatch #1 {all -> 0x0031, blocks: (B:5:0x0028, B:303:0x0716, B:305:0x071a, B:307:0x0725, B:309:0x072b, B:311:0x0733, B:313:0x0739, B:314:0x0742, B:316:0x0749, B:318:0x074f, B:319:0x075a, B:321:0x075e, B:323:0x076d, B:325:0x0773, B:326:0x077c, B:328:0x0782, B:330:0x0788, B:331:0x0793, B:333:0x0797, B:335:0x07a9, B:337:0x07b3, B:336:0x07ae, B:338:0x0803, B:340:0x0811, B:342:0x0816, B:344:0x0824, B:346:0x0829, B:348:0x0841, B:349:0x084f, B:350:0x0883, B:352:0x0897, B:147:0x036a, B:149:0x036e, B:154:0x0390, B:150:0x037a, B:152:0x037e, B:166:0x03c3, B:168:0x03d8, B:169:0x03dd, B:170:0x03e5, B:172:0x03ef, B:174:0x03f8, B:176:0x0405, B:179:0x040f, B:181:0x0413, B:182:0x0417, B:184:0x0421, B:185:0x0454, B:186:0x045c, B:188:0x0461, B:189:0x046f, B:191:0x0474, B:193:0x0480, B:196:0x048a, B:198:0x048e, B:199:0x0492, B:201:0x049e, B:203:0x04a4, B:205:0x04a8, B:208:0x04b3, B:210:0x04bd, B:212:0x04c3, B:213:0x04cb, B:214:0x050c, B:217:0x0514, B:219:0x051a, B:221:0x0527, B:223:0x0533, B:225:0x0539, B:227:0x053f, B:229:0x0543, B:231:0x054d, B:233:0x0555, B:235:0x055d, B:236:0x0566, B:237:0x0571, B:238:0x0579, B:239:0x057c, B:241:0x0581, B:242:0x0589, B:243:0x059e, B:245:0x05a2, B:250:0x05ac, B:251:0x05d4, B:253:0x05d8, B:258:0x05e2, B:260:0x060c, B:262:0x061b, B:264:0x0625, B:265:0x0649, B:275:0x0687, B:277:0x0691, B:293:0x06ef, B:297:0x06f9, B:301:0x0706, B:302:0x070f, B:278:0x069b, B:280:0x069f, B:281:0x06ab, B:283:0x06af, B:287:0x06c1, B:290:0x06dd, B:133:0x02df, B:135:0x02e4, B:137:0x02fa, B:139:0x0302, B:141:0x0308, B:143:0x0343, B:144:0x034a, B:146:0x034e, B:22:0x005f, B:23:0x006c, B:24:0x0076, B:25:0x0080, B:26:0x008a, B:28:0x0098, B:30:0x00a2, B:32:0x00ab, B:34:0x00b0, B:36:0x00bc, B:38:0x00d7, B:39:0x00dd, B:40:0x00e5, B:48:0x0123, B:51:0x014a, B:53:0x014e, B:55:0x0159, B:56:0x0163, B:57:0x016c, B:59:0x0174, B:66:0x0191, B:69:0x0199, B:70:0x01a8, B:72:0x01b0, B:73:0x01be, B:75:0x01c2, B:77:0x01d2, B:79:0x01db, B:81:0x01e1, B:83:0x01fb, B:85:0x0219, B:87:0x0221, B:89:0x0227, B:91:0x022c, B:93:0x0230, B:95:0x0236, B:101:0x0244, B:103:0x0248, B:105:0x0250, B:108:0x0256, B:112:0x0262, B:113:0x0266, B:115:0x026a, B:120:0x0278, B:123:0x027e, B:96:0x0239, B:98:0x023d, B:124:0x0295, B:126:0x02a0, B:131:0x02b1, B:132:0x02b7, B:129:0x02a7, B:266:0x0650, B:268:0x0654, B:273:0x065d), top: B:453:0x0026, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0230 A[Catch: all -> 0x0031, TryCatch #1 {all -> 0x0031, blocks: (B:5:0x0028, B:303:0x0716, B:305:0x071a, B:307:0x0725, B:309:0x072b, B:311:0x0733, B:313:0x0739, B:314:0x0742, B:316:0x0749, B:318:0x074f, B:319:0x075a, B:321:0x075e, B:323:0x076d, B:325:0x0773, B:326:0x077c, B:328:0x0782, B:330:0x0788, B:331:0x0793, B:333:0x0797, B:335:0x07a9, B:337:0x07b3, B:336:0x07ae, B:338:0x0803, B:340:0x0811, B:342:0x0816, B:344:0x0824, B:346:0x0829, B:348:0x0841, B:349:0x084f, B:350:0x0883, B:352:0x0897, B:147:0x036a, B:149:0x036e, B:154:0x0390, B:150:0x037a, B:152:0x037e, B:166:0x03c3, B:168:0x03d8, B:169:0x03dd, B:170:0x03e5, B:172:0x03ef, B:174:0x03f8, B:176:0x0405, B:179:0x040f, B:181:0x0413, B:182:0x0417, B:184:0x0421, B:185:0x0454, B:186:0x045c, B:188:0x0461, B:189:0x046f, B:191:0x0474, B:193:0x0480, B:196:0x048a, B:198:0x048e, B:199:0x0492, B:201:0x049e, B:203:0x04a4, B:205:0x04a8, B:208:0x04b3, B:210:0x04bd, B:212:0x04c3, B:213:0x04cb, B:214:0x050c, B:217:0x0514, B:219:0x051a, B:221:0x0527, B:223:0x0533, B:225:0x0539, B:227:0x053f, B:229:0x0543, B:231:0x054d, B:233:0x0555, B:235:0x055d, B:236:0x0566, B:237:0x0571, B:238:0x0579, B:239:0x057c, B:241:0x0581, B:242:0x0589, B:243:0x059e, B:245:0x05a2, B:250:0x05ac, B:251:0x05d4, B:253:0x05d8, B:258:0x05e2, B:260:0x060c, B:262:0x061b, B:264:0x0625, B:265:0x0649, B:275:0x0687, B:277:0x0691, B:293:0x06ef, B:297:0x06f9, B:301:0x0706, B:302:0x070f, B:278:0x069b, B:280:0x069f, B:281:0x06ab, B:283:0x06af, B:287:0x06c1, B:290:0x06dd, B:133:0x02df, B:135:0x02e4, B:137:0x02fa, B:139:0x0302, B:141:0x0308, B:143:0x0343, B:144:0x034a, B:146:0x034e, B:22:0x005f, B:23:0x006c, B:24:0x0076, B:25:0x0080, B:26:0x008a, B:28:0x0098, B:30:0x00a2, B:32:0x00ab, B:34:0x00b0, B:36:0x00bc, B:38:0x00d7, B:39:0x00dd, B:40:0x00e5, B:48:0x0123, B:51:0x014a, B:53:0x014e, B:55:0x0159, B:56:0x0163, B:57:0x016c, B:59:0x0174, B:66:0x0191, B:69:0x0199, B:70:0x01a8, B:72:0x01b0, B:73:0x01be, B:75:0x01c2, B:77:0x01d2, B:79:0x01db, B:81:0x01e1, B:83:0x01fb, B:85:0x0219, B:87:0x0221, B:89:0x0227, B:91:0x022c, B:93:0x0230, B:95:0x0236, B:101:0x0244, B:103:0x0248, B:105:0x0250, B:108:0x0256, B:112:0x0262, B:113:0x0266, B:115:0x026a, B:120:0x0278, B:123:0x027e, B:96:0x0239, B:98:0x023d, B:124:0x0295, B:126:0x02a0, B:131:0x02b1, B:132:0x02b7, B:129:0x02a7, B:266:0x0650, B:268:0x0654, B:273:0x065d), top: B:453:0x0026, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0242  */
    @Override // io.dcloud.common.DHInterface.IMgr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object processEvent(io.dcloud.common.DHInterface.IMgr.MgrType r27, int r28, java.lang.Object r29) {
        /*
            Method dump skipped, instruction units count: 3014
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.processEvent(io.dcloud.common.DHInterface.IMgr$MgrType, int, java.lang.Object):java.lang.Object");
    }

    public synchronized void a(m mVar) {
        if (this.b.contains(mVar)) {
            return;
        }
        this.b.add(mVar);
    }

    void a(ViewGroup viewGroup, IApp iApp, IWebview iWebview, ViewGroup.LayoutParams layoutParams) {
        a(iApp, iApp.obtainAppId());
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) this.a.get(iApp.obtainAppId());
        io.dcloud.common.core.ui.b bVar = (io.dcloud.common.core.ui.b) iWebview.obtainFrameView();
        bVar.k = aVar;
        View viewObtainMainView = bVar.obtainMainView();
        if (viewObtainMainView.getParent() != null) {
            ((ViewGroup) viewObtainMainView.getParent()).removeView(viewObtainMainView);
        }
        viewGroup.addView(viewObtainMainView, layoutParams);
    }

    public void c(io.dcloud.common.core.ui.b bVar) {
        bVar.a(io.dcloud.common.core.ui.b.A);
        bVar.p();
        bVar.k.b(bVar);
        if (bVar.e()) {
            processEvent(IMgr.MgrType.WindowMgr, 28, bVar.b);
            bVar.b = null;
        }
        bVar.makeViewOptions_animate();
        bVar.l();
        bVar.k();
    }

    synchronized boolean a(IApp iApp, String str) {
        Logger.e("streamsdk", "come into createAppRootView pAppid===" + str);
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) this.a.get(str);
        if (aVar != null && aVar.h) {
            return false;
        }
        if (aVar != null && !aVar.h) {
            this.a.remove(str);
        }
        Logger.e("streamsdk", "come into createAppRootView and new le rootview  pAppid===" + str);
        Logger.d(Logger.MAIN_TAG, "create " + str + " AppRootView");
        io.dcloud.common.core.ui.a aVar2 = new io.dcloud.common.core.ui.a(iApp.getActivity(), iApp, null);
        aVar2.onAppStart(iApp);
        aVar2.obtainFrameOptions().setParentViewRect(iApp.getAppViewRect());
        aVar2.obtainFrameOptions().updateViewData(JSONUtil.createJSONObject("{}"), iApp.getInt(0), iApp.getInt(1));
        this.a.put(str, aVar2);
        iApp.obtainAppId();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0166 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01af  */
    /* JADX WARN: Type inference failed for: r14v4, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r25v0, types: [io.dcloud.common.core.ui.l] */
    /* JADX WARN: Type inference failed for: r5v11, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r6v22, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r6v7, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.graphics.Paint] */
    /* JADX WARN: Type inference failed for: r9v8, types: [android.graphics.Paint] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(int r26, java.lang.Object r27) {
        /*
            Method dump skipped, instruction units count: 1067
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(int, java.lang.Object):void");
    }

    void b(IApp iApp, IWebview iWebview) {
        if (iApp.obtainThridInfo(IApp.ConfigProperty.ThridInfo.SecondWebviewJsonData) != null || (BaseInfo.isWap2AppAppid(iApp.obtainAppId()) && !TextUtils.isEmpty(iApp.getOriginalDirectPage()))) {
            processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createSecondWebview", null});
        }
    }

    private io.dcloud.common.core.ui.b b(IApp iApp) {
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) iApp.obtainWebAppRootView();
        if (aVar != null) {
            return aVar.h();
        }
        return null;
    }

    private io.dcloud.common.core.ui.a b() {
        return (io.dcloud.common.core.ui.a) this.a.get(String.valueOf(processEvent(IMgr.MgrType.AppMgr, 11, null)));
    }

    public void b(io.dcloud.common.core.ui.b bVar) {
        IApp iAppObtainApp = bVar.obtainApp();
        iAppObtainApp.setMaskLayer(false);
        iAppObtainApp.obtainWebAppRootView().obtainMainView().invalidate();
    }

    private io.dcloud.common.core.ui.c b(IApp iApp, io.dcloud.common.core.ui.a aVar) {
        JSONObject jSONObjectObtainThridInfo = iApp.obtainThridInfo(IApp.ConfigProperty.ThridInfo.Tabbar);
        if (jSONObjectObtainThridInfo == null) {
            return null;
        }
        io.dcloud.common.core.ui.c cVar = new io.dcloud.common.core.ui.c(iApp.getActivity(), this, iApp, aVar, 8, jSONObjectObtainThridInfo);
        int i2 = iApp.getInt(0);
        int i3 = iApp.getInt(1);
        ViewOptions viewOptionsObtainFrameOptions = cVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = aVar.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions2.height > i3) {
            viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions2.mJsonViewOption, i2, i3);
        }
        viewOptionsObtainFrameOptions.setParentViewRect(viewOptionsObtainFrameOptions2);
        viewOptionsObtainFrameOptions.popGesture = iApp.getPopGesture();
        View viewObtainMainView = cVar.obtainMainView();
        viewOptionsObtainFrameOptions.width = -1;
        viewOptionsObtainFrameOptions.height = -1;
        AdaFrameItem.LayoutParamsUtil.setViewLayoutParams(viewObtainMainView, viewOptionsObtainFrameOptions.left, viewOptionsObtainFrameOptions.top, -1, -1);
        aVar.addFrameItem(cVar, new ViewGroup.LayoutParams(-1, -1));
        cVar.k.e(cVar);
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{cVar.obtainWebView(), "UI", "", null});
        return cVar;
    }

    public void a(IApp iApp, io.dcloud.common.core.ui.a aVar, String str, String str2, JSONObject jSONObject) {
        String strOptString = (jSONObject == null || !jSONObject.has(AbsoluteConst.XML_PATH)) ? null : jSONObject.optString(AbsoluteConst.XML_PATH);
        if (PdrUtil.isEmpty(strOptString)) {
            return;
        }
        iApp.setConfigProperty(AbsoluteConst.UNIAPP_WEEX_JS_SERVICE, String.valueOf(true));
        int i2 = iApp.getInt(0);
        int i3 = iApp.getInt(1);
        io.dcloud.common.core.ui.b bVar = new io.dcloud.common.core.ui.b(iApp.getActivity(), this, iApp, aVar, 7, null);
        io.dcloud.common.core.ui.d dVar = new io.dcloud.common.core.ui.d(iApp.getActivity(), bVar, strOptString, str, jSONObject, true);
        dVar.initWebviewUUID(str);
        ViewOptions viewOptionsObtainFrameOptions = bVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = aVar.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions2.height > i3) {
            viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions2.mJsonViewOption, i2, i3);
        }
        viewOptionsObtainFrameOptions.setParentViewRect(viewOptionsObtainFrameOptions2);
        viewOptionsObtainFrameOptions.popGesture = iApp.getPopGesture();
        View viewObtainMainView = bVar.obtainMainView();
        int i4 = viewOptionsObtainFrameOptions.width;
        if (i4 == i2) {
            i4 = -1;
        }
        int i5 = viewOptionsObtainFrameOptions.height;
        if (i5 == i3) {
            i5 = -1;
        }
        AdaFrameItem.LayoutParamsUtil.setViewLayoutParams(viewObtainMainView, viewOptionsObtainFrameOptions.left, viewOptionsObtainFrameOptions.top, i4, i5);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        bVar.addFrameItem(bVar.obtainWebviewParent(), layoutParams);
        bVar.setVisible(false, false);
        aVar.addFrameItem(bVar, layoutParams);
        dVar.setFrameId(str2);
        bVar.k.e(bVar);
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{dVar, "UI", "", null});
    }

    private void a(IApp iApp, ViewGroup viewGroup) {
        if (!BaseInfo.isUniNViewBackgroud() || BaseInfo.isWeexUniJs(iApp)) {
            return;
        }
        Object objProcessEvent = processEvent(IMgr.MgrType.AppMgr, 24, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("template", String.valueOf(objProcessEvent));
            jSONObject.put(AbsoluteConst.XML_PATH, iApp.obtainAppDataPath() + "nvue_service.js");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        processEvent(IMgr.MgrType.FeatureMgr, 10, new Object[]{iApp, "weex,io.dcloud.feature.weex.WeexFeature", "createServiceUniNView", new Object[]{iApp, jSONObject, viewGroup, "__uniapp__nvue"}});
    }

    private boolean a(IApp iApp) {
        return (TextUtils.isEmpty(iApp.getOriginalDirectPage()) || iApp.obtainWebAppIntent().hasExtra(IntentConst.DIRECT_PAGE)) ? false : true;
    }

    private void a(int i2, io.dcloud.common.core.ui.a aVar, String str, io.dcloud.common.core.ui.b bVar, IApp iApp, String str2, IWebview iWebview) {
        boolean z;
        IWebviewStateListener iWebviewStateListenerObtainLaunchPageStateListener = iApp.obtainLaunchPageStateListener();
        if (iWebviewStateListenerObtainLaunchPageStateListener != null) {
            boolean z2 = PdrUtil.parseBoolean(String.valueOf(iWebviewStateListenerObtainLaunchPageStateListener.onCallBack(-1, iWebview)), true, false);
            iWebview.addStateListener(iApp.obtainLaunchPageStateListener());
            z = z2;
        } else {
            z = true;
        }
        int i3 = Integer.parseInt(iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_DELAY));
        boolean z3 = Boolean.parseBoolean(iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_AUTOCLOSE));
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z4 = BaseInfo.isWap2AppAppid(str) && Boolean.parseBoolean(iApp.obtainConfigProperty("w2a_autoclose"));
        Intent intentObtainWebAppIntent = iApp.obtainWebAppIntent();
        String strObtainConfigProperty = iApp.obtainConfigProperty(IApp.ConfigProperty.CONFIG_TARGET);
        if (TextUtils.isEmpty(strObtainConfigProperty)) {
            strObtainConfigProperty = "default";
        }
        boolean z5 = z3 || z4;
        int intExtra = intentObtainWebAppIntent.getIntExtra(IntentConst.FROM_STREAM_OPEN_TIMEOUT, 6000);
        boolean booleanExtra = intentObtainWebAppIntent.getBooleanExtra(IntentConst.FROM_STREAM_OPEN_AUTOCLOSE, z5);
        int i4 = (strObtainConfigProperty.startsWith("id:") && booleanExtra) ? ADSim.INTISPLSH : intExtra;
        int i5 = z4 ? Integer.parseInt(iApp.obtainConfigProperty("w2a_delay")) : i3;
        if (BaseInfo.isWap2AppAppid(str) && PdrUtil.isNetPath(str2)) {
            this.c = AbsoluteConst.EVENTS_RENDERING;
        } else {
            this.c = AbsoluteConst.EVENTS_LOADED;
        }
        String strObtainConfigProperty2 = iApp.obtainConfigProperty("event");
        if (!TextUtils.isEmpty(strObtainConfigProperty2)) {
            this.c = strObtainConfigProperty2;
        }
        Logger.d(Logger.MAIN_TAG, "_need_auto_close_splash = " + z3 + ";_delay=" + i3 + ";appid=" + str + ";f_event=" + this.c);
        iWebview.addStateListener(new i(strObtainConfigProperty, booleanExtra, iApp, aVar, str2, iWebview, i2, bVar, i5, jCurrentTimeMillis));
        if (booleanExtra) {
            a(i4, aVar, bVar, i5);
        }
        if (!z || bVar.isChildOfFrameView) {
            return;
        }
        aVar.e(bVar);
    }

    private void a(int i2, io.dcloud.common.core.ui.a aVar, io.dcloud.common.core.ui.b bVar, int i3) {
        if (this.d != null) {
            aVar.obtainMainView().removeCallbacks(this.d);
        }
        this.d = new j(aVar, bVar, i3);
        aVar.obtainMainView().postDelayed(this.d, i2);
    }

    private void a(io.dcloud.common.core.ui.a aVar) {
        if (this.d == null || aVar == null) {
            return;
        }
        aVar.obtainMainView().removeCallbacks(this.d);
        this.d = null;
    }

    void a(IApp iApp, IWebview iWebview, JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(0, (Object) null);
            jSONArray.put(1, (Object) null);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, (Object) null);
            jSONArray.put(2, jSONArray2);
            jSONArray.put(3, jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createHDWebview", jSONArray});
    }

    void a(IApp iApp, IWebview iWebview) {
        if (BaseInfo.isWap2AppAppid(iApp.obtainAppId()) && iApp.obtainWebAppIntent().hasExtra(IntentConst.DIRECT_PAGE)) {
            processEvent(IMgr.MgrType.FeatureMgr, 1, new Object[]{iWebview, "UI", "n_createDirectWebview", null});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IApp iApp, io.dcloud.common.core.ui.a aVar) {
        io.dcloud.common.core.ui.b bVarH;
        if (aVar == null || aVar.q || (bVarH = aVar.h()) == null) {
            return;
        }
        k kVar = new k(bVarH, aVar, iApp);
        Runnable runnable = this.e;
        if (runnable != null) {
            this.f = true;
            MessageHandler.removeCallbacks(runnable);
        }
        MessageHandler.postDelayed(kVar, 100L);
    }

    public void a(IWebview iWebview, IApp iApp, boolean z, io.dcloud.common.core.ui.a aVar, int i2, io.dcloud.common.core.ui.b bVar, int i3, int i4) {
        RunnableC0037l runnableC0037l = new RunnableC0037l(aVar, z, bVar, iWebview, iApp, i3, i4, i2);
        this.e = runnableC0037l;
        MessageHandler.postDelayed(runnableC0037l, 100L);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03fe A[LOOP:0: B:180:0x03f8->B:182:0x03fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    io.dcloud.common.core.ui.b a(int r27, io.dcloud.common.DHInterface.IApp r28, io.dcloud.common.core.ui.a r29, io.dcloud.common.core.ui.b r30, io.dcloud.common.DHInterface.IEventCallback r31, java.lang.Object[] r32, io.dcloud.common.DHInterface.IDCloudWebviewClientListener r33) {
        /*
            Method dump skipped, instruction units count: 1290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(int, io.dcloud.common.DHInterface.IApp, io.dcloud.common.core.ui.a, io.dcloud.common.core.ui.b, io.dcloud.common.DHInterface.IEventCallback, java.lang.Object[], io.dcloud.common.DHInterface.IDCloudWebviewClientListener):io.dcloud.common.core.ui.b");
    }

    private void a(io.dcloud.common.core.ui.b bVar, boolean z) {
        int i2 = bVar.obtainApp().getInt(0);
        int i3 = bVar.obtainApp().getInt(1);
        AdaWebViewParent adaWebViewParentObtainWebviewParent = bVar.obtainWebviewParent();
        ViewOptions viewOptionsObtainFrameOptions = bVar.obtainFrameOptions();
        ViewOptions viewOptionsObtainFrameOptions2 = adaWebViewParentObtainWebviewParent.obtainFrameOptions();
        io.dcloud.common.core.ui.a aVar = (io.dcloud.common.core.ui.a) bVar.obtainWebAppRootView();
        ViewOptions viewOptionsObtainFrameOptions3 = aVar.obtainFrameOptions();
        viewOptionsObtainFrameOptions2.setParentViewRect(viewOptionsObtainFrameOptions3);
        viewOptionsObtainFrameOptions2.updateViewData(viewOptionsObtainFrameOptions);
        viewOptionsObtainFrameOptions.left = 0;
        viewOptionsObtainFrameOptions.top = 0;
        viewOptionsObtainFrameOptions.anim_top = 0;
        viewOptionsObtainFrameOptions.anim_left = 0;
        ViewHelper.setY(bVar.obtainMainView(), 0.0f);
        ViewHelper.setX(bVar.obtainMainView(), 0.0f);
        viewOptionsObtainFrameOptions.width = i2;
        viewOptionsObtainFrameOptions.height = i3;
        int i4 = viewOptionsObtainFrameOptions2.left;
        int i5 = viewOptionsObtainFrameOptions2.top;
        int i6 = viewOptionsObtainFrameOptions2.width;
        int i7 = viewOptionsObtainFrameOptions2.height;
        adaWebViewParentObtainWebviewParent.setFrameOptions_Birth(ViewOptions.createViewOptionsData(viewOptionsObtainFrameOptions2, viewOptionsObtainFrameOptions3, viewOptionsObtainFrameOptions2));
        viewOptionsObtainFrameOptions2.allowUpdate = false;
        viewOptionsObtainFrameOptions2.maskColor = viewOptionsObtainFrameOptions.maskColor;
        adaWebViewParentObtainWebviewParent.mNeedOrientationUpdate = true;
        viewOptionsObtainFrameOptions.checkValueIsPercentage("left", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("top", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("width", -1, -1, false, true);
        viewOptionsObtainFrameOptions.checkValueIsPercentage("height", -1, -1, false, true);
        if (a(i4, i5, i6, i7, aVar.obtainFrameOptions().width, aVar.obtainFrameOptions().height)) {
            Logger.d("winmgr", "createWindow use LayoutParams.MATCH_PARENT !");
            bVar.addFrameItem(bVar.obtainWebviewParent(), new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        bVar.addFrameItem(bVar.obtainWebviewParent(), AdaFrameItem.LayoutParamsUtil.createLayoutParams(i4, i5, i6, i7));
        if (z) {
            bVar.a(i2, i3);
            return;
        }
        int i8 = i4 + i6;
        if (i8 > i2 || i5 + i7 > i3) {
            StringBuilder sb = new StringBuilder("updateLayoutParams allW=");
            sb.append(i8);
            sb.append(";pdrW=");
            sb.append(i2);
            sb.append(";pdrH=");
            sb.append(i3);
            sb.append(";allH=");
            int i9 = i5 + i7;
            sb.append(i9);
            Logger.d("winmgr", sb.toString());
            bVar.a(Math.max(i8, i2), Math.max(i9, i3));
        }
    }

    private boolean a(int i2, String str, String str2, boolean z) {
        return (TextUtils.isEmpty(str2) || !str2.startsWith("id:") || PdrUtil.isEmpty(str)) ? i2 == 4 ? !TextUtils.isEmpty(str2) && str2.equals("second") : i2 == 5 && z : str2.substring(3).equals(str);
    }

    private void a(AdaFrameItem adaFrameItem, IApp iApp) {
        int statusHeight;
        int iStringToColor;
        ViewOptions viewOptionsObtainFrameOptions = adaFrameItem.obtainFrameOptions();
        if (viewOptionsObtainFrameOptions.isStatusbar) {
            if ((PdrUtil.isEmpty(viewOptionsObtainFrameOptions.mStatusbarColor) || iApp.obtainStatusBarMgr().isImmersive) && -1 != (statusHeight = DeviceInfo.getStatusHeight(adaFrameItem.getContext()))) {
                int iHashCode = adaFrameItem.hashCode();
                int statusBarDefaultColor = iApp.obtainStatusBarMgr().getStatusBarDefaultColor();
                if (!PdrUtil.isEmpty(viewOptionsObtainFrameOptions.mStatusbarColor)) {
                    try {
                        iStringToColor = Color.parseColor(viewOptionsObtainFrameOptions.mStatusbarColor);
                    } catch (Exception unused) {
                        iStringToColor = PdrUtil.stringToColor(viewOptionsObtainFrameOptions.mStatusbarColor);
                    }
                    if (PdrUtil.checkStatusbarColor(iStringToColor)) {
                        statusBarDefaultColor = iStringToColor;
                    }
                }
                ViewGroup viewGroup = (ViewGroup) adaFrameItem.obtainMainView();
                if (viewGroup.findViewById(iHashCode) == null && viewOptionsObtainFrameOptions.height != 0) {
                    StatusBarView statusBarView = new StatusBarView(adaFrameItem.getContext());
                    statusBarView.setStatusBarHeight(statusHeight);
                    statusBarView.setBackgroundColor(statusBarDefaultColor);
                    statusBarView.setId(iHashCode);
                    ViewGroup viewGroup2 = (ViewGroup) ((AdaFrameView) adaFrameItem).obtainWebviewParent().obtainMainView();
                    if (viewOptionsObtainFrameOptions.isStatusbarDodifyHeight) {
                        viewGroup.getLayoutParams().height = viewOptionsObtainFrameOptions.height + DeviceInfo.sStatusBarHeight;
                        viewGroup.addView(statusBarView);
                    } else {
                        viewGroup.addView(statusBarView);
                    }
                    JSONObject jSONObject = viewOptionsObtainFrameOptions.titleNView;
                    if (jSONObject == null || !TitleNViewUtil.isTitleTypeForDef(jSONObject)) {
                        viewGroup2.post(new c(adaFrameItem));
                    }
                }
            }
        }
    }

    private io.dcloud.common.core.ui.b a() {
        io.dcloud.common.core.ui.a aVarB = b();
        if (aVarB != null) {
            return aVarB.h();
        }
        return null;
    }

    public void a(io.dcloud.common.core.ui.b bVar) {
        bVar.a(io.dcloud.common.core.ui.b.B);
        bVar.p();
        bVar.k.b(bVar);
        if (bVar.e()) {
            processEvent(IMgr.MgrType.WindowMgr, 28, bVar.b);
            bVar.b = null;
        }
        bVar.r();
        bVar.i();
        bVar.i = false;
        bVar.h = false;
        bVar.inStack = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[PHI: r1
      0x006e: PHI (r1v17 java.lang.String) = 
      (r1v16 java.lang.String)
      (r1v16 java.lang.String)
      (r1v16 java.lang.String)
      (r1v18 java.lang.String)
      (r1v18 java.lang.String)
     binds: [B:19:0x008a, B:21:0x0090, B:26:0x00a1, B:8:0x0054, B:13:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, java.lang.Object[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r17, boolean r18, org.json.JSONObject r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, boolean, org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0101  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(io.dcloud.common.core.ui.b r30, io.dcloud.common.core.ui.b r31) {
        /*
            Method dump skipped, instruction units count: 691
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.core.ui.l.a(io.dcloud.common.core.ui.b, io.dcloud.common.core.ui.b):void");
    }
}
