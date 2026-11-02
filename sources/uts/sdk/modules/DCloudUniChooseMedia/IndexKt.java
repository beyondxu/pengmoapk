package uts.sdk.modules.DCloudUniChooseMedia;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.dmcbig.mediapicker.PickerConfig;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.common.WXModule;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.DOMException;
import io.dcloud.uts.JSON;
import io.dcloud.uts.Map;
import io.dcloud.uts.Math;
import io.dcloud.uts.NumberKt;
import io.dcloud.uts.StringKt;
import io.dcloud.uts.UTSAndroid;
import io.dcloud.uts.UTSArray;
import io.dcloud.uts.UTSArrayKt;
import io.dcloud.uts.UTSCallback;
import io.dcloud.uts.UTSJSONObject;
import io.dcloud.uts.UTSJSONObjectKt;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import uts.sdk.modules.DCloudUniMedia.Media;
import uts.sdk.modules.DCloudUniPrompt.IPromptError;
import uts.sdk.modules.DCloudUniPrompt.ShowActionSheetSuccess;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010$\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013\u001a[\u0010%\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132K\u0010&\u001aG\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b((\u0012\u0013\u0012\u00110)¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\f0'\u001ak\u0010,\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010*\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00032K\u0010&\u001aG\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b((\u0012\u0013\u0012\u00110)¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\f0'\u001a\u0016\u0010.\u001a\u00020\u00012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u000100\u001a\u0016\u0010;\u001a\u00020\f2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010*\u001a\u00020)\u001a\u0016\u0010@\u001a\u00020\f2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010*\u001a\u00020)\u001a\u001e\u0010G\u001a\u00020\f2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u0001\u001aR\u0010I\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u00012\u0006\u0010*\u001a\u00020)2\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001002\b\u0010K\u001a\u0004\u0018\u00010\u00102\u000e\u0010L\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`M2\b\u0010N\u001a\u0004\u0018\u00010\u0003\u001a\u0018\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0001\u001a\u0018\u0010S\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0001\u001a\u000e\u0010T\u001a\u00020U2\u0006\u0010Q\u001a\u00020\u0003\u001a\u001a\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010X\u001a\u00020\u00032\b\u0010Y\u001a\u0004\u0018\u00010\u0003\u001a\u001a\u0010Z\u001a\u00020)2\b\u0010[\u001a\u0004\u0018\u00010\\2\b\u0010Y\u001a\u0004\u0018\u00010\u0003\u001a\u0016\u0010]\u001a\u00020\u00012\u000e\u0010^\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`M\u001a\u0006\u0010_\u001a\u00020\u0003\u001a\u0016\u0010`\u001a\u00020)2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u0003\u001a\u000e\u0010c\u001a\u00020\u00012\u0006\u0010d\u001a\u00020\u0001\u001a\u000e\u0010e\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020f\"\u0014\u0010\u0015\u001a\u00020\u0003X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0011\u0010\u001c\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017\"\u0014\u0010\u001e\u001a\u00020\u0003X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017\"0\u0010 \u001a!\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0007j\u0002`!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#\"c\u00101\u001aK\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(3\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(4\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\f\u0018\u00010'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:\"c\u0010=\u001aK\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(3\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(4\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\f\u0018\u00010'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00108\"\u0004\b?\u0010:\"\u0011\u0010A\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bB\u0010C\"c\u0010D\u001aK\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(3\u0012\u0013\u0012\u001102¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(4\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\f\u0018\u00010'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u00108\"\u0004\bF\u0010:*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*@\u0010\u0006\"\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u00072\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0007*S\u0010\r\"\u001d\u0012\u0013\u0012\u0011`\u000e¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u000720\u0012&\u0012$0\u0005j\u0011`\u000e¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0007*@\u0010\u000f\"\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u00072\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0007*\n\u0010\u0011\"\u00020\u00032\u00020\u0003*@\u0010\u0012\"\u001d\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u00072\u001d\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0007¨\u0006g"}, d2 = {"ChooseMediaErrorCode", "", "ChooseMediaFileType", "", "ChooseMediaFail", "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;", "ChooseMediaSuccessCallback", "Lkotlin/Function1;", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;", "Lkotlin/ParameterName;", "name", WXBridgeManager.METHOD_CALLBACK, "", "ChooseMediaFailCallback", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFail;", "ChooseMediaCompleteCallback", "", "ChooseMediaPageOrientation", "ChooseMedia", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;", "options", "UniError_ChooseMedia", "getUniError_ChooseMedia", "()Ljava/lang/String;", "ChooseMediaUniErrors", "Lio/dcloud/uts/Map;", "getChooseMediaUniErrors", "()Lio/dcloud/uts/Map;", "mediaCachePath", "getMediaCachePath", "ASSETS_PATH", "getASSETS_PATH", "chooseMedia", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMedia;", "getChooseMedia", "()Lkotlin/jvm/functions/Function1;", "chooseMediaAll", "uniChooseMedia", "onSourceTypeSelect", "Lkotlin/Function3;", "count", "", "compressed", "index", "onMediaTypeSelect", AbsoluteConst.XML_ITEM, "getMediaType", "types", "Lio/dcloud/uts/UTSArray;", "takeVideoFunction", "", WXModule.REQUEST_CODE, WXModule.RESULT_CODE, "Landroid/content/Intent;", "data", "getTakeVideoFunction", "()Lkotlin/jvm/functions/Function3;", "setTakeVideoFunction", "(Lkotlin/jvm/functions/Function3;)V", "openCameraForMediaVideo", AbsoluteConst.JSON_KEY_OPTION, "takeCameraFunction", "getTakeCameraFunction", "setTakeCameraFunction", "openCameraForMediaImage", "GALLERY_MEDIA_PICKER_RESULT", "getGALLERY_MEDIA_PICKER_RESULT", "()Ljava/lang/Number;", "openMediaFunction", "getOpenMediaFunction", "setOpenMediaFunction", "openAlbumForMedia", "type", "openGalleryActivity", "sizeType", "crop", "pageOrientation", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;", "useSystem", "getMediaFileByType", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;", AbsoluteConst.XML_PATH, "mimeType", "getMediaTempFile", "getMediaInfo", "", "getVideoMetadata", "Lio/dcloud/uts/UTSJSONObject;", "src", "filePath", "saveBitmapToLocalPath", "bitmap", "Landroid/graphics/Bitmap;", "getOrientation", "reassignedPageOrientation", "getGlobalConfig", "copyFile", "fromFilePath", "toFilePath", "formatNumber", "input", "chooseMediaByJs", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;", "uni-chooseMedia_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class IndexKt {
    private static final String UniError_ChooseMedia = "uni-chooseMedia";
    private static Function3<? super Integer, ? super Integer, ? super Intent, Unit> openMediaFunction;
    private static Function3<? super Integer, ? super Integer, ? super Intent, Unit> takeCameraFunction;
    private static Function3<? super Integer, ? super Integer, ? super Intent, Unit> takeVideoFunction;
    private static final Map<Number, String> ChooseMediaUniErrors = new Map<>((UTSArray<UTSArray<Object>>) UTSArrayKt._uA(UTSArrayKt._uA(1101001, "user cancel"), UTSArrayKt._uA(1101005, DOMException.MSG_NO_PERMISSION), UTSArrayKt._uA(1101006, "save error"), UTSArrayKt._uA(1101008, "camera error"), UTSArrayKt._uA(1101010, "unexpect error")));
    private static final String mediaCachePath = UTSAndroid.INSTANCE.getAppCachePath() + "uni-media/";
    private static final String ASSETS_PATH = "/android_asset/";
    private static final Function1<ChooseMediaOptions, Unit> chooseMedia = new Function1() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda10
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke */
        public final Object invoke2(Object obj) {
            return IndexKt.chooseMedia$lambda$0((ChooseMediaOptions) obj);
        }
    };
    private static final Number GALLERY_MEDIA_PICKER_RESULT = (Number) 1004;

    public static final String getUniError_ChooseMedia() {
        return UniError_ChooseMedia;
    }

    public static final Map<Number, String> getChooseMediaUniErrors() {
        return ChooseMediaUniErrors;
    }

    public static final String getMediaCachePath() {
        return mediaCachePath;
    }

    public static final String getASSETS_PATH() {
        return ASSETS_PATH;
    }

    public static final Function1<ChooseMediaOptions, Unit> getChooseMedia() {
        return chooseMedia;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMedia$lambda$0(ChooseMediaOptions chooseMediaOptions) {
        chooseMediaAll(chooseMediaOptions);
        return Unit.INSTANCE;
    }

    public static final void chooseMediaAll(final ChooseMediaOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        uniChooseMedia(options, new Function3() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return IndexKt.chooseMediaAll$lambda$5(options, (Number) obj, ((Boolean) obj2).booleanValue(), (Number) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final kotlin.Unit chooseMediaAll$lambda$5(final uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions r8, final java.lang.Number r9, final boolean r10, final java.lang.Number r11) {
        /*
            r0 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            boolean r0 = io.dcloud.uts.NumberKt.numberEquals(r11, r0)
            if (r0 == 0) goto L58
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 32
            if (r10 > r11) goto L4c
            io.dcloud.uts.UTSAndroid r10 = io.dcloud.uts.UTSAndroid.INSTANCE
            android.app.Activity r10 = r10.getUniActivity()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            android.content.pm.ApplicationInfo r10 = r10.getApplicationInfo()
            int r10 = r10.targetSdkVersion
            r11 = 33
            if (r10 < r11) goto L25
            goto L4c
        L25:
            io.dcloud.uts.UTSAndroid r0 = io.dcloud.uts.UTSAndroid.INSTANCE
            io.dcloud.uts.UTSAndroid r10 = io.dcloud.uts.UTSAndroid.INSTANCE
            android.app.Activity r1 = r10.getUniActivity()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            java.lang.String r10 = "android.permission.READ_EXTERNAL_STORAGE"
            java.lang.String[] r10 = new java.lang.String[]{r10}
            io.dcloud.uts.UTSArray r2 = io.dcloud.uts.UTSArrayKt._uA(r10)
            uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda6 r3 = new uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda6
            r3.<init>()
            uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda7 r4 = new uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda7
            r4.<init>()
            r6 = 16
            r7 = 0
            r5 = 0
            io.dcloud.uts.UTSAndroid.requestSystemPermission$default(r0, r1, r2, r3, r4, r5, r6, r7)
            goto La7
        L4c:
            io.dcloud.uts.UTSArray r10 = r8.getMediaType()
            java.lang.Number r10 = getMediaType(r10)
            openAlbumForMedia(r8, r9, r10)
            goto La7
        L58:
            int r9 = android.os.Build.VERSION.SDK_INT
            r0 = 23
            if (r9 < r0) goto L8a
            java.lang.String r9 = "android.permission.CAMERA"
            java.lang.String[] r9 = new java.lang.String[]{r9}
            io.dcloud.uts.UTSArray r2 = io.dcloud.uts.UTSArrayKt._uA(r9)
            java.lang.String r9 = "null cannot be cast to non-null type io.dcloud.uts.UTSArray<kotlin.String>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r9)
            io.dcloud.uts.UTSAndroid r0 = io.dcloud.uts.UTSAndroid.INSTANCE
            io.dcloud.uts.UTSAndroid r9 = io.dcloud.uts.UTSAndroid.INSTANCE
            android.app.Activity r1 = r9.getUniActivity()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda8 r3 = new uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda8
            r3.<init>()
            uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda9 r4 = new uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda9
            r4.<init>()
            r6 = 16
            r7 = 0
            r5 = 0
            io.dcloud.uts.UTSAndroid.requestSystemPermission$default(r0, r1, r2, r3, r4, r5, r6, r7)
            goto La7
        L8a:
            r9 = 0
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            boolean r9 = io.dcloud.uts.NumberKt.numberEquals(r11, r9)
            if (r9 == 0) goto L99
            openCameraForMediaImage(r8, r10)
            goto La7
        L99:
            r9 = 2
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            boolean r9 = io.dcloud.uts.NumberKt.numberEquals(r11, r9)
            if (r9 == 0) goto La7
            openCameraForMediaVideo(r8, r10)
        La7:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: uts.sdk.modules.DCloudUniChooseMedia.IndexKt.chooseMediaAll$lambda$5(uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions, java.lang.Number, boolean, java.lang.Number):kotlin.Unit");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaAll$lambda$5$lambda$1(ChooseMediaOptions chooseMediaOptions, Number number, boolean z, UTSArray<String> uTSArray) {
        openAlbumForMedia(chooseMediaOptions, number, getMediaType(chooseMediaOptions.getMediaType()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaAll$lambda$5$lambda$2(ChooseMediaOptions chooseMediaOptions, boolean z, UTSArray<String> uTSArray) {
        ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101005, UniError_ChooseMedia);
        Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
        if (fail != null) {
            fail.invoke2(chooseMediaErrorImpl);
        }
        Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
        if (complete != null) {
            complete.invoke2(chooseMediaErrorImpl);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaAll$lambda$5$lambda$3(Number number, ChooseMediaOptions chooseMediaOptions, boolean z, boolean z2, UTSArray<String> uTSArray) {
        if (NumberKt.numberEquals(number, 0)) {
            openCameraForMediaImage(chooseMediaOptions, z);
        } else if (NumberKt.numberEquals(number, 2)) {
            openCameraForMediaVideo(chooseMediaOptions, z);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaAll$lambda$5$lambda$4(ChooseMediaOptions chooseMediaOptions, boolean z, UTSArray<String> uTSArray) {
        ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101005, UniError_ChooseMedia);
        Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
        if (fail != null) {
            fail.invoke2(chooseMediaErrorImpl);
        }
        Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
        if (complete != null) {
            complete.invoke2(chooseMediaErrorImpl);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Type inference failed for: r12v0, types: [T, io.dcloud.uts.UTSArray] */
    /* JADX WARN: Type inference failed for: r6v11, types: [T, io.dcloud.uts.UTSArray] */
    /* JADX WARN: Type inference failed for: r6v13, types: [T, io.dcloud.uts.UTSArray] */
    /* JADX WARN: Type inference failed for: r6v15, types: [T, io.dcloud.uts.UTSArray] */
    /* JADX WARN: Type inference failed for: r6v7, types: [T, io.dcloud.uts.UTSArray] */
    /* JADX WARN: Type inference failed for: r6v9, types: [T, io.dcloud.uts.UTSArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void uniChooseMedia(final uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions r23, final kotlin.jvm.functions.Function3<? super java.lang.Number, ? super java.lang.Boolean, ? super java.lang.Number, kotlin.Unit> r24) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: uts.sdk.modules.DCloudUniChooseMedia.IndexKt.uniChooseMedia(uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions, kotlin.jvm.functions.Function3):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit uniChooseMedia$lambda$6(Ref.ObjectRef<Number> objectRef, Ref.BooleanRef booleanRef, Ref.ObjectRef<UTSArray<String>> objectRef2, Function3<? super Number, ? super Boolean, ? super Number, Unit> function3, ShowActionSheetSuccess showActionSheetSuccess) {
        Number number = objectRef.element;
        Intrinsics.checkNotNull(number);
        boolean z = booleanRef.element;
        UTSArray<String> uTSArray = objectRef2.element;
        Number tapIndex = showActionSheetSuccess.getTapIndex();
        Intrinsics.checkNotNull(tapIndex);
        onMediaTypeSelect(number, z, uTSArray.get(tapIndex), function3);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit uniChooseMedia$lambda$7(ChooseMediaOptions chooseMediaOptions, IPromptError iPromptError) {
        ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
        Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
        if (fail != null) {
            fail.invoke2(chooseMediaErrorImpl);
        }
        Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
        if (complete != null) {
            complete.invoke2(chooseMediaErrorImpl);
        }
        return Unit.INSTANCE;
    }

    public static final void onMediaTypeSelect(Number count, boolean z, String item, Function3<? super Number, ? super Boolean, ? super Number, Unit> onSourceTypeSelect) {
        Intrinsics.checkNotNullParameter(count, "count");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(onSourceTypeSelect, "onSourceTypeSelect");
        int iHashCode = item.hashCode();
        if (iHashCode == -1915178910) {
            if (item.equals("从相册选择")) {
                onSourceTypeSelect.invoke(count, Boolean.valueOf(z), 1);
            }
        } else if (iHashCode == 777242) {
            if (item.equals("录像")) {
                onSourceTypeSelect.invoke(count, Boolean.valueOf(z), 2);
            }
        } else if (iHashCode == 809751 && item.equals("拍摄")) {
            onSourceTypeSelect.invoke(count, Boolean.valueOf(z), 0);
        }
    }

    public static final Number getMediaType(UTSArray<String> uTSArray) {
        if (uTSArray == null) {
            return (Number) 101;
        }
        String string = uTSArray.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = string.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        String str = lowerCase;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "mix", false, 2, (Object) null)) {
            return (Number) 101;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "image", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) str, (CharSequence) "video", false, 2, (Object) null)) {
            return (Number) 101;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "image", false, 2, (Object) null)) {
            return (Number) 100;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "video", false, 2, (Object) null)) {
            return (Number) 102;
        }
        return (Number) 101;
    }

    public static final Function3<Integer, Integer, Intent, Unit> getTakeVideoFunction() {
        return takeVideoFunction;
    }

    public static final void setTakeVideoFunction(Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3) {
        takeVideoFunction = function3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00fe A[Catch: Exception -> 0x0110, TryCatch #0 {Exception -> 0x0110, blocks: (B:6:0x003c, B:8:0x005a, B:9:0x0065, B:11:0x00c1, B:13:0x00d4, B:14:0x00e2, B:17:0x00ea, B:19:0x00f9, B:21:0x0101, B:23:0x0109, B:20:0x00fe), top: B:26:0x003c }] */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, java.io.File] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void openCameraForMediaVideo(final uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions r4, boolean r5) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: uts.sdk.modules.DCloudUniChooseMedia.IndexKt.openCameraForMediaVideo(uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCameraForMediaVideo$lambda$8(Number number, Ref.ObjectRef<File> objectRef, Ref.ObjectRef<String> objectRef2, ChooseMediaOptions chooseMediaOptions, int i, int i2, Intent intent) {
        if (NumberKt.numberEquals(number, Integer.valueOf(i))) {
            UTSAndroid uTSAndroid = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3 = takeVideoFunction;
            Intrinsics.checkNotNull(function3);
            uTSAndroid.offAppActivityResult(function3);
            if (i2 == -1) {
                if (objectRef.element.exists()) {
                    ChooseMediaTempFile mediaFileByType = getMediaFileByType(objectRef2.element, (Number) 3);
                    if (mediaFileByType != null) {
                        ChooseMediaSuccess chooseMediaSuccess = new ChooseMediaSuccess(UTSArrayKt._uA(mediaFileByType), "video");
                        Function1<ChooseMediaSuccess, Unit> success = chooseMediaOptions.getSuccess();
                        if (success != null) {
                            success.invoke2(chooseMediaSuccess);
                        }
                        Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
                        if (complete != null) {
                            complete.invoke2(chooseMediaSuccess);
                        }
                    } else {
                        ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
                        Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
                        if (fail != null) {
                            fail.invoke2(chooseMediaErrorImpl);
                        }
                        Function1<Object, Unit> complete2 = chooseMediaOptions.getComplete();
                        if (complete2 != null) {
                            complete2.invoke2(chooseMediaErrorImpl);
                        }
                    }
                } else {
                    ChooseMediaErrorImpl chooseMediaErrorImpl2 = new ChooseMediaErrorImpl((Number) 1101008, UniError_ChooseMedia);
                    Function1<IChooseMediaError, Unit> fail2 = chooseMediaOptions.getFail();
                    if (fail2 != null) {
                        fail2.invoke2(chooseMediaErrorImpl2);
                    }
                    Function1<Object, Unit> complete3 = chooseMediaOptions.getComplete();
                    if (complete3 != null) {
                        complete3.invoke2(chooseMediaErrorImpl2);
                    }
                }
            } else {
                ChooseMediaErrorImpl chooseMediaErrorImpl3 = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
                Function1<IChooseMediaError, Unit> fail3 = chooseMediaOptions.getFail();
                if (fail3 != null) {
                    fail3.invoke2(chooseMediaErrorImpl3);
                }
                Function1<Object, Unit> complete4 = chooseMediaOptions.getComplete();
                if (complete4 != null) {
                    complete4.invoke2(chooseMediaErrorImpl3);
                }
            }
            takeVideoFunction = null;
        }
        return Unit.INSTANCE;
    }

    public static final Function3<Integer, Integer, Intent, Unit> getTakeCameraFunction() {
        return takeCameraFunction;
    }

    public static final void setTakeCameraFunction(Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3) {
        takeCameraFunction = function3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, java.io.File] */
    public static final void openCameraForMediaImage(final ChooseMediaOptions option, boolean z) {
        Intrinsics.checkNotNullParameter(option, "option");
        final Integer num = (Number) 24;
        if (takeCameraFunction != null) {
            UTSAndroid uTSAndroid = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3 = takeCameraFunction;
            Intrinsics.checkNotNull(function3);
            uTSAndroid.offAppActivityResult(function3);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = mediaCachePath + System.currentTimeMillis() + ".jpg";
        try {
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = new File((String) objectRef.element);
            if (!((File) objectRef2.element).getParentFile().exists()) {
                ((File) objectRef2.element).getParentFile().mkdirs();
            }
            takeCameraFunction = new Function3() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return IndexKt.openCameraForMediaImage$lambda$9(num, objectRef2, objectRef, option, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (Intent) obj3);
                }
            };
            UTSAndroid uTSAndroid2 = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function32 = takeCameraFunction;
            Intrinsics.checkNotNull(function32);
            uTSAndroid2.onAppActivityResult(function32);
            Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
            Intrinsics.checkNotNull(uniActivity);
            StringBuilder sb = new StringBuilder();
            Activity uniActivity2 = UTSAndroid.INSTANCE.getUniActivity();
            Intrinsics.checkNotNull(uniActivity2);
            sb.append(uniActivity2.getPackageName());
            sb.append(".dc.fileprovider");
            Uri uriForFile = FileProvider.getUriForFile(uniActivity, sb.toString(), (File) objectRef2.element);
            Intrinsics.checkNotNullExpressionValue(uriForFile, "getUriForFile(...)");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", uriForFile);
            Activity uniActivity3 = UTSAndroid.INSTANCE.getUniActivity();
            if (uniActivity3 != null) {
                uniActivity3.startActivityForResult(intent, num.intValue());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCameraForMediaImage$lambda$9(Number number, Ref.ObjectRef<File> objectRef, Ref.ObjectRef<String> objectRef2, ChooseMediaOptions chooseMediaOptions, int i, int i2, Intent intent) {
        if (NumberKt.numberEquals(number, Integer.valueOf(i))) {
            UTSAndroid uTSAndroid = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3 = takeCameraFunction;
            Intrinsics.checkNotNull(function3);
            uTSAndroid.offAppActivityResult(function3);
            if (i2 == -1) {
                if (objectRef.element.exists()) {
                    ChooseMediaTempFile mediaFileByType = getMediaFileByType(objectRef2.element, (Number) 1);
                    if (mediaFileByType != null) {
                        ChooseMediaSuccess chooseMediaSuccess = new ChooseMediaSuccess(UTSArrayKt._uA(mediaFileByType), "image");
                        Function1<ChooseMediaSuccess, Unit> success = chooseMediaOptions.getSuccess();
                        if (success != null) {
                            success.invoke2(chooseMediaSuccess);
                        }
                        Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
                        if (complete != null) {
                            complete.invoke2(chooseMediaSuccess);
                        }
                    } else {
                        ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
                        Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
                        if (fail != null) {
                            fail.invoke2(chooseMediaErrorImpl);
                        }
                        Function1<Object, Unit> complete2 = chooseMediaOptions.getComplete();
                        if (complete2 != null) {
                            complete2.invoke2(chooseMediaErrorImpl);
                        }
                    }
                } else {
                    ChooseMediaErrorImpl chooseMediaErrorImpl2 = new ChooseMediaErrorImpl((Number) 1101008, UniError_ChooseMedia);
                    Function1<IChooseMediaError, Unit> fail2 = chooseMediaOptions.getFail();
                    if (fail2 != null) {
                        fail2.invoke2(chooseMediaErrorImpl2);
                    }
                    Function1<Object, Unit> complete3 = chooseMediaOptions.getComplete();
                    if (complete3 != null) {
                        complete3.invoke2(chooseMediaErrorImpl2);
                    }
                }
            } else {
                ChooseMediaErrorImpl chooseMediaErrorImpl3 = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
                Function1<IChooseMediaError, Unit> fail3 = chooseMediaOptions.getFail();
                if (fail3 != null) {
                    fail3.invoke2(chooseMediaErrorImpl3);
                }
                Function1<Object, Unit> complete4 = chooseMediaOptions.getComplete();
                if (complete4 != null) {
                    complete4.invoke2(chooseMediaErrorImpl3);
                }
            }
            takeCameraFunction = null;
        }
        return Unit.INSTANCE;
    }

    public static final Number getGALLERY_MEDIA_PICKER_RESULT() {
        return GALLERY_MEDIA_PICKER_RESULT;
    }

    public static final Function3<Integer, Integer, Intent, Unit> getOpenMediaFunction() {
        return openMediaFunction;
    }

    public static final void setOpenMediaFunction(Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3) {
        openMediaFunction = function3;
    }

    public static final void openAlbumForMedia(final ChooseMediaOptions option, Number count, Number type) {
        Intrinsics.checkNotNullParameter(option, "option");
        Intrinsics.checkNotNullParameter(count, "count");
        Intrinsics.checkNotNullParameter(type, "type");
        if (openMediaFunction != null) {
            UTSAndroid uTSAndroid = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3 = openMediaFunction;
            Intrinsics.checkNotNull(function3);
            uTSAndroid.offAppActivityResult(function3);
        }
        openMediaFunction = new Function3() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return IndexKt.openAlbumForMedia$lambda$11(option, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (Intent) obj3);
            }
        };
        UTSAndroid uTSAndroid2 = UTSAndroid.INSTANCE;
        Function3<? super Integer, ? super Integer, ? super Intent, Unit> function32 = openMediaFunction;
        Intrinsics.checkNotNull(function32);
        uTSAndroid2.onAppActivityResult(function32);
        openGalleryActivity(count, type, false, null, null, option.getPageOrientation(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openAlbumForMedia$lambda$11(ChooseMediaOptions chooseMediaOptions, int i, int i2, Intent intent) {
        String strJoin;
        ArrayList parcelableArrayListExtra;
        if (NumberKt.numberEquals(Integer.valueOf(i), GALLERY_MEDIA_PICKER_RESULT)) {
            UTSAndroid uTSAndroid = UTSAndroid.INSTANCE;
            Function3<? super Integer, ? super Integer, ? super Intent, Unit> function3 = openMediaFunction;
            Intrinsics.checkNotNull(function3);
            uTSAndroid.offAppActivityResult(function3);
            UTSArray uTSArray = new UTSArray();
            UTSArray uTSArray2 = new UTSArray();
            if (intent != null && (parcelableArrayListExtra = intent.getParcelableArrayListExtra(PickerConfig.EXTRA_RESULT)) != null) {
                for (Number numberInc = (Number) 0; NumberKt.compareTo(numberInc, Integer.valueOf(parcelableArrayListExtra.size())) < 0; numberInc = NumberKt.inc(numberInc)) {
                    Object obj = parcelableArrayListExtra.get(numberInc.intValue());
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type uts.sdk.modules.DCloudUniMedia.Media");
                    Media media = (Media) obj;
                    String path = media.path;
                    Intrinsics.checkNotNullExpressionValue(path, "path");
                    ChooseMediaTempFile mediaFileByType = getMediaFileByType(path, Integer.valueOf(media.mediaType));
                    if (mediaFileByType != null) {
                        uTSArray.add(mediaFileByType);
                        if (uTSArray2.indexOf(mediaFileByType.getFileType()) == -1) {
                            uTSArray2.add(mediaFileByType.getFileType());
                        }
                    }
                }
            }
            if (uTSArray.size() == 0) {
                ChooseMediaErrorImpl chooseMediaErrorImpl = new ChooseMediaErrorImpl((Number) 1101001, UniError_ChooseMedia);
                Function1<IChooseMediaError, Unit> fail = chooseMediaOptions.getFail();
                if (fail != null) {
                    fail.invoke2(chooseMediaErrorImpl);
                }
                Function1<Object, Unit> complete = chooseMediaOptions.getComplete();
                if (complete != null) {
                    complete.invoke2(chooseMediaErrorImpl);
                }
            } else {
                if (chooseMediaOptions.getMediaType() != null) {
                    UTSArray<String> mediaType = chooseMediaOptions.getMediaType();
                    Intrinsics.checkNotNull(mediaType);
                    String string = mediaType.toString();
                    Locale ENGLISH = Locale.ENGLISH;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    String lowerCase = string.toLowerCase(ENGLISH);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    strJoin = "mix";
                    if (!StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "mix", false, 2, (Object) null)) {
                        strJoin = TextUtils.join(",", uTSArray2);
                        Intrinsics.checkNotNullExpressionValue(strJoin, "join(...)");
                    }
                } else {
                    strJoin = TextUtils.join(",", uTSArray2);
                    Intrinsics.checkNotNullExpressionValue(strJoin, "join(...)");
                }
                ChooseMediaSuccess chooseMediaSuccess = new ChooseMediaSuccess(uTSArray, strJoin);
                Function1<ChooseMediaSuccess, Unit> success = chooseMediaOptions.getSuccess();
                if (success != null) {
                    success.invoke2(chooseMediaSuccess);
                }
                Function1<Object, Unit> complete2 = chooseMediaOptions.getComplete();
                if (complete2 != null) {
                    complete2.invoke2(chooseMediaSuccess);
                }
            }
            openMediaFunction = null;
        }
        return Unit.INSTANCE;
    }

    public static final void openGalleryActivity(Number count, Number type, boolean z, UTSArray<String> uTSArray, Object obj, String str, String str2) {
        Intrinsics.checkNotNullParameter(count, "count");
        Intrinsics.checkNotNullParameter(type, "type");
        Intent intent = new Intent();
        Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
        Intrinsics.checkNotNull(uniActivity);
        Intrinsics.checkNotNull(uniActivity);
        intent.setClassName(uniActivity, "uts.sdk.modules.DCloudUniMedia.SystemPickerActivity");
        intent.putExtra("select_mode", type);
        intent.putExtra(PickerConfig.SINGLE_SELECT, false);
        intent.putExtra(PickerConfig.COMPRESSED, z);
        intent.putExtra("max_select_count", count);
        if (uTSArray != null) {
            intent.putExtra(PickerConfig.SIZE_TYPE, JSON.stringify(uTSArray));
        }
        intent.putExtra("doc_path", mediaCachePath);
        intent.putExtra(PickerConfig.IMAGE_EDITABLE, true);
        intent.putExtra("page_orientation", getOrientation(str));
        intent.putExtra("copy_privacy_path", !UTSAndroid.INSTANCE.isUniAppX());
        Activity uniActivity2 = UTSAndroid.INSTANCE.getUniActivity();
        Intrinsics.checkNotNull(uniActivity2);
        Intrinsics.checkNotNull(uniActivity2);
        uniActivity2.startActivityForResult(intent, GALLERY_MEDIA_PICKER_RESULT.intValue());
    }

    public static final ChooseMediaTempFile getMediaFileByType(String path, Number mimeType) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        if (StringsKt.startsWith$default(path, "content://", false, 2, (Object) null)) {
            Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
            Intrinsics.checkNotNull(uniActivity);
            String type = uniActivity.getContentResolver().getType(Uri.parse(path));
            Intrinsics.checkNotNull(type);
            if (StringsKt.startsWith$default(type, "image/", false, 2, (Object) null)) {
                return getMediaTempFile(path, (Number) 1);
            }
            if (StringsKt.startsWith$default(type, "video", false, 2, (Object) null)) {
                return getMediaTempFile(path, (Number) 3);
            }
            return null;
        }
        if (NumberKt.numberEquals(mimeType, 1) || NumberKt.numberEquals(mimeType, 3)) {
            return getMediaTempFile(path, mimeType);
        }
        String strReplace = StringsKt.startsWith$default(path, DeviceInfo.FILE_PROTOCOL, false, 2, (Object) null) ? StringKt.replace(path, DeviceInfo.FILE_PROTOCOL, "") : path;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            BitmapFactory.decodeFile(strReplace, options);
            if (options.outHeight >= 0 && options.outWidth >= 0) {
                return getMediaTempFile(path, (Number) 1);
            }
            return getMediaTempFile(path, (Number) 3);
        } catch (Throwable unused) {
            return getMediaTempFile(path, (Number) 3);
        }
    }

    public static final ChooseMediaTempFile getMediaTempFile(String path, Number mimeType) {
        String str;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        if (StringsKt.startsWith$default(path, DeviceInfo.FILE_PROTOCOL, false, 2, (Object) null) || StringsKt.startsWith$default(path, "content://", false, 2, (Object) null)) {
            str = path;
        } else {
            str = DeviceInfo.FILE_PROTOCOL + path;
        }
        if (NumberKt.numberEquals(mimeType, 1)) {
            return new ChooseMediaTempFile(str, "image", Long.valueOf(getMediaInfo(path)), null, null, null, null, null, 248, null);
        }
        if (!NumberKt.numberEquals(mimeType, 3)) {
            return null;
        }
        UTSJSONObject videoMetadata = getVideoMetadata(path, mediaCachePath + "video_thumb_" + System.currentTimeMillis() + ".jpg");
        if (videoMetadata == null) {
            videoMetadata = UTSJSONObjectKt._uO(TuplesKt.to("duration", Double.valueOf(0.0d)), TuplesKt.to(AbsoluteConst.JSON_KEY_SIZE, Double.valueOf(0.0d)), TuplesKt.to("height", Double.valueOf(0.0d)), TuplesKt.to("width", Double.valueOf(0.0d)), TuplesKt.to("filePath", ""));
        }
        Intrinsics.checkNotNull(videoMetadata);
        Object obj = videoMetadata.get("filePath");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        String str2 = (String) obj;
        Object obj2 = videoMetadata.get("width");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Number");
        Number number = (Number) obj2;
        Object obj3 = videoMetadata.get("height");
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Number");
        Number number2 = (Number) obj3;
        Object obj4 = videoMetadata.get(AbsoluteConst.JSON_KEY_SIZE);
        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Number");
        Object obj5 = videoMetadata.get("duration");
        Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.Number");
        Object obj6 = videoMetadata.get("byteSize");
        Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Number");
        return new ChooseMediaTempFile(str, "video", (Number) obj4, (Number) obj6, (Number) obj5, number2, number, str2);
    }

    public static final long getMediaInfo(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Cursor cursorQuery = null;
        if (StringsKt.startsWith$default(path, "content://", false, 2, (Object) null)) {
            try {
                Context appContext = UTSAndroid.INSTANCE.getAppContext();
                Intrinsics.checkNotNull(appContext);
                cursorQuery = appContext.getContentResolver().query(Uri.parse(path), null, null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return 0L;
                }
                int columnIndex = cursorQuery.getColumnIndex("_size");
                long j = cursorQuery.isNull(columnIndex) ? 0L : cursorQuery.getLong(columnIndex);
                cursorQuery.close();
                return j;
            } catch (Throwable unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0L;
            }
        }
        String str = ASSETS_PATH;
        if (StringsKt.startsWith$default(path, str, false, 2, (Object) null)) {
            try {
                Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
                Intrinsics.checkNotNull(uniActivity);
                InputStream inputStreamOpen = uniActivity.getAssets().open(StringKt.replace(path, str, ""));
                Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
                int iAvailable = inputStreamOpen.available();
                inputStreamOpen.close();
                return iAvailable;
            } catch (Throwable unused2) {
            }
        } else {
            File file = new File(path);
            if (file.exists()) {
                return file.length();
            }
            if (StringsKt.startsWith$default(path, DeviceInfo.FILE_PROTOCOL, false, 2, (Object) null)) {
                File file2 = new File(StringKt.replace(path, DeviceInfo.FILE_PROTOCOL, ""));
                if (file2.exists()) {
                    return file2.length();
                }
            }
        }
        return 0L;
    }

    public static final UTSJSONObject getVideoMetadata(String src, String str) {
        Integer num;
        String str2;
        Integer numValueOf;
        Number numberRound;
        Intrinsics.checkNotNullParameter(src, "src");
        Double dValueOf = Double.valueOf(0.0d);
        UTSJSONObject uTSJSONObject_uO = UTSJSONObjectKt._uO(TuplesKt.to("duration", dValueOf), TuplesKt.to(AbsoluteConst.JSON_KEY_SIZE, dValueOf), TuplesKt.to("height", dValueOf), TuplesKt.to("width", dValueOf));
        File file = new File(src);
        String strConvert2AbsFullPath = !file.exists() ? UTSAndroid.INSTANCE.convert2AbsFullPath(src) : src;
        if (StringsKt.startsWith$default(strConvert2AbsFullPath, "/android_asset/", false, 2, (Object) null)) {
            StringBuilder sb = new StringBuilder();
            sb.append(UTSAndroid.INSTANCE.getAppCachePath());
            sb.append("uni-media/_");
            num = 0;
            sb.append(System.currentTimeMillis());
            String string = sb.toString();
            if (!copyFile(strConvert2AbsFullPath, string)) {
                return null;
            }
            strConvert2AbsFullPath = string;
        } else {
            num = 0;
        }
        if (!file.exists()) {
            file = new File(strConvert2AbsFullPath);
        }
        if (!file.exists() && !StringsKt.startsWith$default(src, "content://", false, 2, (Object) null)) {
            return null;
        }
        uTSJSONObject_uO.set("byteSize", Long.valueOf(getMediaInfo(strConvert2AbsFullPath)));
        String str3 = strConvert2AbsFullPath;
        uTSJSONObject_uO.set(AbsoluteConst.JSON_KEY_SIZE, formatNumber(Double.valueOf(getMediaInfo(str3) / 1024.0d)));
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (StringsKt.startsWith$default(str3, "content://", false, 2, (Object) null)) {
                Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
                Intrinsics.checkNotNull(uniActivity);
                mediaMetadataRetriever.setDataSource(uniActivity, Uri.parse(str3));
            } else {
                mediaMetadataRetriever.setDataSource(str3);
            }
            if (!saveBitmapToLocalPath(mediaMetadataRetriever.getFrameAtTime(0L, 2), str)) {
                uTSJSONObject_uO.set("filePath", "");
            } else {
                uTSJSONObject_uO.set("filePath", str);
            }
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
            Integer numValueOf2 = strExtractMetadata2 != null ? Float.valueOf(Float.parseFloat(strExtractMetadata2)) : null;
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
            Integer numValueOf3 = strExtractMetadata3 != null ? Float.valueOf(Float.parseFloat(strExtractMetadata3)) : null;
            String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(24);
            if (Intrinsics.areEqual("90", strExtractMetadata4) || Intrinsics.areEqual("270", strExtractMetadata4)) {
                if (numValueOf3 == null) {
                    numValueOf3 = num;
                }
                uTSJSONObject_uO.set("width", numValueOf3);
                if (numValueOf2 == null) {
                    numValueOf2 = num;
                }
                uTSJSONObject_uO.set("height", numValueOf2);
            } else {
                if (numValueOf2 == null) {
                    numValueOf2 = num;
                }
                uTSJSONObject_uO.set("width", numValueOf2);
                if (numValueOf3 == null) {
                    numValueOf3 = num;
                }
                uTSJSONObject_uO.set("height", numValueOf3);
            }
            if (strExtractMetadata4 != null) {
                int iHashCode = strExtractMetadata4.hashCode();
                if (iHashCode != 1815) {
                    if (iHashCode != 48873) {
                        if (iHashCode == 49803 && strExtractMetadata4.equals("270")) {
                            str2 = "left";
                        } else {
                            str2 = "up";
                        }
                    } else if (strExtractMetadata4.equals("180")) {
                        str2 = "down";
                    } else {
                        str2 = "up";
                    }
                } else if (strExtractMetadata4.equals("90")) {
                    str2 = "right";
                } else {
                    str2 = "up";
                }
            } else {
                str2 = "up";
            }
            Integer numValueOf4 = num;
            if (strExtractMetadata != null) {
                try {
                    numValueOf4 = Float.valueOf(Float.parseFloat(strExtractMetadata));
                } catch (Throwable unused) {
                }
            }
            BigDecimal scale = BigDecimal.valueOf(numValueOf4.doubleValue() / ((double) 1000)).setScale(2, 4);
            Intrinsics.checkNotNullExpressionValue(scale, "setScale(...)");
            uTSJSONObject_uO.set("duration", Float.valueOf(scale.floatValue()));
            uTSJSONObject_uO.set("orientation", str2);
            uTSJSONObject_uO.set("type", mediaMetadataRetriever.extractMetadata(12));
            String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(20);
            if (strExtractMetadata5 != null) {
                try {
                    numValueOf = Integer.valueOf((int) (Float.parseFloat(strExtractMetadata5) / 1000));
                } catch (Throwable unused2) {
                    numValueOf = null;
                }
            } else {
                numValueOf = null;
            }
            uTSJSONObject_uO.set("bitrate", numValueOf);
            String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(32);
            if (TextUtils.isEmpty(strExtractMetadata6)) {
                MediaExtractor mediaExtractor = new MediaExtractor();
                Activity uniActivity2 = UTSAndroid.INSTANCE.getUniActivity();
                Intrinsics.checkNotNull(uniActivity2);
                mediaExtractor.setDataSource(uniActivity2, Uri.parse(str3), (java.util.Map<String, String>) null);
                int trackCount = mediaExtractor.getTrackCount();
                numberRound = null;
                for (Integer numInc = num; NumberKt.compareTo(numInc, Integer.valueOf(trackCount)) < 0; numInc = NumberKt.inc(numInc)) {
                    MediaFormat trackFormat = mediaExtractor.getTrackFormat(numInc.intValue());
                    Intrinsics.checkNotNullExpressionValue(trackFormat, "getTrackFormat(...)");
                    String string2 = trackFormat.getString("mime");
                    if (!TextUtils.isEmpty(string2)) {
                        Intrinsics.checkNotNull(string2);
                        Intrinsics.checkNotNull(string2);
                        if (StringsKt.startsWith$default(string2, "video/", false, 2, (Object) null)) {
                            numberRound = Integer.valueOf(trackFormat.getInteger("frame-rate"));
                        }
                    }
                }
            } else {
                try {
                    Intrinsics.checkNotNull(strExtractMetadata6);
                    Intrinsics.checkNotNull(strExtractMetadata6);
                    numberRound = Math.round(NumberKt.times(NumberKt.div(Float.valueOf(Float.parseFloat(strExtractMetadata6)), numValueOf4), (Number) 1000));
                } catch (Throwable unused3) {
                    numberRound = null;
                }
            }
            uTSJSONObject_uO.set("fps", numberRound);
            return uTSJSONObject_uO;
        } catch (Throwable unused4) {
            return null;
        }
    }

    public static final boolean saveBitmapToLocalPath(Bitmap bitmap, String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        if (bitmap == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
                fileOutputStream2.close();
                return true;
            } catch (Throwable unused) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                return false;
            }
        } catch (Throwable unused2) {
        }
    }

    public static final Number getOrientation(String str) {
        if (str == null) {
            str = getGlobalConfig();
        }
        Intrinsics.checkNotNull(str);
        int iHashCode = str.hashCode();
        if (iHashCode != 3005871) {
            if (iHashCode != 729267099) {
                if (iHashCode == 1430647483 && str.equals("landscape")) {
                    return (Number) 6;
                }
            } else if (str.equals("portrait")) {
                return (Number) 1;
            }
        } else if (str.equals("auto")) {
            return (Number) 2;
        }
        return (Number) 1;
    }

    public static final String getGlobalConfig() {
        Object obj;
        try {
            Class<?> cls = Class.forName("io.dcloud.uniapp.framework.IndexKt");
            if (cls != null) {
                Field declaredField = cls.getDeclaredField("__uniConfig");
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(null);
                if (obj2 != null) {
                    Field declaredField2 = obj2.getClass().getDeclaredField("globalStyle");
                    declaredField2.setAccessible(true);
                    Object obj3 = declaredField2.get(obj2);
                    if (obj3 != null && (obj3 instanceof Map) && (obj = ((java.util.Map) obj3).get("pageOrientation")) != null) {
                        return (String) obj;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "portrait";
    }

    public static final boolean copyFile(String fromFilePath, String toFilePath) throws IOException {
        FileInputStream fileInputStream;
        Intrinsics.checkNotNullParameter(fromFilePath, "fromFilePath");
        Intrinsics.checkNotNullParameter(toFilePath, "toFilePath");
        try {
            String str = ASSETS_PATH;
            if (StringsKt.startsWith$default(fromFilePath, str, false, 2, (Object) null)) {
                Activity uniActivity = UTSAndroid.INSTANCE.getUniActivity();
                Intrinsics.checkNotNull(uniActivity);
                fileInputStream = uniActivity.getAssets().open(StringKt.replace(fromFilePath, str, ""));
            } else if (StringsKt.startsWith$default(fromFilePath, "content://", false, 2, (Object) null)) {
                Activity uniActivity2 = UTSAndroid.INSTANCE.getUniActivity();
                Intrinsics.checkNotNull(uniActivity2);
                fileInputStream = uniActivity2.getContentResolver().openInputStream(Uri.parse(fromFilePath));
            } else {
                File file = new File(fromFilePath);
                if (!file.exists() || !file.isFile() || !file.canRead()) {
                    return false;
                }
                fileInputStream = new FileInputStream(file);
            }
            if (fileInputStream == null) {
                return false;
            }
            File file2 = new File(toFilePath);
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            if (!file2.exists()) {
                file2.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            for (int i = fileInputStream.read(bArr); i > 0; i = fileInputStream.read(bArr)) {
                fileOutputStream.write(bArr, 0, i);
            }
            fileInputStream.close();
            fileOutputStream.close();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static final Number formatNumber(Number input) {
        Intrinsics.checkNotNullParameter(input, "input");
        DecimalFormat decimalFormat = new DecimalFormat("#.###");
        decimalFormat.setDecimalSeparatorAlwaysShown(false);
        String str = decimalFormat.format(input);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return Float.valueOf(Float.parseFloat(str));
    }

    public static final void chooseMediaByJs(final ChooseMediaOptionsJSONObject options) {
        Intrinsics.checkNotNullParameter(options, "options");
        chooseMedia.invoke2(new ChooseMediaOptions(options.getPageOrientation(), options.getCount(), options.getMediaType(), options.getSourceType(), options.getMaxDuration(), options.getCamera(), new Function1() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.chooseMediaByJs$lambda$13(options, (ChooseMediaSuccess) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.chooseMediaByJs$lambda$14(options, (IChooseMediaError) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.chooseMediaByJs$lambda$15(options, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaByJs$lambda$13(ChooseMediaOptionsJSONObject chooseMediaOptionsJSONObject, ChooseMediaSuccess chooseMediaSuccess) {
        UTSCallback success = chooseMediaOptionsJSONObject.getSuccess();
        if (success != null) {
            success.invoke(chooseMediaSuccess);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaByJs$lambda$14(ChooseMediaOptionsJSONObject chooseMediaOptionsJSONObject, IChooseMediaError iChooseMediaError) {
        UTSCallback fail = chooseMediaOptionsJSONObject.getFail();
        if (fail != null) {
            fail.invoke(iChooseMediaError);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit chooseMediaByJs$lambda$15(ChooseMediaOptionsJSONObject chooseMediaOptionsJSONObject, Object obj) {
        UTSCallback complete = chooseMediaOptionsJSONObject.getComplete();
        if (complete != null) {
            complete.invoke(obj);
        }
        return Unit.INSTANCE;
    }
}
