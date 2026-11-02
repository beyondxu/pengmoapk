package com.j0data.sdk;

/* JADX INFO: loaded from: classes.dex */
public class dnInkPrinterSDK {

    public static final class PrintTimes {
        public static final int FOUR = 4;
        public static final int ONCE = 1;
        public static final int TWICE = 2;
    }

    public native int img2PrintData(String str, String str2, int i, int i2, int i3, int i4);

    public native byte[] memImageToPrintData(byte[] bArr, int i, int i2, int i3, int i4);

    static {
        System.loadLibrary("dnInkPrinter");
    }
}
