package uts.sdk.modules.dnInkprinterUts;

import io.dcloud.uts.JsonNotNull;
import io.dcloud.uts.UTSObject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;", "Lio/dcloud/uts/UTSObject;", "code", "", "message", "", "<init>", "(Ljava/lang/Number;Ljava/lang/String;)V", "getCode", "()Ljava/lang/Number;", "setCode", "(Ljava/lang/Number;)V", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "dn-inkprinter-uts_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class Img2PrintDataFail extends UTSObject {

    @JsonNotNull
    private Number code;

    @JsonNotNull
    private String message;

    public Number getCode() {
        return this.code;
    }

    public void setCode(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.code = number;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.message = str;
    }

    public Img2PrintDataFail(Number code, String message) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = code;
        this.message = message;
    }
}
