package uts.sdk.modules.DCloudUniPrivacy;

import com.taobao.weex.common.Constants;
import com.taobao.weex.ui.component.WXImage;
import io.dcloud.uts.UTSObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u008e\u0001\u0012+\b\u0002\u0010\u0002\u001a%\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\t\u0012+\b\u0002\u0010\n\u001a%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\f\u0012+\b\u0002\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\u000e¢\u0006\u0004\b\u000f\u0010\u0010R=\u0010\u0002\u001a%\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R=\u0010\n\u001a%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R=\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003j\u0004\u0018\u0001`\u000eX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014¨\u0006\u0019"}, d2 = {"Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;", "Lio/dcloud/uts/UTSObject;", WXImage.SUCCEED, "Lkotlin/Function1;", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;", "Lkotlin/ParameterName;", "name", "result", "", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessCallback;", Constants.Event.FAIL, "", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingFailCallback;", "complete", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingCompleteCallback;", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getSuccess", "()Lkotlin/jvm/functions/Function1;", "setSuccess", "(Lkotlin/jvm/functions/Function1;)V", "getFail", "setFail", "getComplete", "setComplete", "uni-privacy_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class GetPrivacySettingOptions extends UTSObject {
    private Function1<Object, Unit> complete;
    private Function1<Object, Unit> fail;
    private Function1<? super GetPrivacySettingSuccessResult, Unit> success;

    public GetPrivacySettingOptions() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ GetPrivacySettingOptions(Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function1, (i & 2) != 0 ? null : function12, (i & 4) != 0 ? null : function13);
    }

    public Function1<GetPrivacySettingSuccessResult, Unit> getSuccess() {
        return this.success;
    }

    public void setSuccess(Function1<? super GetPrivacySettingSuccessResult, Unit> function1) {
        this.success = function1;
    }

    public Function1<Object, Unit> getFail() {
        return this.fail;
    }

    public void setFail(Function1<Object, Unit> function1) {
        this.fail = function1;
    }

    public Function1<Object, Unit> getComplete() {
        return this.complete;
    }

    public void setComplete(Function1<Object, Unit> function1) {
        this.complete = function1;
    }

    public GetPrivacySettingOptions(Function1<? super GetPrivacySettingSuccessResult, Unit> function1, Function1<Object, Unit> function12, Function1<Object, Unit> function13) {
        this.success = function1;
        this.fail = function12;
        this.complete = function13;
    }
}
