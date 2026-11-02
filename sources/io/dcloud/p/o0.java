package io.dcloud.p;

import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class o0 {
    private static String a = "";
    private static String b = "";

    private static boolean a() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", null).invoke(cls, null));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(a)) {
            e(str);
        }
        return a;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(a)) {
            e(str);
        }
        return b;
    }

    private static String d(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ec, code lost:
    
        if (r6.equals("XIAOMI") != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0101, code lost:
    
        if (r6.equals("REALME") != false) goto L59;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void e(java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.p.o0.e(java.lang.String):void");
    }

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replaceAll(Operators.SPACE_STR, "").toUpperCase();
    }
}
