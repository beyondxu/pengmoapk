package io.dcloud.p;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.taobao.weex.performance.WXInstanceApm;
import io.dcloud.common.adapter.util.CanvasHelper;
import io.dcloud.common.util.AESUtil;
import io.dcloud.common.util.Base64;
import io.dcloud.common.util.CreateShortResultReceiver;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.language.LanguageUtil;
import io.dcloud.feature.internal.sdk.SDK;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static b j;
    private volatile Context a;
    private boolean b = false;
    private JSONObject c = new JSONObject();
    private JSONObject d = new JSONObject();
    private JSONObject e = new JSONObject();
    private JSONObject f = new JSONObject();
    private JSONObject g = new JSONObject();
    private JSONObject h = new JSONObject();
    private Handler i = new a();

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                b.this.a();
            } catch (Exception unused) {
            }
            sendEmptyMessageDelayed(1, Double.valueOf((Math.random() + 1.0d) * 1000.0d * 60.0d).longValue());
        }
    }

    /* JADX INFO: renamed from: io.dcloud.p.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    class HandlerC0069b extends Handler {
        HandlerC0069b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                b.this.a();
            } catch (Exception e) {
                e.printStackTrace();
            }
            sendEmptyMessageDelayed(1, Double.valueOf((Math.random() + 1.0d) * 1000.0d * 60.0d).longValue());
        }
    }

    private b() {
        if (j != null) {
            throw new IllegalStateException();
        }
    }

    private String b(String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 128).applicationInfo;
            return (applicationInfo == null || (bundle = applicationInfo.metaData) == null) ? "" : bundle.getString(str);
        } catch (Exception unused) {
            return "";
        }
    }

    private void c() {
        if (this.d.length() > 0) {
            return;
        }
        try {
            this.d.put("r", "1");
            this.d.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&jmara&n}{agf&JmaRa{")).getMethod(e1.b("om|[lc^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("ag&lkdg}l&{lc&xgdq&ilix|mz&k}{|ge&jr&K}{|geJRIlix|mz"));
                this.d.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.d.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0079 A[Catch: Exception -> 0x007e, TRY_LEAVE, TryCatch #1 {Exception -> 0x007e, blocks: (B:3:0x000d, B:5:0x0018, B:7:0x001c, B:9:0x002a, B:13:0x0033, B:16:0x005e, B:18:0x0079), top: B:22:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.Map d() {
        /*
            r6 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.String r1 = ""
            java.lang.String r2 = "app_id"
            r0.put(r2, r1)
            r1 = 1
            java.lang.String r1 = io.dcloud.p.r4.a(r1)     // Catch: java.lang.Exception -> L7e
            byte[] r1 = io.dcloud.common.util.Base64.decode2bytes(r1)     // Catch: java.lang.Exception -> L7e
            r3 = 4
            if (r1 != 0) goto L1c
            r6.a(r3)     // Catch: java.lang.Exception -> L7e
            return r0
        L1c:
            java.lang.String r4 = io.dcloud.p.e1.e()     // Catch: java.lang.Exception -> L7e
            java.lang.String r5 = io.dcloud.p.e1.b()     // Catch: java.lang.Exception -> L7e
            java.lang.String r1 = io.dcloud.common.util.AESUtil.decrypt(r4, r5, r1)     // Catch: java.lang.Exception -> L7e
            if (r1 != 0) goto L2e
            r6.a(r3)     // Catch: java.lang.Exception -> L7e
            return r0
        L2e:
            r3 = 0
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L44
            java.lang.Object r2 = r1.newInstance()     // Catch: java.lang.Exception -> L7e
            java.lang.String r4 = "NM_getCustomInfo"
            java.lang.reflect.Method r1 = r1.getMethod(r4, r3)     // Catch: java.lang.Exception -> L7e
            java.lang.Object r1 = r1.invoke(r2, r3)     // Catch: java.lang.Exception -> L7e
            java.util.Map r1 = (java.util.Map) r1     // Catch: java.lang.Exception -> L7e
            return r1
        L44:
            java.lang.String r1 = io.dcloud.p.e1.e()     // Catch: java.lang.Exception -> L5e
            java.lang.String r4 = io.dcloud.p.e1.b()     // Catch: java.lang.Exception -> L5e
            r5 = 9
            java.lang.String r5 = io.dcloud.p.r4.a(r5)     // Catch: java.lang.Exception -> L5e
            byte[] r5 = io.dcloud.common.util.Base64.decode2bytes(r5)     // Catch: java.lang.Exception -> L5e
            java.lang.String r1 = io.dcloud.common.util.AESUtil.decrypt(r1, r4, r5)     // Catch: java.lang.Exception -> L5e
            java.lang.Class r3 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L5e
        L5e:
            java.lang.String r1 = io.dcloud.p.e1.e()     // Catch: java.lang.Exception -> L7e
            java.lang.String r4 = io.dcloud.p.e1.b()     // Catch: java.lang.Exception -> L7e
            r5 = 8
            java.lang.String r5 = io.dcloud.p.r4.a(r5)     // Catch: java.lang.Exception -> L7e
            byte[] r5 = io.dcloud.common.util.Base64.decode2bytes(r5)     // Catch: java.lang.Exception -> L7e
            java.lang.String r1 = io.dcloud.common.util.AESUtil.decrypt(r1, r4, r5)     // Catch: java.lang.Exception -> L7e
            java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L7e
            if (r3 != 0) goto L7e
            java.lang.String r1 = "unknow"
            r0.put(r2, r1)     // Catch: java.lang.Exception -> L7e
        L7e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.p.b.d():java.util.Map");
    }

    private String e() {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(12));
        if (bArrDecode2bytes == null) {
            a(4);
            return "";
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return "";
        }
        try {
            Field declaredField = Class.forName(strDecrypt).getDeclaredField("appId");
            declaredField.setAccessible(true);
            return (String) declaredField.get(null);
        } catch (Exception unused) {
            return "";
        }
    }

    private String f() {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(2));
        if (bArrDecode2bytes == null) {
            a(4);
            return "";
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return "";
        }
        for (List list : r4.b()) {
            try {
                Class<?> cls = Class.forName(e1.b((String) list.get(0)));
                return (String) cls.getMethod(e1.b((String) list.get(2)), null).invoke(cls.getDeclaredMethod(e1.b((String) list.get(1)), null).invoke(null, null), null);
            } catch (Exception unused) {
            }
        }
        try {
            Class<?> cls2 = Class.forName(strDecrypt);
            Object objInvoke = cls2.getMethod("getAppStatus", null).invoke(cls2.getMethod("getInstance", null).invoke(null, null), null);
            if (objInvoke != null) {
                return (String) objInvoke.getClass().getMethod("getAPPID", null).invoke(objInvoke, null);
            }
        } catch (Exception unused2) {
        }
        return "";
    }

    private void g() {
        if (this.f.length() > 0) {
            return;
        }
        try {
            this.f.put("r", "1");
            this.f.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&iddaifkm&{{x&il&ixa&[IIddaifkmIl[lc")).getMethod(e1.b("om|Qg}\\}aILF[LC^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("ag&lkdg}l&{lc&xgdq&ilix|mz&k}{|ge&q|&K}{|geQ\\Ilix|mz"));
                this.f.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.f.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    private void h() {
        if (this.e.length() > 0) {
            return;
        }
        try {
            this.e.put("r", "1");
            this.e.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&baiil{&il~a{|i&{lc&Il~a{|i[lc")).getMethod(e1.b("om^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("kge&baiil{&}fail&Il~a{|iK}{|geIlix|mz"));
                this.e.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.e.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    private String i() {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(10));
        if (bArrDecode2bytes == null) {
            a(4);
            return "";
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return "";
        }
        try {
            return (String) Class.forName(strDecrypt).getMethod("getAppId", null).invoke(null, null);
        } catch (Exception unused) {
            return "";
        }
    }

    private String j() {
        try {
            for (List list : r4.c()) {
                try {
                    Class<?> cls = Class.forName(e1.b((String) list.get(0)));
                    Method declaredMethod = cls.getDeclaredMethod(e1.b((String) list.get(1)), null);
                    declaredMethod.setAccessible(true);
                    return (String) cls.getMethod(e1.b((String) list.get(2)), null).invoke(declaredMethod.invoke(null, null), null);
                } catch (Exception unused) {
                }
            }
            return "";
        } catch (Exception unused2) {
            return "";
        }
    }

    private String k() {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(11));
        if (bArrDecode2bytes == null) {
            a(4);
            return "";
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return "";
        }
        try {
            Class<?> cls = Class.forName(strDecrypt);
            Object objInvoke = cls.getMethod("sharedAds", null).invoke(null, null);
            Method method = cls.getMethod("getAppId", null);
            method.setAccessible(true);
            return (String) method.invoke(objInvoke, null);
        } catch (Exception unused) {
            return "";
        }
    }

    private void l() {
        if (this.h.length() > 0) {
            return;
        }
        try {
            this.h.put("r", "1");
            this.h.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&\u007fifoeia&ixx{lclmp&_EIl[lc")).getMethod(e1.b("om|[lc^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("kge&\u007fe&\u007feilix|mz}fail&_E[lcAfa|"));
                this.h.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.h.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    private void m() {
        if (this.g.length() > 0) {
            return;
        }
        try {
            this.g.put("r", "1");
            this.g.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&gk|gx}{&il&Gk|gx}{")).getMethod(e1.b("om|[lc^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("ag&lkdg}l&{lc&xgdq&ilix|mz&rq&RQILIlix|mz"));
                this.g.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.g.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    public static b o() {
        if (j == null) {
            synchronized (b.class) {
                if (j == null) {
                    j = new b();
                }
            }
        }
        return j;
    }

    public List n() {
        ArrayList arrayList = new ArrayList();
        try {
            ActivityInfo[] activityInfoArr = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 1).activities;
            if (activityInfoArr != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    arrayList.add(activityInfo.name);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public void p() {
        Handler handler = this.i;
        if (handler != null) {
            this.b = false;
            handler.removeMessages(1);
            this.i = null;
        }
    }

    public void a(Context context) {
        Handler handler;
        if (!PdrUtil.checkIntl() || LanguageUtil.getDeviceDefCountry().equalsIgnoreCase(e1.b("KF"))) {
            this.a = context;
            try {
                if (SDK.isUniMPSDK()) {
                    return;
                }
                if (Math.abs(Math.random() * 5.0d) == 5.0d && (handler = this.i) != null) {
                    handler.removeMessages(1);
                    this.i = null;
                }
                if (this.i == null) {
                    this.i = new HandlerC0069b();
                }
                if (this.i.hasMessages(1)) {
                    return;
                }
                this.i.sendEmptyMessage(1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void b() {
        if (this.c.length() > 0) {
            return;
        }
        try {
            this.c.put("r", "1");
            this.c.put(CreateShortResultReceiver.KEY_VERSIONNAME, (String) Class.forName(e1.b("kge&jial}&egjil{&{lc&ixa&Il[m||afo{")).getMethod(e1.b("om|[LC^mz{agf"), null).invoke(null, null));
        } catch (Exception unused) {
        }
        try {
            try {
                Class.forName(e1.b("ag&lkdg}l&{lc&xgdq&ilix|mz&jl&JLIlIlix|mz"));
                this.c.put("ada", "1");
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.c.put("ada", WXInstanceApm.VALUE_ERROR_CODE_DEFAULT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(47:0|2|(1:10)(1:9)|11|(1:17)(1:16)|18|(1:24)(1:23)|25|(28:(65:27|(0)(1:30)|33|(62:35|(0)(1:38)|49|50|(2:54|(1:67)(2:(2:276|57)(2:60|(2:62|(2:274|64)))|67))(0)|68|(1:72)|73|(1:77)|78|(1:82)|83|(1:87)|88|(1:92)|93|(1:97)|98|268|99|(3:101|(4:103|280|104|(5:(3:107|290|108)(1:110)|296|111|(1:113)|114)(1:115))(1:116)|117)(0)|262|118|(3:120|(4:122|272|123|(6:125|286|126|278|127|128)(1:129))(1:130)|131)(0)|258|132|(3:134|(4:136|266|137|(6:139|284|140|270|141|142)(1:143))(1:144)|145)(0)|260|146|(3:148|(4:150|288|151|(3:294|153|154))(1:156)|157)(0)|160|(7:300|162|163|298|164|(2:166|(3:302|168|169))|(27:264|198|(1:(2:200|(2:305|202)(1:203))(2:304|204))|205|(2:292|207)|(1:209)|(1:211)|(1:213)|(1:215)|216|(1:218)|219|(1:221)|222|(1:224)|225|(1:227)|228|(1:230)|231|(1:233)|234|(1:236)|237|(1:239)|240|241)(1:307))(1:173)|174|(0)|196|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241)(1:39)|40|(1:49)(2:44|(2:282|46))|50|(3:52|54|(0)(0))(0)|68|(2:70|72)(0)|73|(2:75|77)(0)|78|(2:80|82)(0)|83|(2:85|87)(0)|88|(2:90|92)(0)|93|(2:95|97)(0)|98|268|99|(0)(0)|262|118|(0)(0)|258|132|(0)(0)|260|146|(0)(0)|160|(0)(0)|174|(0)|196|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241)(1:31)|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241)|32|33|(0)(0)|40|(2:42|49)(0)|50|(0)(0)|68|(0)(0)|73|(0)(0)|78|(0)(0)|83|(0)(0)|88|(0)(0)|93|(0)(0)|98|268|99|(0)(0)|262|118|(0)(0)|258|132|(0)(0)|260|146|(0)(0)|160|(0)(0)|174|(0)|196|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(74:0|2|(1:10)(1:9)|11|(1:17)(1:16)|18|(1:24)(1:23)|25|(65:27|(0)(1:30)|33|(62:35|(0)(1:38)|49|50|(2:54|(1:67)(2:(2:276|57)(2:60|(2:62|(2:274|64)))|67))(0)|68|(1:72)|73|(1:77)|78|(1:82)|83|(1:87)|88|(1:92)|93|(1:97)|98|268|99|(3:101|(4:103|280|104|(5:(3:107|290|108)(1:110)|296|111|(1:113)|114)(1:115))(1:116)|117)(0)|262|118|(3:120|(4:122|272|123|(6:125|286|126|278|127|128)(1:129))(1:130)|131)(0)|258|132|(3:134|(4:136|266|137|(6:139|284|140|270|141|142)(1:143))(1:144)|145)(0)|260|146|(3:148|(4:150|288|151|(3:294|153|154))(1:156)|157)(0)|160|(7:300|162|163|298|164|(2:166|(3:302|168|169))|(27:264|198|(1:(2:200|(2:305|202)(1:203))(2:304|204))|205|(2:292|207)|(1:209)|(1:211)|(1:213)|(1:215)|216|(1:218)|219|(1:221)|222|(1:224)|225|(1:227)|228|(1:230)|231|(1:233)|234|(1:236)|237|(1:239)|240|241)(1:307))(1:173)|174|(0)|196|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241)(1:39)|40|(1:49)(2:44|(2:282|46))|50|(3:52|54|(0)(0))(0)|68|(2:70|72)(0)|73|(2:75|77)(0)|78|(2:80|82)(0)|83|(2:85|87)(0)|88|(2:90|92)(0)|93|(2:95|97)(0)|98|268|99|(0)(0)|262|118|(0)(0)|258|132|(0)(0)|260|146|(0)(0)|160|(0)(0)|174|(0)|196|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241)(1:31)|32|33|(0)(0)|40|(2:42|49)(0)|50|(0)(0)|68|(0)(0)|73|(0)(0)|78|(0)(0)|83|(0)(0)|88|(0)(0)|93|(0)(0)|98|268|99|(0)(0)|262|118|(0)(0)|258|132|(0)(0)|260|146|(0)(0)|160|(0)(0)|174|(0)|196|264|198|(2:(0)(0)|203)|205|(0)|(0)|(0)|(0)|(0)|216|(0)|219|(0)|222|(0)|225|(0)|228|(0)|231|(0)|234|(0)|237|(0)|240|241|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x036f, code lost:
    
        r19 = r5;
        r5 = io.dcloud.sdk.core.util.Const.TYPE_PG;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x026f A[Catch: Exception -> 0x02ac, TRY_LEAVE, TryCatch #5 {Exception -> 0x02ac, blocks: (B:99:0x0269, B:101:0x026f), top: B:268:0x0269 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02b9 A[Catch: Exception -> 0x02ee, TRY_LEAVE, TryCatch #2 {Exception -> 0x02ee, blocks: (B:118:0x02b3, B:120:0x02b9), top: B:262:0x02b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02fb A[Catch: Exception -> 0x0330, TRY_LEAVE, TryCatch #0 {Exception -> 0x0330, blocks: (B:132:0x02f5, B:134:0x02fb), top: B:258:0x02f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x033b A[Catch: Exception -> 0x036f, TRY_LEAVE, TryCatch #1 {Exception -> 0x036f, blocks: (B:146:0x0335, B:148:0x033b), top: B:260:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0435 A[Catch: Exception -> 0x050d, TryCatch #3 {Exception -> 0x050d, blocks: (B:198:0x0415, B:200:0x0435, B:205:0x0448, B:240:0x04f1, B:203:0x0444), top: B:264:0x0415 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0467 A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x046c A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0473 A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0478 A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0483 A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0490 A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x049f A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04ae A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04bd A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04cc A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04db A[Catch: Exception -> 0x04f1, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x04ea A[Catch: Exception -> 0x04f1, TRY_LEAVE, TryCatch #17 {Exception -> 0x04f1, blocks: (B:207:0x045d, B:209:0x0467, B:211:0x046c, B:213:0x0473, B:215:0x0478, B:216:0x047d, B:218:0x0483, B:219:0x048a, B:221:0x0490, B:222:0x0497, B:224:0x049f, B:225:0x04a6, B:227:0x04ae, B:228:0x04b5, B:230:0x04bd, B:231:0x04c4, B:233:0x04cc, B:234:0x04d3, B:236:0x04db, B:237:0x04e2, B:239:0x04ea), top: B:292:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x045d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x038b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0447 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0158 A[PHI: r24 r28
      0x0158: PHI (r24v9 java.lang.String) = (r24v2 java.lang.String), (r24v2 java.lang.String), (r24v10 java.lang.String) binds: [B:41:0x0135, B:43:0x013b, B:38:0x0124] A[DONT_GENERATE, DONT_INLINE]
      0x0158: PHI (r28v2 java.util.Map) = (r28v0 java.util.Map), (r28v0 java.util.Map), (r28v3 java.util.Map) binds: [B:41:0x0135, B:43:0x013b, B:38:0x0124] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x024b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a() {
        /*
            Method dump skipped, instruction units count: 1294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.p.b.a():void");
    }

    private boolean a(String str, JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                if (str.equals(jSONArray.optString(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    private String a(String str, String str2) {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(3));
        if (bArrDecode2bytes == null) {
            a(4);
            return "";
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return "";
        }
        try {
            return (String) Class.forName(strDecrypt).getMethod("da", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return "";
        }
    }

    private JSONArray a(String str) {
        byte[] bArrDecode2bytes = Base64.decode2bytes(r4.a(3));
        if (bArrDecode2bytes == null) {
            a(4);
            return null;
        }
        String strDecrypt = AESUtil.decrypt(e1.e(), e1.b(), bArrDecode2bytes);
        if (strDecrypt == null) {
            a(4);
            return null;
        }
        try {
            return (JSONArray) Class.forName(strDecrypt).getMethod("dah", String.class).invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(int i) {
        if (this.a == null) {
            return;
        }
        g0 g0Var = new g0((Activity) this.a, "");
        TextView textView = new TextView(this.a);
        textView.setAutoLinkMask(1);
        textView.setClickable(true);
        textView.setText(a4.a(this.a).a(AESUtil.decrypt(e1.e(), e1.b(), Base64.decode2bytes(r4.a(i)))));
        LinearLayout linearLayout = new LinearLayout(this.a);
        linearLayout.addView(textView);
        g0Var.a(linearLayout, textView);
        g0Var.setDuration(1);
        g0Var.setGravity(80, g0Var.getXOffset(), g0Var.getYOffset());
        int iDip2px = CanvasHelper.dip2px(this.a, 10.0f);
        int iDip2px2 = CanvasHelper.dip2px(this.a, 8.0f);
        linearLayout.setPadding(iDip2px, iDip2px2, iDip2px, iDip2px2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(iDip2px2);
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-1308622848);
        linearLayout.setBackground(gradientDrawable);
        textView.setGravity(17);
        textView.setTextColor(Color.parseColor("#ffffffff"));
        g0Var.show();
    }
}
