package uts.sdk.modules.dnInkprinterUts;

import io.dcloud.uts.JsonNotNull;
import io.dcloud.uts.UTSObject;
import io.dcloud.uts.Uint8Array;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;", "Lio/dcloud/uts/UTSObject;", "data", "Lio/dcloud/uts/Uint8Array;", "length", "", "<init>", "(Lio/dcloud/uts/Uint8Array;Ljava/lang/Number;)V", "getData", "()Lio/dcloud/uts/Uint8Array;", "setData", "(Lio/dcloud/uts/Uint8Array;)V", "getLength", "()Ljava/lang/Number;", "setLength", "(Ljava/lang/Number;)V", "dn-inkprinter-uts_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class MemImageToPrintDataResult extends UTSObject {

    @JsonNotNull
    private Uint8Array data;

    @JsonNotNull
    private Number length;

    public Uint8Array getData() {
        return this.data;
    }

    public void setData(Uint8Array uint8Array) {
        Intrinsics.checkNotNullParameter(uint8Array, "<set-?>");
        this.data = uint8Array;
    }

    public Number getLength() {
        return this.length;
    }

    public void setLength(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.length = number;
    }

    public MemImageToPrintDataResult(Uint8Array data, Number length) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(length, "length");
        this.data = data;
        this.length = length;
    }
}
