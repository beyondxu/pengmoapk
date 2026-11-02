package uts.sdk.modules.dnInkprinterUts;

import com.taobao.weex.common.Constants;
import com.taobao.weex.ui.component.WXImage;
import io.dcloud.uts.UTSCallback;
import io.dcloud.uts.UTSJSONObject;
import io.dcloud.uts.Uint8Array;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001c\u0010!\u001a\u0004\u0018\u00010\u0019X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001d¨\u0006$"}, d2 = {"Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;", "Lio/dcloud/uts/UTSJSONObject;", "<init>", "()V", "imgStream", "Lio/dcloud/uts/Uint8Array;", "getImgStream", "()Lio/dcloud/uts/Uint8Array;", "setImgStream", "(Lio/dcloud/uts/Uint8Array;)V", "iInk", "", "getIInk", "()Ljava/lang/Number;", "setIInk", "(Ljava/lang/Number;)V", "iOutColor", "getIOutColor", "setIOutColor", "printTimes", "getPrintTimes", "setPrintTimes", "isPhotoPaper", "setPhotoPaper", WXImage.SUCCEED, "Lio/dcloud/uts/UTSCallback;", "getSuccess", "()Lio/dcloud/uts/UTSCallback;", "setSuccess", "(Lio/dcloud/uts/UTSCallback;)V", Constants.Event.FAIL, "getFail", "setFail", "complete", "getComplete", "setComplete", "dn-inkprinter-uts_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class MemImageToPrintDataOptionsJSONObject extends UTSJSONObject {
    private UTSCallback complete;
    private UTSCallback fail;
    public Number iInk;
    public Number iOutColor;
    public Uint8Array imgStream;
    public Number isPhotoPaper;
    public Number printTimes;
    private UTSCallback success;

    public Uint8Array getImgStream() {
        Uint8Array uint8Array = this.imgStream;
        if (uint8Array != null) {
            return uint8Array;
        }
        Intrinsics.throwUninitializedPropertyAccessException("imgStream");
        return null;
    }

    public void setImgStream(Uint8Array uint8Array) {
        Intrinsics.checkNotNullParameter(uint8Array, "<set-?>");
        this.imgStream = uint8Array;
    }

    public Number getIInk() {
        Number number = this.iInk;
        if (number != null) {
            return number;
        }
        Intrinsics.throwUninitializedPropertyAccessException("iInk");
        return null;
    }

    public void setIInk(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.iInk = number;
    }

    public Number getIOutColor() {
        Number number = this.iOutColor;
        if (number != null) {
            return number;
        }
        Intrinsics.throwUninitializedPropertyAccessException("iOutColor");
        return null;
    }

    public void setIOutColor(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.iOutColor = number;
    }

    public Number getPrintTimes() {
        Number number = this.printTimes;
        if (number != null) {
            return number;
        }
        Intrinsics.throwUninitializedPropertyAccessException("printTimes");
        return null;
    }

    public void setPrintTimes(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.printTimes = number;
    }

    public Number isPhotoPaper() {
        Number number = this.isPhotoPaper;
        if (number != null) {
            return number;
        }
        Intrinsics.throwUninitializedPropertyAccessException("isPhotoPaper");
        return null;
    }

    public void setPhotoPaper(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.isPhotoPaper = number;
    }

    public UTSCallback getSuccess() {
        return this.success;
    }

    public void setSuccess(UTSCallback uTSCallback) {
        this.success = uTSCallback;
    }

    public UTSCallback getFail() {
        return this.fail;
    }

    public void setFail(UTSCallback uTSCallback) {
        this.fail = uTSCallback;
    }

    public UTSCallback getComplete() {
        return this.complete;
    }

    public void setComplete(UTSCallback uTSCallback) {
        this.complete = uTSCallback;
    }
}
