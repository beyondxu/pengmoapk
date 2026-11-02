package io.dcloud.uniapp.extapi;

import com.facebook.common.util.UriUtil;
import com.taobao.weex.bridge.WXBridgeManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import uts.sdk.modules.DCloudUniPrivacy.GetPrivacySettingOptions;
import uts.sdk.modules.DCloudUniPrivacy.IndexKt;
import uts.sdk.modules.DCloudUniPrivacy.PrivacyChangeResult;

/* JADX INFO: compiled from: uniPrivacy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\"^\u0010\r\u001aO\u0012A\u0012?\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\bj\u0011`\u0007¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000e¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\bj\u0002`\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"0\u0010\u0013\u001a!\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\bj\u0002`\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"0\u0010\u0017\u001a!\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\f0\bj\u0002`\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012\"\u001b\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\f0\u001cj\u0002`\u001d¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u001b\u0010 \u001a\f\u0012\u0004\u0012\u00020\f0\u001cj\u0002`!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001f*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*)\u0010\u0006\"\u0002`\u00072!\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\bj\u0002`\u0007¨\u0006#"}, d2 = {"PrivacyChangeResult", "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;", "GetPrivacySettingSuccessResult", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;", "GetPrivacySettingOptions", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;", "OnPrivacyAuthorizationChangeCallback", "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChangeCallback;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", UriUtil.LOCAL_RESOURCE_SCHEME, "", "onPrivacyAuthorizationChange", WXBridgeManager.METHOD_CALLBACK, "", "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChange;", "getOnPrivacyAuthorizationChange", "()Lkotlin/jvm/functions/Function1;", "offPrivacyAuthorizationChange", "id", "Luts/sdk/modules/DCloudUniPrivacy/OffPrivacyAuthorizationChange;", "getOffPrivacyAuthorizationChange", "getPrivacySetting", "options", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySetting;", "getGetPrivacySetting", "resetPrivacyAuthorization", "Lkotlin/Function0;", "Luts/sdk/modules/DCloudUniPrivacy/ResetPrivacyAuthorization;", "getResetPrivacyAuthorization", "()Lkotlin/jvm/functions/Function0;", "agreePrivacyAuthorization", "Luts/sdk/modules/DCloudUniPrivacy/AgreePrivacyAuthorization;", "getAgreePrivacyAuthorization", "uni-privacy_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UniPrivacyKt {
    private static final Function1<Function1<? super PrivacyChangeResult, Unit>, Number> onPrivacyAuthorizationChange = IndexKt.getOnPrivacyAuthorizationChange();
    private static final Function1<Number, Unit> offPrivacyAuthorizationChange = IndexKt.getOffPrivacyAuthorizationChange();
    private static final Function1<GetPrivacySettingOptions, Unit> getPrivacySetting = IndexKt.getGetPrivacySetting();
    private static final Function0<Unit> resetPrivacyAuthorization = IndexKt.getResetPrivacyAuthorization();
    private static final Function0<Unit> agreePrivacyAuthorization = IndexKt.getAgreePrivacyAuthorization();

    public static final Function1<Function1<? super PrivacyChangeResult, Unit>, Number> getOnPrivacyAuthorizationChange() {
        return onPrivacyAuthorizationChange;
    }

    public static final Function1<Number, Unit> getOffPrivacyAuthorizationChange() {
        return offPrivacyAuthorizationChange;
    }

    public static final Function1<GetPrivacySettingOptions, Unit> getGetPrivacySetting() {
        return getPrivacySetting;
    }

    public static final Function0<Unit> getResetPrivacyAuthorization() {
        return resetPrivacyAuthorization;
    }

    public static final Function0<Unit> getAgreePrivacyAuthorization() {
        return agreePrivacyAuthorization;
    }
}
