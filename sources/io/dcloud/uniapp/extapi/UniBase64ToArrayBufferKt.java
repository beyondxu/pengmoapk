package io.dcloud.uniapp.extapi;

import io.dcloud.uts.ArrayBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import uts.sdk.modules.DCloudUniBase64ToArrayBuffer.IndexKt;

/* JADX INFO: compiled from: uniBase64ToArrayBuffer.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"0\u0010\u0000\u001a!\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"base64ToArrayBuffer", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "base64", "Lio/dcloud/uts/ArrayBuffer;", "Luts/sdk/modules/DCloudUniBase64ToArrayBuffer/Base64ToArrayBuffer;", "getBase64ToArrayBuffer", "()Lkotlin/jvm/functions/Function1;", "uni-base64ToArrayBuffer_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UniBase64ToArrayBufferKt {
    private static final Function1<String, ArrayBuffer> base64ToArrayBuffer = IndexKt.getBase64ToArrayBuffer();

    public static final Function1<String, ArrayBuffer> getBase64ToArrayBuffer() {
        return base64ToArrayBuffer;
    }
}
