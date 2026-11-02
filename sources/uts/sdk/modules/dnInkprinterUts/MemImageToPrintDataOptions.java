package uts.sdk.modules.dnInkprinterUts;

import com.facebook.common.util.UriUtil;
import com.taobao.weex.common.Constants;
import com.taobao.weex.ui.component.WXImage;
import io.dcloud.uts.JsonNotNull;
import io.dcloud.uts.UTSObject;
import io.dcloud.uts.Uint8Array;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0018\b\u0016\u0018\u00002\u00020\u0001B¤\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012%\b\u0002\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\n\u0012%\b\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\n\u0012%\b\u0002\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\n¢\u0006\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u0006\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u001dR\u001e\u0010\u0007\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\u001e\u0010\b\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u001b\"\u0004\b\"\u0010\u001dR7\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R7\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010$\"\u0004\b(\u0010&R7\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&¨\u0006+"}, d2 = {"Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptions;", "Lio/dcloud/uts/UTSObject;", "imgStream", "Lio/dcloud/uts/Uint8Array;", "iInk", "", "iOutColor", "printTimes", "isPhotoPaper", WXImage.SUCCEED, "Lkotlin/Function1;", "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;", "Lkotlin/ParameterName;", "name", UriUtil.LOCAL_RESOURCE_SCHEME, "", Constants.Event.FAIL, "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataFail;", "complete", "", "<init>", "(Lio/dcloud/uts/Uint8Array;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getImgStream", "()Lio/dcloud/uts/Uint8Array;", "setImgStream", "(Lio/dcloud/uts/Uint8Array;)V", "getIInk", "()Ljava/lang/Number;", "setIInk", "(Ljava/lang/Number;)V", "getIOutColor", "setIOutColor", "getPrintTimes", "setPrintTimes", "setPhotoPaper", "getSuccess", "()Lkotlin/jvm/functions/Function1;", "setSuccess", "(Lkotlin/jvm/functions/Function1;)V", "getFail", "setFail", "getComplete", "setComplete", "dn-inkprinter-uts_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class MemImageToPrintDataOptions extends UTSObject {
    private Function1<Object, Unit> complete;
    private Function1<? super MemImageToPrintDataFail, Unit> fail;

    @JsonNotNull
    private Number iInk;

    @JsonNotNull
    private Number iOutColor;

    @JsonNotNull
    private Uint8Array imgStream;

    @JsonNotNull
    private Number isPhotoPaper;

    @JsonNotNull
    private Number printTimes;
    private Function1<? super MemImageToPrintDataResult, Unit> success;

    public /* synthetic */ MemImageToPrintDataOptions(Uint8Array uint8Array, Number number, Number number2, Number number3, Number number4, Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uint8Array, number, number2, number3, number4, (i & 32) != 0 ? null : function1, (i & 64) != 0 ? null : function12, (i & 128) != 0 ? null : function13);
    }

    public Uint8Array getImgStream() {
        return this.imgStream;
    }

    public void setImgStream(Uint8Array uint8Array) {
        Intrinsics.checkNotNullParameter(uint8Array, "<set-?>");
        this.imgStream = uint8Array;
    }

    public Number getIInk() {
        return this.iInk;
    }

    public void setIInk(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.iInk = number;
    }

    public Number getIOutColor() {
        return this.iOutColor;
    }

    public void setIOutColor(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.iOutColor = number;
    }

    public Number getPrintTimes() {
        return this.printTimes;
    }

    public void setPrintTimes(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.printTimes = number;
    }

    /* JADX INFO: renamed from: isPhotoPaper, reason: from getter */
    public Number getIsPhotoPaper() {
        return this.isPhotoPaper;
    }

    public void setPhotoPaper(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.isPhotoPaper = number;
    }

    public Function1<MemImageToPrintDataResult, Unit> getSuccess() {
        return this.success;
    }

    public void setSuccess(Function1<? super MemImageToPrintDataResult, Unit> function1) {
        this.success = function1;
    }

    public Function1<MemImageToPrintDataFail, Unit> getFail() {
        return this.fail;
    }

    public void setFail(Function1<? super MemImageToPrintDataFail, Unit> function1) {
        this.fail = function1;
    }

    public Function1<Object, Unit> getComplete() {
        return this.complete;
    }

    public void setComplete(Function1<Object, Unit> function1) {
        this.complete = function1;
    }

    public MemImageToPrintDataOptions(Uint8Array imgStream, Number iInk, Number iOutColor, Number printTimes, Number isPhotoPaper, Function1<? super MemImageToPrintDataResult, Unit> function1, Function1<? super MemImageToPrintDataFail, Unit> function12, Function1<Object, Unit> function13) {
        Intrinsics.checkNotNullParameter(imgStream, "imgStream");
        Intrinsics.checkNotNullParameter(iInk, "iInk");
        Intrinsics.checkNotNullParameter(iOutColor, "iOutColor");
        Intrinsics.checkNotNullParameter(printTimes, "printTimes");
        Intrinsics.checkNotNullParameter(isPhotoPaper, "isPhotoPaper");
        this.imgStream = imgStream;
        this.iInk = iInk;
        this.iOutColor = iOutColor;
        this.printTimes = printTimes;
        this.isPhotoPaper = isPhotoPaper;
        this.success = function1;
        this.fail = function12;
        this.complete = function13;
    }
}
