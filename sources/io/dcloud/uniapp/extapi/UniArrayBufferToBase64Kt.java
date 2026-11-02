package io.dcloud.uniapp.extapi;

import io.dcloud.uts.ArrayBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt;

/* JADX INFO: compiled from: uniArrayBufferToBase64.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\"0\u0010\u0000\u001a!\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"arrayBufferToBase64", "Lkotlin/Function1;", "Lio/dcloud/uts/ArrayBuffer;", "Lkotlin/ParameterName;", "name", "arrayBuffer", "", "Luts/sdk/modules/DCloudUniArrayBufferToBase64/ArrayBufferToBase64;", "getArrayBufferToBase64", "()Lkotlin/jvm/functions/Function1;", "uni-arrayBufferToBase64_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UniArrayBufferToBase64Kt {
    private static final Function1<ArrayBuffer, String> arrayBufferToBase64 = IndexKt.getArrayBufferToBase64();

    public static final Function1<ArrayBuffer, String> getArrayBufferToBase64() {
        return arrayBufferToBase64;
    }
}
