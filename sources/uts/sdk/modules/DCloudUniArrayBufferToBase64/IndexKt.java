package uts.sdk.modules.DCloudUniArrayBufferToBase64;

import android.util.Base64;
import io.dcloud.uts.ArrayBuffer;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002\"0\u0010\u0007\u001a!\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n*@\u0010\u0000\"\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001¨\u0006\f"}, d2 = {"ArrayBufferToBase64", "Lkotlin/Function1;", "Lio/dcloud/uts/ArrayBuffer;", "Lkotlin/ParameterName;", "name", "arrayBuffer", "", "arrayBufferToBase64", "Luts/sdk/modules/DCloudUniArrayBufferToBase64/ArrayBufferToBase64;", "getArrayBufferToBase64", "()Lkotlin/jvm/functions/Function1;", "arrayBufferToBase64ByJs", "uni-arrayBufferToBase64_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class IndexKt {
    private static final Function1<ArrayBuffer, String> arrayBufferToBase64 = new Function1() { // from class: uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IndexKt.arrayBufferToBase64$lambda$0((ArrayBuffer) obj);
        }
    };

    public static final Function1<ArrayBuffer, String> getArrayBufferToBase64() {
        return arrayBufferToBase64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String arrayBufferToBase64$lambda$0(ArrayBuffer arrayBuffer) {
        ByteBuffer byteBuffer = arrayBuffer.toByteBuffer();
        byteBuffer.position(0);
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 2);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public static final String arrayBufferToBase64ByJs(ArrayBuffer arrayBuffer) {
        Intrinsics.checkNotNullParameter(arrayBuffer, "arrayBuffer");
        return arrayBufferToBase64.invoke(arrayBuffer);
    }
}
