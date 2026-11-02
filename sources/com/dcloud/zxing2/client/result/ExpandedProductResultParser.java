package com.dcloud.zxing2.client.result;

import com.taobao.weex.el.parse.Operators;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (findAIvalue(i2, strSubstring) != null) {
                    break;
                }
                sb.append(Operators.BRACKET_START);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    @Override // com.dcloud.zxing2.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.dcloud.zxing2.client.result.ExpandedProductParsedResult parse(com.dcloud.zxing2.Result r24) {
        /*
            Method dump skipped, instruction units count: 892
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dcloud.zxing2.client.result.ExpandedProductResultParser.parse(com.dcloud.zxing2.Result):com.dcloud.zxing2.client.result.ExpandedProductParsedResult");
    }
}
