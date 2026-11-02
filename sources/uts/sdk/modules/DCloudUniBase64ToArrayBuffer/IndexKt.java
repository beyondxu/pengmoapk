package uts.sdk.modules.DCloudUniBase64ToArrayBuffer;

import android.util.Base64;
import io.dcloud.uts.ArrayBuffer;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002\"0\u0010\u0007\u001a!\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n*@\u0010\u0000\"\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001¨\u0006\f"}, d2 = {"Base64ToArrayBuffer", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "base64", "Lio/dcloud/uts/ArrayBuffer;", "base64ToArrayBuffer", "Luts/sdk/modules/DCloudUniBase64ToArrayBuffer/Base64ToArrayBuffer;", "getBase64ToArrayBuffer", "()Lkotlin/jvm/functions/Function1;", "base64ToArrayBufferByJs", "uni-base64ToArrayBuffer_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class IndexKt {
    private static final Function1<String, ArrayBuffer> base64ToArrayBuffer = new Function1() { // from class: uts.sdk.modules.DCloudUniBase64ToArrayBuffer.IndexKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.base64ToArrayBuffer$lambda$0((String) obj);
        }
    };

    public static final Function1<String, ArrayBuffer> getBase64ToArrayBuffer() {
        return base64ToArrayBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ArrayBuffer base64ToArrayBuffer$lambda$0(String str) {
        byte[] bArrDecode = Base64.decode(str, 2);
        ArrayBuffer.Companion companion = ArrayBuffer.INSTANCE;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrDecode);
        Intrinsics.checkNotNullExpressionValue(byteBufferWrap, "wrap(...)");
        return companion.fromByteBuffer(byteBufferWrap);
    }

    public static final ArrayBuffer base64ToArrayBufferByJs(String base64) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        return base64ToArrayBuffer.invoke(base64);
    }
}
