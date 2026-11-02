package io.dcloud.p;

import android.content.Context;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class u4 {
    private static String a = "";
    private static String b;
    private static String c;

    private static boolean a(String str) {
        return TextUtils.isEmpty(str) || str.contains("Unknown") || str.contains("00000000");
    }

    private static StringBuilder b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                inputStream.close();
                return sb;
            }
            sb.append(line);
            sb.append("\n");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0115 A[PHI: r1
      0x0115: PHI (r1v3 java.lang.String) = (r1v1 java.lang.String), (r1v4 java.lang.String) binds: [B:84:0x0112, B:76:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(android.content.Context r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.p.u4.a(android.content.Context, boolean, boolean):java.lang.String");
    }

    public static String a(Context context) {
        try {
            l1.a(context);
            StringBuilder sb = new StringBuilder();
            sb.append(context.getFilesDir());
            String str = File.separator;
            sb.append(str);
            sb.append(".imei.txt");
            String string = sb.toString();
            File file = new File(string);
            if (!file.exists()) {
                string = context.getFilesDir() + str + ".DC4278477faeb9.txt";
                file = new File(string);
            }
            if (file.isDirectory()) {
                file.delete();
            }
            return a(file, null, string, null, context);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String a(File file, File file2, String str, String str2, Context context) {
        if (file.exists() && file.length() > 0) {
            try {
                return a(new FileInputStream(file));
            } catch (Exception unused) {
                return a(context, file, file2, ".DC4278477faeb9.txt");
            }
        }
        return a(context, file, file2, ".DC4278477faeb9.txt");
    }

    private static String a(Context context, File file, File file2, String str) throws IOException {
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
            file.createNewFile();
        }
        String strReplace = UUID.randomUUID().toString().replaceAll(Operators.SUB, "").replace("\n", "");
        byte[] bytes = strReplace.getBytes();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bytes);
            fileOutputStream.flush();
            fileOutputStream.close();
            return strReplace;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return strReplace;
        } catch (IOException e2) {
            e2.printStackTrace();
            return strReplace;
        }
    }

    public static String a(InputStream inputStream) {
        if (inputStream == null) {
            return "";
        }
        return b(inputStream).toString();
    }
}
