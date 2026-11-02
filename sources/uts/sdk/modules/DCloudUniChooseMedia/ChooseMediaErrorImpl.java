package uts.sdk.modules.DCloudUniChooseMedia;

import com.taobao.weex.adapter.IWXUserTrackAdapter;
import io.dcloud.uniapp.UniError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\b\u0016\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;", "Lio/dcloud/uniapp/UniError;", "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;", IWXUserTrackAdapter.MONITOR_ERROR_CODE, "", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorCode;", "uniErrorSubject", "", "<init>", "(Ljava/lang/Number;Ljava/lang/String;)V", "getErrCode", "()Ljava/lang/Number;", "setErrCode", "(Ljava/lang/Number;)V", "uni-chooseMedia_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class ChooseMediaErrorImpl extends UniError implements IChooseMediaError {
    public Number errCode;

    @Override // io.dcloud.uniapp.UniError, io.dcloud.uniapp.IUniError
    public Number getErrCode() {
        Number number = this.errCode;
        if (number != null) {
            return number;
        }
        Intrinsics.throwUninitializedPropertyAccessException(IWXUserTrackAdapter.MONITOR_ERROR_CODE);
        return null;
    }

    @Override // io.dcloud.uniapp.UniError, io.dcloud.uniapp.IUniError
    public void setErrCode(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        this.errCode = number;
    }

    public ChooseMediaErrorImpl(Number errCode, String uniErrorSubject) {
        Intrinsics.checkNotNullParameter(errCode, "errCode");
        Intrinsics.checkNotNullParameter(uniErrorSubject, "uniErrorSubject");
        setErrSubject(uniErrorSubject);
        setErrCode(errCode);
        String str = IndexKt.getChooseMediaUniErrors().get(errCode);
        setErrMsg(str == null ? "" : str);
    }

    public /* synthetic */ ChooseMediaErrorImpl(Number number, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(number, (i & 2) != 0 ? "uni-chooseMedia" : str);
    }
}
