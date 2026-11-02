package uts.sdk.modules.DCloudUniPrivacy;

import com.facebook.common.util.UriUtil;
import com.taobao.weex.bridge.WXBridgeManager;
import io.dcloud.uts.NumberKt;
import io.dcloud.uts.PrivacyOption;
import io.dcloud.uts.UTSAndroid;
import io.dcloud.uts.UTSCallback;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000e\u00105\u001a\u00020\t2\u0006\u0010\u000f\u001a\u000206\u001a\u0006\u00107\u001a\u00020\t\u001a\u000e\u00108\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u000209\u001a\u000e\u0010:\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006\u001a\u0006\u0010;\u001a\u00020\t\"0\u0010\u0019\u001a!\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\t0\u0001j\u0002`\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u001b\u0010\u001d\u001a\f\u0012\u0004\u0012\u00020\t0\u0017j\u0002`\u001e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 \"<\u0010!\u001a-\u0012\u0004\u0012\u00020\u0006\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0001j\u0002`\u00020\"¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$\"\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(\"\u001d\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\t0\u0001¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001c\"^\u0010,\u001aO\u0012A\u0012?\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0001j\u0011`\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`-¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001c\"0\u0010/\u001a!\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\t0\u0001j\u0002`0¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001c\"\u001b\u00102\u001a\f\u0012\u0004\u0012\u00020\t0\u0017j\u0002`3¢\u0006\b\n\u0000\u001a\u0004\b4\u0010 *n\u0010\u0000\"\u001d\u0012\u0013\u0012\u0011`\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u00012K\u0012A\u0012?\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0001j\u0011`\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\n\"\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\f\"\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\r\"\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0010\"\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0013\"\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0015\"\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\t0\u0001*\u0016\u0010\u0016\"\b\u0012\u0004\u0012\u00020\t0\u00172\b\u0012\u0004\u0012\u00020\t0\u0017*\u0016\u0010\u0018\"\b\u0012\u0004\u0012\u00020\t0\u00172\b\u0012\u0004\u0012\u00020\t0\u0017¨\u0006<"}, d2 = {"OnPrivacyAuthorizationChange", "Lkotlin/Function1;", "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChangeCallback;", "Lkotlin/ParameterName;", "name", WXBridgeManager.METHOD_CALLBACK, "", "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;", UriUtil.LOCAL_RESOURCE_SCHEME, "", "OffPrivacyAuthorizationChange", "id", "OnPrivacyAuthorizationChangeCallback", "GetPrivacySetting", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;", "options", "GetPrivacySettingSuccessCallback", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;", "result", "GetPrivacySettingFailCallback", "", "GetPrivacySettingCompleteCallback", "ResetPrivacyAuthorization", "Lkotlin/Function0;", "AgreePrivacyAuthorization", "getPrivacySetting", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySetting;", "getGetPrivacySetting", "()Lkotlin/jvm/functions/Function1;", "resetPrivacyAuthorization", "Luts/sdk/modules/DCloudUniPrivacy/ResetPrivacyAuthorization;", "getResetPrivacyAuthorization", "()Lkotlin/jvm/functions/Function0;", "privacyCallbacks", "Ljava/util/HashMap;", "getPrivacyCallbacks", "()Ljava/util/HashMap;", "getId", "()Ljava/lang/Number;", "setId", "(Ljava/lang/Number;)V", "privacyAuthorizationChangeFunction", "Lio/dcloud/uts/PrivacyOption;", "getPrivacyAuthorizationChangeFunction", "onPrivacyAuthorizationChange", "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChange;", "getOnPrivacyAuthorizationChange", "offPrivacyAuthorizationChange", "Luts/sdk/modules/DCloudUniPrivacy/OffPrivacyAuthorizationChange;", "getOffPrivacyAuthorizationChange", "agreePrivacyAuthorization", "Luts/sdk/modules/DCloudUniPrivacy/AgreePrivacyAuthorization;", "getAgreePrivacyAuthorization", "getPrivacySettingByJs", "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;", "resetPrivacyAuthorizationByJs", "onPrivacyAuthorizationChangeByJs", "Lio/dcloud/uts/UTSCallback;", "offPrivacyAuthorizationChangeByJs", "agreePrivacyAuthorizationByJs", "uni-privacy_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class IndexKt {
    private static final Function1<GetPrivacySettingOptions, Unit> getPrivacySetting = new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.getPrivacySetting$lambda$0((GetPrivacySettingOptions) obj);
        }
    };
    private static final Function0<Unit> resetPrivacyAuthorization = new Function0() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IndexKt.resetPrivacyAuthorization$lambda$1();
        }
    };
    private static final HashMap<Number, Function1<PrivacyChangeResult, Unit>> privacyCallbacks = new HashMap<>();
    private static Number id = (Number) 0;
    private static final Function1<PrivacyOption, Unit> privacyAuthorizationChangeFunction = new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.privacyAuthorizationChangeFunction$lambda$3((PrivacyOption) obj);
        }
    };
    private static final Function1<Function1<? super PrivacyChangeResult, Unit>, Number> onPrivacyAuthorizationChange = new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.onPrivacyAuthorizationChange$lambda$4((Function1) obj);
        }
    };
    private static final Function1<Number, Unit> offPrivacyAuthorizationChange = new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.offPrivacyAuthorizationChange$lambda$5((Number) obj);
        }
    };
    private static final Function0<Unit> agreePrivacyAuthorization = new Function0() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IndexKt.agreePrivacyAuthorization$lambda$6();
        }
    };

    public static final Function1<GetPrivacySettingOptions, Unit> getGetPrivacySetting() {
        return getPrivacySetting;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getPrivacySetting$lambda$0(GetPrivacySettingOptions getPrivacySettingOptions) {
        GetPrivacySettingSuccessResult getPrivacySettingSuccessResult = new GetPrivacySettingSuccessResult(!UTSAndroid.INSTANCE.isPrivacyAgree());
        Function1<GetPrivacySettingSuccessResult, Unit> success = getPrivacySettingOptions.getSuccess();
        if (success != null) {
            success.invoke(getPrivacySettingSuccessResult);
        }
        Function1<Object, Unit> complete = getPrivacySettingOptions.getComplete();
        if (complete != null) {
            complete.invoke(getPrivacySettingSuccessResult);
        }
        return Unit.INSTANCE;
    }

    public static final Function0<Unit> getResetPrivacyAuthorization() {
        return resetPrivacyAuthorization;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resetPrivacyAuthorization$lambda$1() {
        UTSAndroid.INSTANCE.resetPrivacyAgree();
        return Unit.INSTANCE;
    }

    public static final HashMap<Number, Function1<PrivacyChangeResult, Unit>> getPrivacyCallbacks() {
        return privacyCallbacks;
    }

    public static final Number getId() {
        return id;
    }

    public static final void setId(Number number) {
        Intrinsics.checkNotNullParameter(number, "<set-?>");
        id = number;
    }

    public static final Function1<PrivacyOption, Unit> getPrivacyAuthorizationChangeFunction() {
        return privacyAuthorizationChangeFunction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit privacyAuthorizationChangeFunction$lambda$3(PrivacyOption privacyOption) {
        Collection<Function1<PrivacyChangeResult, Unit>> collectionValues = privacyCallbacks.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(new PrivacyChangeResult(!privacyOption.getIsAgree()));
        }
        return Unit.INSTANCE;
    }

    public static final Function1<Function1<? super PrivacyChangeResult, Unit>, Number> getOnPrivacyAuthorizationChange() {
        return onPrivacyAuthorizationChange;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Number onPrivacyAuthorizationChange$lambda$4(Function1<? super PrivacyChangeResult, Unit> function1) {
        HashMap<Number, Function1<PrivacyChangeResult, Unit>> map = privacyCallbacks;
        if (map.isEmpty()) {
            UTSAndroid.INSTANCE.onPrivacyAgreeChange(privacyAuthorizationChangeFunction);
        }
        Number numberPlus = NumberKt.plus(id, (Number) 1);
        id = numberPlus;
        map.put(numberPlus, function1);
        return id;
    }

    public static final Function1<Number, Unit> getOffPrivacyAuthorizationChange() {
        return offPrivacyAuthorizationChange;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit offPrivacyAuthorizationChange$lambda$5(Number number) {
        HashMap<Number, Function1<PrivacyChangeResult, Unit>> map = privacyCallbacks;
        map.remove(number);
        if (map.isEmpty()) {
            UTSAndroid.INSTANCE.offPrivacyAgreeChange(privacyAuthorizationChangeFunction);
        }
        return Unit.INSTANCE;
    }

    public static final Function0<Unit> getAgreePrivacyAuthorization() {
        return agreePrivacyAuthorization;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit agreePrivacyAuthorization$lambda$6() {
        UTSAndroid.INSTANCE.setPrivacyAgree(true);
        return Unit.INSTANCE;
    }

    public static final void getPrivacySettingByJs(final GetPrivacySettingOptionsJSONObject options) {
        Intrinsics.checkNotNullParameter(options, "options");
        getPrivacySetting.invoke(new GetPrivacySettingOptions(new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IndexKt.getPrivacySettingByJs$lambda$7(options, (GetPrivacySettingSuccessResult) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IndexKt.getPrivacySettingByJs$lambda$8(options, obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IndexKt.getPrivacySettingByJs$lambda$9(options, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getPrivacySettingByJs$lambda$7(GetPrivacySettingOptionsJSONObject getPrivacySettingOptionsJSONObject, GetPrivacySettingSuccessResult getPrivacySettingSuccessResult) {
        UTSCallback success = getPrivacySettingOptionsJSONObject.getSuccess();
        if (success != null) {
            success.invoke(getPrivacySettingSuccessResult);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getPrivacySettingByJs$lambda$8(GetPrivacySettingOptionsJSONObject getPrivacySettingOptionsJSONObject, Object obj) {
        UTSCallback fail = getPrivacySettingOptionsJSONObject.getFail();
        if (fail != null) {
            fail.invoke(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getPrivacySettingByJs$lambda$9(GetPrivacySettingOptionsJSONObject getPrivacySettingOptionsJSONObject, Object obj) {
        UTSCallback complete = getPrivacySettingOptionsJSONObject.getComplete();
        if (complete != null) {
            complete.invoke(obj);
        }
        return Unit.INSTANCE;
    }

    public static final void resetPrivacyAuthorizationByJs() {
        resetPrivacyAuthorization.invoke();
    }

    public static final Number onPrivacyAuthorizationChangeByJs(final UTSCallback callback) {
        Object fnJS;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1<Function1<? super PrivacyChangeResult, Unit>, Number> function1 = onPrivacyAuthorizationChange;
        if (callback.getFnJS() != null) {
            fnJS = callback.getFnJS();
        } else {
            callback.setFnJS(new Function1() { // from class: uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return IndexKt.onPrivacyAuthorizationChangeByJs$lambda$10(callback, (PrivacyChangeResult) obj);
                }
            });
            fnJS = callback.getFnJS();
        }
        Intrinsics.checkNotNull(fnJS, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"res\")] uts.sdk.modules.DCloudUniPrivacy.PrivacyChangeResult, kotlin.Unit>");
        return function1.invoke((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(fnJS, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onPrivacyAuthorizationChangeByJs$lambda$10(UTSCallback uTSCallback, PrivacyChangeResult privacyChangeResult) {
        uTSCallback.invoke(privacyChangeResult);
        return Unit.INSTANCE;
    }

    public static final void offPrivacyAuthorizationChangeByJs(Number id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        offPrivacyAuthorizationChange.invoke(id2);
    }

    public static final void agreePrivacyAuthorizationByJs() {
        agreePrivacyAuthorization.invoke();
    }
}
