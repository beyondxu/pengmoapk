package uts.sdk.modules.dnInkprinterUts;

import com.facebook.common.util.UriUtil;
import com.taobao.weex.common.Constants;
import com.taobao.weex.ui.component.WXImage;
import io.dcloud.uts.JsonNotNull;
import io.dcloud.uts.UTSObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u001a\b\u0016\u0018\u00002\u00020\u0001B¬\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012%\b\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b¢\u0006\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001e\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001e\"\u0004\b\"\u0010 R\u001e\u0010\b\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R\u001e\u0010\t\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u001e\"\u0004\b%\u0010 R7\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R7\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010'\"\u0004\b+\u0010)R7\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)¨\u0006."}, d2 = {"Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;", "Lio/dcloud/uts/UTSObject;", "imgPath", "", "outputPath", "iInk", "", "iOutColor", "printTimes", "isPhotoPaper", WXImage.SUCCEED, "Lkotlin/Function1;", "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;", "Lkotlin/ParameterName;", "name", UriUtil.LOCAL_RESOURCE_SCHEME, "", Constants.Event.FAIL, "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;", "complete", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "getOutputPath", "setOutputPath", "getIInk", "()Ljava/lang/Number;", "setIInk", "(Ljava/lang/Number;)V", "getIOutColor", "setIOutColor", "getPrintTimes", "setPrintTimes", "setPhotoPaper", "getSuccess", "()Lkotlin/jvm/functions/Function1;", "setSuccess", "(Lkotlin/jvm/functions/Function1;)V", "getFail", "setFail", "getComplete", "setComplete", "dn-inkprinter-uts_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class Img2PrintDataOptions extends UTSObject {
    private Function1<Object, Unit> complete;
    private Function1<? super Img2PrintDataFail, Unit> fail;

    @JsonNotNull
    private Number iInk;

    @JsonNotNull
    private Number iOutColor;

    @JsonNotNull
    private String imgPath;

    @JsonNotNull
    private Number isPhotoPaper;

    @JsonNotNull
    private String outputPath;

    @JsonNotNull
    private Number printTimes;
    private Function1<? super Img2PrintDataResult, Unit> success;

    public /* synthetic */ Img2PrintDataOptions(String str, String str2, Number number, Number number2, Number number3, Number number4, Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, number, number2, number3, number4, (i & 64) != 0 ? null : function1, (i & 128) != 0 ? null : function12, (i & 256) != 0 ? null : function13);
    }

    public String getImgPath() {
        return this.imgPath;
    }

    public void setImgPath(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }

    public String getOutputPath() {
        return this.outputPath;
    }

    public void setOutputPath(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.outputPath = str;
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

    public Function1<Img2PrintDataResult, Unit> getSuccess() {
        return this.success;
    }

    public void setSuccess(Function1<? super Img2PrintDataResult, Unit> function1) {
        this.success = function1;
    }

    public Function1<Img2PrintDataFail, Unit> getFail() {
        return this.fail;
    }

    public void setFail(Function1<? super Img2PrintDataFail, Unit> function1) {
        this.fail = function1;
    }

    public Function1<Object, Unit> getComplete() {
        return this.complete;
    }

    public void setComplete(Function1<Object, Unit> function1) {
        this.complete = function1;
    }

    public Img2PrintDataOptions(String imgPath, String outputPath, Number iInk, Number iOutColor, Number printTimes, Number isPhotoPaper, Function1<? super Img2PrintDataResult, Unit> function1, Function1<? super Img2PrintDataFail, Unit> function12, Function1<Object, Unit> function13) {
        Intrinsics.checkNotNullParameter(imgPath, "imgPath");
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        Intrinsics.checkNotNullParameter(iInk, "iInk");
        Intrinsics.checkNotNullParameter(iOutColor, "iOutColor");
        Intrinsics.checkNotNullParameter(printTimes, "printTimes");
        Intrinsics.checkNotNullParameter(isPhotoPaper, "isPhotoPaper");
        this.imgPath = imgPath;
        this.outputPath = outputPath;
        this.iInk = iInk;
        this.iOutColor = iOutColor;
        this.printTimes = printTimes;
        this.isPhotoPaper = isPhotoPaper;
        this.success = function1;
        this.fail = function12;
        this.complete = function13;
    }
}
