###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt (uts.sdk.modules.DCloudUniChooseMedia.IndexKt)
.class public final Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniChooseMedia/IndexKt\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,837:1\n33#2:838\n33#2:839\n33#2:840\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniChooseMedia/IndexKt\n*L\n186#1:838\n378#1:839\n379#1:840\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010$\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013\u001a[\u0010%\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00132K\u0010&\u001aG\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008((\u0012\u0013\u0012\u00110)\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(*\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u000c0\'\u001ak\u0010,\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010*\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00032K\u0010&\u001aG\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008((\u0012\u0013\u0012\u00110)\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(*\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u000c0\'\u001a\u0016\u0010.\u001a\u00020\u00012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u000100\u001a\u0016\u0010;\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010*\u001a\u00020)\u001a\u0016\u0010@\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010*\u001a\u00020)\u001a\u001e\u0010G\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u0001\u001aR\u0010I\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u00012\u0006\u0010*\u001a\u00020)2\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001002\u0008\u0010K\u001a\u0004\u0018\u00010\u00102\u000e\u0010L\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`M2\u0008\u0010N\u001a\u0004\u0018\u00010\u0003\u001a\u0018\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0001\u001a\u0018\u0010S\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0001\u001a\u000e\u0010T\u001a\u00020U2\u0006\u0010Q\u001a\u00020\u0003\u001a\u001a\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010X\u001a\u00020\u00032\u0008\u0010Y\u001a\u0004\u0018\u00010\u0003\u001a\u001a\u0010Z\u001a\u00020)2\u0008\u0010[\u001a\u0004\u0018\u00010\\2\u0008\u0010Y\u001a\u0004\u0018\u00010\u0003\u001a\u0016\u0010]\u001a\u00020\u00012\u000e\u0010^\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`M\u001a\u0006\u0010_\u001a\u00020\u0003\u001a\u0016\u0010`\u001a\u00020)2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u0003\u001a\u000e\u0010c\u001a\u00020\u00012\u0006\u0010d\u001a\u00020\u0001\u001a\u000e\u0010e\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020f\"\u0014\u0010\u0015\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017\"\u0014\u0010\u001e\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"0\u0010 \u001a!\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u000c0\u0007j\u0002`!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\"c\u00101\u001aK\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u000105\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(6\u0012\u0004\u0012\u00020\u000c\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\"c\u0010=\u001aK\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u000105\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(6\u0012\u0004\u0012\u00020\u000c\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00108\"\u0004\u0008?\u0010:\"\u0011\u0010A\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010C\"c\u0010D\u001aK\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u000105\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(6\u0012\u0004\u0012\u00020\u000c\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u00108\"\u0004\u0008F\u0010:*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*@\u0010\u0006\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u00072\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0007*S\u0010\r\"\u001d\u0012\u0013\u0012\u0011`\u000e\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u000720\u0012&\u0012$0\u0005j\u0011`\u000e\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0007*@\u0010\u000f\"\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u00072\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0007*\n\u0010\u0011\"\u00020\u00032\u00020\u0003*@\u0010\u0012\"\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u000c0\u00072\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u000c0\u0007\u00a8\u0006g"
    }
    d2 = {
        "ChooseMediaErrorCode",
        "",
        "ChooseMediaFileType",
        "",
        "ChooseMediaFail",
        "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
        "ChooseMediaSuccessCallback",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "",
        "ChooseMediaFailCallback",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFail;",
        "ChooseMediaCompleteCallback",
        "",
        "ChooseMediaPageOrientation",
        "ChooseMedia",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
        "options",
        "UniError_ChooseMedia",
        "getUniError_ChooseMedia",
        "()Ljava/lang/String;",
        "ChooseMediaUniErrors",
        "Lio/dcloud/uts/Map;",
        "getChooseMediaUniErrors",
        "()Lio/dcloud/uts/Map;",
        "mediaCachePath",
        "getMediaCachePath",
        "ASSETS_PATH",
        "getASSETS_PATH",
        "chooseMedia",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMedia;",
        "getChooseMedia",
        "()Lkotlin/jvm/functions/Function1;",
        "chooseMediaAll",
        "uniChooseMedia",
        "onSourceTypeSelect",
        "Lkotlin/Function3;",
        "count",
        "",
        "compressed",
        "index",
        "onMediaTypeSelect",
        "item",
        "getMediaType",
        "types",
        "Lio/dcloud/uts/UTSArray;",
        "takeVideoFunction",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "getTakeVideoFunction",
        "()Lkotlin/jvm/functions/Function3;",
        "setTakeVideoFunction",
        "(Lkotlin/jvm/functions/Function3;)V",
        "openCameraForMediaVideo",
        "option",
        "takeCameraFunction",
        "getTakeCameraFunction",
        "setTakeCameraFunction",
        "openCameraForMediaImage",
        "GALLERY_MEDIA_PICKER_RESULT",
        "getGALLERY_MEDIA_PICKER_RESULT",
        "()Ljava/lang/Number;",
        "openMediaFunction",
        "getOpenMediaFunction",
        "setOpenMediaFunction",
        "openAlbumForMedia",
        "type",
        "openGalleryActivity",
        "sizeType",
        "crop",
        "pageOrientation",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;",
        "useSystem",
        "getMediaFileByType",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;",
        "path",
        "mimeType",
        "getMediaTempFile",
        "getMediaInfo",
        "",
        "getVideoMetadata",
        "Lio/dcloud/uts/UTSJSONObject;",
        "src",
        "filePath",
        "saveBitmapToLocalPath",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getOrientation",
        "reassignedPageOrientation",
        "getGlobalConfig",
        "copyFile",
        "fromFilePath",
        "toFilePath",
        "formatNumber",
        "input",
        "chooseMediaByJs",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;",
        "uni-chooseMedia_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String;

.field private static final ChooseMediaUniErrors:Lio/dcloud/uts/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GALLERY_MEDIA_PICKER_RESULT:Ljava/lang/Number;

.field private static final UniError_ChooseMedia:Ljava/lang/String; = "uni-chooseMedia"

.field private static final chooseMedia:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaCachePath:Ljava/lang/String;

.field private static openMediaFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static takeCameraFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static takeVideoFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1lZRHRIXp5afVgU81BPPTklHDCY(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll$lambda$5$lambda$4(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BsfqRt6Z9K6BwleLEIC_ZbtsX48(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 7

    invoke-static/range {p0 .. p6}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaImage$lambda$9(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D2UWknUDSEwx0RF3-oLqWNx3vV8(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaByJs$lambda$13(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HrzfKbs_TTUXWLHC1pVedjaoZNQ(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaByJs$lambda$15(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NXGEVj2kHUKJGpf9x_cPRiSoRmg(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 7

    invoke-static/range {p0 .. p6}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaVideo$lambda$8(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NdriglcVtGG32rEzaBNKk4eRRvg(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll$lambda$5$lambda$1(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TsDobrfBZtOXgercSFEJOqJcO_I(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->uniChooseMedia$lambda$7(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vg3S2kmYRwzja1_TA1lE_zWBcL4(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openAlbumForMedia$lambda$11(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jptdvVnxlb1LSGZd0YgOM5z1ebg(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->uniChooseMedia$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k-G-cUz2hxZMjjGUiEK4r9o94ug(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaByJs$lambda$14(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q8zcdOcC4G2ZBlZHMgdJLUE4XGw(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll$lambda$5$lambda$2(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vVOETR0OWsKEB2B3Aa3fknLO7Nc(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll$lambda$5$lambda$3(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wpoK-YgccQJYSX4cjzzGZBHOXpE(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMedia$lambda$0(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zUeLgEtt2GzqChebPSDkcBzktNA(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLjava/lang/Number;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll$lambda$5(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLjava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 82
    new-instance v0, Lio/dcloud/uts/Map;

    const/4 v1, 0x5

    .line 83
    new-array v1, v1, [Lio/dcloud/uts/UTSArray;

    const v2, 0x10ccc9

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 85
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v6, "user cancel"

    aput-object v6, v4, v2

    .line 83
    invoke-static {v4}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    aput-object v4, v1, v5

    const v4, 0x10cccd

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "No Permission"

    aput-object v4, v6, v2

    .line 87
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    aput-object v4, v1, v2

    const v4, 0x10ccce

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 93
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "save error"

    aput-object v4, v6, v2

    .line 91
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    aput-object v4, v1, v3

    const v4, 0x10ccd0

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 97
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "camera error"

    aput-object v4, v6, v2

    .line 95
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const v4, 0x10ccd2

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const-string v4, "unexpect error"

    aput-object v4, v3, v2

    .line 99
    invoke-static {v3}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 82
    invoke-static {v1}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/uts/Map;-><init>(Lio/dcloud/uts/UTSArray;)V

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ChooseMediaUniErrors:Lio/dcloud/uts/Map;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uni-media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    .line 113
    const-string v0, "/android_asset/"

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ASSETS_PATH:Ljava/lang/String;

    .line 114
    new-instance v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMedia:Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x3ec

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->GALLERY_MEDIA_PICKER_RESULT:Ljava/lang/Number;

    return-void
.end method

.method private static final chooseMedia$lambda$0(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)Lkotlin/Unit;
    .registers 1

    .line 115
    invoke-static {p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMediaAll(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final chooseMediaAll(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda5;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    invoke-static {p0, v0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->uniChooseMedia(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final chooseMediaAll$lambda$5(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLjava/lang/Number;)Lkotlin/Unit;
    .registers 12

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 120
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x20

    if-gt p2, p3, :cond_4c

    sget-object p2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x21

    if-lt p2, p3, :cond_25

    goto :goto_4c

    .line 123
    :cond_25
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object p2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {p2}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    new-instance v3, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;)V

    new-instance v4, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda7;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lio/dcloud/uts/UTSAndroid;->requestSystemPermission$default(Lio/dcloud/uts/UTSAndroid;Landroid/app/Activity;Lio/dcloud/uts/UTSArray;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    goto :goto_a7

    .line 121
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object p2

    invoke-static {p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaType(Lio/dcloud/uts/UTSArray;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openAlbumForMedia(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;Ljava/lang/Number;)V

    goto :goto_a7

    .line 134
    :cond_58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_8a

    .line 136
    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    const-string p1, "null cannot be cast to non-null type io.dcloud.uts.UTSArray<kotlin.String>"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;

    invoke-direct {v3, p3, p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V

    new-instance v4, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda9;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lio/dcloud/uts/UTSAndroid;->requestSystemPermission$default(Lio/dcloud/uts/UTSAndroid;Landroid/app/Activity;Lio/dcloud/uts/UTSArray;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    goto :goto_a7

    :cond_8a
    const/4 p1, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 151
    invoke-static {p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaImage(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V

    goto :goto_a7

    :cond_99
    const/4 p1, 0x2

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 153
    invoke-static {p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaVideo(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V

    .line 157
    :cond_a7
    :goto_a7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaAll$lambda$5$lambda$1(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Ljava/lang/Number;",
            "Z",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object p2

    invoke-static {p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaType(Lio/dcloud/uts/UTSArray;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openAlbumForMedia(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 127
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaAll$lambda$5$lambda$2(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Z",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 128
    new-instance p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const p2, 0x10cccd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_19
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaAll$lambda$5$lambda$3(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "ZZ",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const/4 p3, 0x0

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, p3}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 140
    invoke-static {p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaImage(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V

    goto :goto_1d

    :cond_f
    const/4 p3, 0x2

    .line 141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, p3}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 142
    invoke-static {p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openCameraForMediaVideo(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V

    .line 144
    :cond_1d
    :goto_1d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaAll$lambda$5$lambda$4(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Z",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 145
    new-instance p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const p2, 0x10cccd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_19
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final chooseMediaByJs(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V
    .registers 12

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMedia:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getPageOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getCount()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getSourceType()Lio/dcloud/uts/UTSArray;

    move-result-object v5

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getMaxDuration()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getCamera()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda2;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V

    new-instance v9, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda3;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V

    new-instance v10, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda4;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V

    invoke-direct/range {v1 .. v10}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final chooseMediaByJs$lambda$13(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;)Lkotlin/Unit;
    .registers 4

    .line 827
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaByJs$lambda$14(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;)Lkotlin/Unit;
    .registers 4

    .line 830
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final chooseMediaByJs$lambda$15(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 833
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "fromFilePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 762
    :try_start_b
    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ASSETS_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v0, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 763
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, ""

    invoke-static {p0, v1, v3}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_6c

    .line 764
    :cond_2d
    const-string v1, "content://"

    invoke-static {p0, v1, v0, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 765
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_6c

    .line 767
    :cond_4b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_57

    return v0

    .line 771
    :cond_57
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_5e

    return v0

    .line 774
    :cond_5e
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_65

    return v0

    .line 777
    :cond_65
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast p0, Ljava/io/InputStream;
    :try_end_6c
    .catchall {:try_start_b .. :try_end_6c} :catchall_ad

    :goto_6c
    if-nez p0, :cond_6f

    return v0

    .line 786
    :cond_6f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_85

    .line 788
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 790
    :cond_85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 791
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 794
    :cond_8e
    :try_start_8e
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    .line 795
    new-array v1, v1, [B

    .line 796
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_9b
    if-lez v2, :cond_a5

    .line 798
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 799
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_9b

    .line 801
    :cond_a5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 802
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catchall {:try_start_8e .. :try_end_ab} :catchall_ad

    const/4 p0, 0x1

    return p0

    :catchall_ad
    return v0
.end method

.method public static final formatNumber(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 811
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 812
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final getASSETS_PATH()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ASSETS_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static final getChooseMedia()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->chooseMedia:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getChooseMediaUniErrors()Lio/dcloud/uts/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ChooseMediaUniErrors:Lio/dcloud/uts/Map;

    return-object v0
.end method

.method public static final getGALLERY_MEDIA_PICKER_RESULT()Ljava/lang/Number;
    .registers 1

    .line 369
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->GALLERY_MEDIA_PICKER_RESULT:Ljava/lang/Number;

    return-object v0
.end method

.method public static final getGlobalConfig()Ljava/lang/String;
    .registers 5

    .line 731
    const-string v0, "portrait"

    .line 732
    :try_start_2
    const-string v1, "io.dcloud.uniapp.framework.IndexKt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 734
    const-string v2, "__uniConfig"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 736
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 738
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "globalStyle"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 739
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 740
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 741
    instance-of v2, v1, Lio/dcloud/uts/Map;

    if-eqz v2, :cond_3f

    .line 742
    check-cast v1, Ljava/util/Map;

    const-string v2, "pageOrientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 744
    check-cast v1, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_3f

    return-object v1

    :catchall_3f
    :cond_3f
    return-object v0
.end method

.method public static final getMediaCachePath()Ljava/lang/String;
    .registers 1

    .line 112
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMediaFileByType(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;
    .registers 8

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    const-string v0, "content://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    .line 449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_56

    .line 442
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "image/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 444
    check-cast v4, Ljava/lang/Number;

    invoke-static {p0, v4}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    return-object p0

    .line 445
    :cond_46
    const-string v0, "video"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 446
    check-cast v5, Ljava/lang/Number;

    invoke-static {p0, v5}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    return-object p0

    :cond_55
    return-object v3

    .line 449
    :cond_56
    invoke-static {p1, v4}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-static {p1, v5}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_9b

    .line 453
    :cond_63
    const-string p1, "file://"

    invoke-static {p0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 454
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_72
    move-object p1, p0

    .line 457
    :goto_73
    :try_start_73
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 459
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 460
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz p1, :cond_8c

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz p1, :cond_8c

    .line 461
    check-cast v4, Ljava/lang/Number;

    invoke-static {p0, v4}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    return-object p0

    .line 463
    :cond_8c
    move-object p1, v5

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_94

    return-object p0

    .line 467
    :catchall_94
    check-cast v5, Ljava/lang/Number;

    invoke-static {p0, v5}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    return-object p0

    .line 450
    :cond_9b
    :goto_9b
    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    return-object p0
.end method

.method public static final getMediaInfo(Ljava/lang/String;)J
    .registers 13

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    const-string v0, "content://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_54

    .line 522
    :try_start_12
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 523
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_47

    .line 524
    const-string p0, "_size"

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 525
    invoke-interface {v3, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 526
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_4d

    .line 533
    :cond_43
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-wide v4

    :cond_47
    if-eqz v3, :cond_4c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-wide v4

    :catchall_4d
    nop

    if-eqz v3, :cond_53

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_53
    return-wide v4

    .line 537
    :cond_54
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->ASSETS_PATH:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_81

    .line 539
    :try_start_5e
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p0, v0, v7}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "open(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 541
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_5e .. :try_end_7f} :catchall_ad

    int-to-long v0, v0

    return-wide v0

    .line 545
    :cond_81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 547
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 549
    :cond_91
    const-string v0, "file://"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 550
    new-instance v1, Ljava/io/File;

    invoke-static {p0, v0, v7}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 552
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :catchall_ad
    :cond_ad
    return-wide v4
.end method

.method public static final getMediaTempFile(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "path"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mimeType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    const-string v2, "file://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    const-string v6, "content://"

    invoke-static {v0, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_30

    .line 478
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_31

    :cond_30
    :goto_30
    move-object v7, v0

    :goto_31
    const/4 v2, 0x1

    .line 480
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 481
    invoke-static {v0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaInfo(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v6, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Number;

    const/16 v15, 0xf8

    const/16 v16, 0x0

    const-string v8, "image"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v16}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_58
    const/4 v6, 0x3

    .line 482
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "video_thumb_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getVideoMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 485
    const-string v1, "duration"

    const-string v5, "size"

    const-string v8, "height"

    const-string v9, "width"

    const-string v10, "filePath"

    if-nez v0, :cond_cc

    const/4 v0, 0x5

    .line 486
    new-array v0, v0, [Lkotlin/Pair;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v1, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v0, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, ""

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 488
    :cond_cc
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 491
    invoke-virtual {v0, v9}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v2

    check-cast v13, Ljava/lang/Number;

    .line 496
    invoke-virtual {v0, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    check-cast v12, Ljava/lang/Number;

    .line 501
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    check-cast v9, Ljava/lang/Number;

    .line 506
    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Ljava/lang/Number;

    .line 511
    const-string v1, "byteSize"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    check-cast v10, Ljava/lang/Number;

    .line 488
    new-instance v6, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    const-string v8, "video"

    invoke-direct/range {v6 .. v14}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    return-object v6

    :cond_119
    return-object v5
.end method

.method public static final getMediaType(Lio/dcloud/uts/UTSArray;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    const/16 v0, 0x65

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p0, :cond_b

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 245
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/uts/UTSArray;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    check-cast p0, Ljava/lang/CharSequence;

    const-string v1, "mix"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 247
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 248
    :cond_31
    const-string v1, "image"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    const-string v6, "video"

    if-eqz v5, :cond_4a

    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 249
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 250
    :cond_4a
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/16 p0, 0x64

    .line 251
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 252
    :cond_5b
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/16 p0, 0x66

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 255
    :cond_6c
    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public static final getOpenMediaFunction()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public static final getOrientation(Ljava/lang/String;)Ljava/lang/Number;
    .registers 4

    if-nez p0, :cond_6

    .line 717
    invoke-static {}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getGlobalConfig()Ljava/lang/String;

    move-result-object p0

    .line 719
    :cond_6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2dddaf

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3f

    const v1, 0x2b77bb9b

    if-eq v0, v1, :cond_2f

    const v1, 0x5545f2bb

    if-eq v0, v1, :cond_1e

    goto :goto_47

    :cond_1e
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_47

    :cond_27
    const/4 p0, 0x6

    .line 725
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 719
    :cond_2f
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_47

    .line 723
    :cond_38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 719
    :cond_3f
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    .line 727
    :goto_47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_4e
    const/4 p0, 0x2

    .line 721
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final getTakeCameraFunction()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 318
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public static final getTakeVideoFunction()Lkotlin/jvm/functions/Function3;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 259
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public static final getUniError_ChooseMedia()Ljava/lang/String;
    .registers 1

    .line 81
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVideoMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSJSONObject;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "90"

    const-string v3, "src"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 562
    new-array v4, v3, [Lkotlin/Pair;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "duration"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x0

    .line 606
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 562
    aput-object v7, v4, v8

    const-string v7, "size"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v4, v11

    const-string v10, "height"

    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v4, v12

    const-string v11, "width"

    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v13, 0x3

    aput-object v5, v4, v13

    invoke-static {v4}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v4

    .line 564
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_52

    .line 566
    sget-object v13, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v13, v0}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_53

    :cond_52
    move-object v13, v0

    .line 568
    :goto_53
    const-string v14, "/android_asset/"

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v12, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_85

    .line 569
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual/range {v16 .. v16}, Lio/dcloud/uts/UTSAndroid;->getAppCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uni-media/_"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 570
    invoke-static {v13, v8}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_84

    move-object v13, v8

    goto :goto_87

    :cond_84
    return-object v15

    :cond_85
    move-object/from16 v16, v9

    .line 576
    :goto_87
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_92

    .line 577
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    :cond_92
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v8, "content://"

    if-nez v5, :cond_a2

    const/4 v3, 0x0

    invoke-static {v0, v8, v3, v12, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    return-object v15

    .line 582
    :cond_a2
    invoke-static {v13}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaInfo(Ljava/lang/String;)J

    move-result-wide v17

    .line 583
    const-string v0, "byteSize"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v13

    .line 584
    invoke-static {v5}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaInfo(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    div-double v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-static {v9}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->formatNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    :try_start_c6
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 587
    invoke-static {v5, v8, v3, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 588
    sget-object v8, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v8}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_e9

    .line 590
    :cond_e6
    invoke-virtual {v7, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_e9
    const-wide/16 v8, 0x0

    const/4 v0, 0x2

    .line 592
    invoke-virtual {v7, v8, v9, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->saveBitmapToLocalPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v8
    :try_end_f4
    .catchall {:try_start_c6 .. :try_end_f4} :catchall_2a6

    .line 593
    const-string v9, "filePath"

    if-nez v8, :cond_fe

    .line 594
    :try_start_f8
    const-string v1, ""

    invoke-virtual {v4, v9, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_101

    .line 596
    :cond_fe
    invoke-virtual {v4, v9, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_101
    const/16 v1, 0x9

    .line 598
    invoke-virtual {v7, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x12

    .line 599
    invoke-virtual {v7, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_118

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_119

    :cond_118
    move-object v8, v15

    :goto_119
    check-cast v8, Ljava/lang/Number;

    const/16 v9, 0x13

    .line 600
    invoke-virtual {v7, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12c

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_12d

    :cond_12c
    move-object v9, v15

    :goto_12d
    check-cast v9, Ljava/lang/Number;

    const/16 v12, 0x18

    .line 601
    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 602
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_139
    .catchall {:try_start_f8 .. :try_end_139} :catchall_2a6

    const-string v14, "270"

    if-nez v13, :cond_159

    :try_start_13d
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_144

    goto :goto_159

    :cond_144
    if-eqz v8, :cond_147

    goto :goto_14b

    .line 617
    :cond_147
    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Number;

    .line 614
    :goto_14b
    invoke-virtual {v4, v11, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v9, :cond_151

    goto :goto_155

    .line 622
    :cond_151
    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Number;

    .line 619
    :goto_155
    invoke-virtual {v4, v10, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16d

    :cond_159
    :goto_159
    if-eqz v9, :cond_15c

    goto :goto_160

    .line 606
    :cond_15c
    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Number;

    .line 603
    :goto_160
    invoke-virtual {v4, v11, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v8, :cond_166

    goto :goto_16a

    .line 611
    :cond_166
    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Number;

    .line 608
    :goto_16a
    invoke-virtual {v4, v10, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16d
    if-eqz v12, :cond_1a2

    .line 625
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x717

    if-eq v8, v9, :cond_198

    const v2, 0xbee9

    if-eq v8, v2, :cond_18c

    const v2, 0xc28b

    if-eq v8, v2, :cond_182

    goto :goto_1a2

    :cond_182
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_189

    goto :goto_1a2

    .line 629
    :cond_189
    const-string v2, "left"

    goto :goto_1a4

    .line 625
    :cond_18c
    const-string v2, "180"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_195

    goto :goto_1a2

    .line 631
    :cond_195
    const-string v2, "down"

    goto :goto_1a4

    .line 625
    :cond_198
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19f

    goto :goto_1a2

    .line 627
    :cond_19f
    const-string v2, "right"

    goto :goto_1a4

    .line 633
    :cond_1a2
    :goto_1a2
    const-string v2, "up"

    .line 635
    :goto_1a4
    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Number;
    :try_end_1a8
    .catchall {:try_start_13d .. :try_end_1a8} :catchall_2a6

    if-eqz v1, :cond_1b5

    .line 638
    :try_start_1aa
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;
    :try_end_1b4
    .catchall {:try_start_1aa .. :try_end_1b4} :catchall_1b5

    move-object v9, v1

    .line 642
    :catchall_1b5
    :cond_1b5
    :try_start_1b5
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const/16 v1, 0x3e8

    int-to-double v12, v1

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    const/4 v0, 0x4

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    const-string v10, "setScale(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    const-string v6, "orientation"

    invoke-virtual {v4, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 645
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 646
    const-string v6, "type"

    invoke-virtual {v4, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    .line 647
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1ed
    .catchall {:try_start_1b5 .. :try_end_1ed} :catchall_2a6

    if-eqz v2, :cond_1fd

    .line 651
    :try_start_1ef
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float v6, v1

    div-float/2addr v2, v6

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;
    :try_end_1fc
    .catchall {:try_start_1ef .. :try_end_1fc} :catchall_1fd

    goto :goto_1fe

    :catchall_1fd
    :cond_1fd
    move-object v2, v15

    .line 655
    :goto_1fe
    :try_start_1fe
    const-string v6, "bitrate"

    invoke-virtual {v4, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x20

    .line 657
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 658
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27c

    .line 659
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 660
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v15}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 661
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 663
    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Number;

    move-object v5, v15

    .line 664
    :goto_232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {v9, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v6

    if-gez v6, :cond_2a0

    .line 665
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "getTrackFormat(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    const-string v7, "mime"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 667
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_275

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v8, "video/"

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v7, v8, v3, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 668
    const-string v5, "frame-rate"

    invoke-virtual {v6, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 669
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_277

    :cond_275
    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 671
    :cond_277
    :goto_277
    invoke-static {v9}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v9
    :try_end_27b
    .catchall {:try_start_1fe .. :try_end_27b} :catchall_2a6

    goto :goto_232

    .line 676
    :cond_27c
    :try_start_27c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v9}, Lio/dcloud/uts/NumberKt;->div(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/Math;->round(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5
    :try_end_29e
    .catchall {:try_start_27c .. :try_end_29e} :catchall_29f

    goto :goto_2a0

    :catchall_29f
    move-object v5, v15

    .line 680
    :cond_2a0
    :goto_2a0
    :try_start_2a0
    const-string v0, "fps"

    invoke-virtual {v4, v0, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a5
    .catchall {:try_start_2a0 .. :try_end_2a5} :catchall_2a6

    return-object v4

    :catchall_2a6
    return-object v15
.end method

.method public static final onMediaTypeSelect(Ljava/lang/Number;ZLjava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSourceTypeSelect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72274f9e

    if-eq v0, v1, :cond_4e

    const v1, 0xbdc1a

    if-eq v0, v1, :cond_38

    const v1, 0xc5b17

    if-eq v0, v1, :cond_23

    goto :goto_56

    :cond_23
    const-string v0, "\u62cd\u6444"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_38
    const-string v0, "\u5f55\u50cf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    goto :goto_56

    .line 238
    :cond_41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_4e
    const-string v0, "\u4ece\u76f8\u518c\u9009\u62e9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_57

    :cond_56
    :goto_56
    return-void

    .line 236
    :cond_57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final openAlbumForMedia(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 12

    const-string v0, "option"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "count"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_1d

    .line 373
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 375
    :cond_1d
    new-instance v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda11;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    sput-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    .line 421
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->onAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 422
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getPageOrientation()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openGalleryActivity(Ljava/lang/Number;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final openAlbumForMedia$lambda$11(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 11

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->GALLERY_MEDIA_PICKER_RESULT:Ljava/lang/Number;

    invoke-static {p1, p2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 377
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 839
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 840
    new-instance p2, Lio/dcloud/uts/UTSArray;

    invoke-direct {p2}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_7f

    .line 381
    const-string v1, "select_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_7f

    .line 384
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 385
    :goto_31
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-gez v2, :cond_7f

    .line 386
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type uts.sdk.modules.DCloudUniMedia.Media"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Luts/sdk/modules/DCloudUniMedia/Media;

    .line 387
    iget-object v3, v2, Luts/sdk/modules/DCloudUniMedia/Media;->path:Ljava/lang/String;

    const-string v4, "path"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v2, Luts/sdk/modules/DCloudUniMedia/Media;->mediaType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v3, v2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaFileByType(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 389
    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7a

    .line 391
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_7a
    invoke-static {v1}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    goto :goto_31

    .line 399
    :cond_7f
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_a9

    .line 400
    new-instance p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const p2, 0x10ccc9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    sget-object p3, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_9f

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_9f
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_10b

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10b

    .line 405
    :cond_a9
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object p3

    const-string v2, "join(...)"

    const-string v3, ","

    if-eqz p3, :cond_e9

    .line 406
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lio/dcloud/uts/UTSArray;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "ENGLISH"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    const-string v4, "mix"

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    invoke-static {p3, v5, v0, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_dd

    goto :goto_f4

    .line 409
    :cond_dd
    check-cast v3, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f4

    .line 412
    :cond_e9
    check-cast v3, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    :goto_f4
    new-instance p2, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;

    invoke-direct {p2, p1, v4}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;-><init>(Lio/dcloud/uts/UTSArray;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_102

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_102
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_10b

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_10b
    :goto_10b
    sput-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    .line 420
    :cond_10d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final openCameraForMediaImage(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V
    .registers 6

    const-string p1, "option"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x18

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 321
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_1b

    .line 322
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 324
    :cond_1b
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 326
    :try_start_3c
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 327
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_65

    .line 328
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 330
    :cond_65
    new-instance v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, v0, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    sput-object v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    .line 361
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSAndroid;->onAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 362
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "getUriForFile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v1, "output"

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_c9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_c9} :catch_c9

    :catch_c9
    :cond_c9
    return-void
.end method

.method private static final openCameraForMediaImage$lambda$9(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "II",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 331
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p0, p4}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 332
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object p4, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    const/4 p0, -0x1

    const p4, 0x10ccc9

    if-ne p5, p0, :cond_9b

    .line 334
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_78

    .line 335
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-static {p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaFileByType(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 338
    new-instance p2, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;

    .line 339
    new-array p1, p1, [Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    const/4 p4, 0x0

    aput-object p0, p1, p4

    .line 338
    invoke-static {p1}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object p0

    const-string p1, "image"

    invoke-direct {p2, p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;-><init>(Lio/dcloud/uts/UTSArray;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_4e

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_4e
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_ba

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 344
    :cond_58
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_6e

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_6e
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_ba

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 349
    :cond_78
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const p1, 0x10ccd0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_91

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_91
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_ba

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 354
    :cond_9b
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_b1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_b1
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_ba

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    :goto_ba
    const/4 p0, 0x0

    .line 358
    sput-object p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    .line 360
    :cond_bd
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final openCameraForMediaVideo(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V
    .registers 6

    const-string p1, "option"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x17

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 262
    sget-object v0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_1b

    .line 263
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 265
    :cond_1b
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 267
    :try_start_3c
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 268
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_65

    .line 269
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 271
    :cond_65
    new-instance v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, v1, v0, p0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    sput-object v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    .line 302
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSAndroid;->onAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    .line 303
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getUriForFile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v2, "output"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMaxDuration()Ljava/lang/Number;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMaxDuration()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-lez v0, :cond_e2

    .line 307
    const-string v0, "android.intent.extra.durationLimit"

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMaxDuration()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 309
    :cond_e2
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getCamera()Ljava/lang/String;

    move-result-object v0
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_e6} :catch_110

    const-string v3, "android.intent.extras.CAMERA_FACING"

    if-eqz v0, :cond_fe

    :try_start_ea
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "front"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fe

    const/4 p0, 0x1

    .line 310
    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_101

    .line 312
    :cond_fe
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_101
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_110

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_110} :catch_110

    :catch_110
    :cond_110
    return-void
.end method

.method private static final openCameraForMediaVideo$lambda$8(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "II",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 272
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p0, p4}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_be

    .line 273
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object p4, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Lio/dcloud/uts/UTSAndroid;->offAppActivityResult(Lkotlin/jvm/functions/Function3;)V

    const/4 p0, -0x1

    const p4, 0x10ccc9

    if-ne p5, p0, :cond_9c

    .line 275
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_79

    .line 276
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getMediaFileByType(Ljava/lang/String;Ljava/lang/Number;)Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 279
    new-instance p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;

    const/4 p2, 0x1

    .line 280
    new-array p2, p2, [Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;

    const/4 p4, 0x0

    aput-object p0, p2, p4

    .line 279
    invoke-static {p2}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object p0

    const-string p2, "video"

    invoke-direct {p1, p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;-><init>(Lio/dcloud/uts/UTSArray;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_4f

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_4f
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_bb

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 285
    :cond_59
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_6f

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_6f
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_bb

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 290
    :cond_79
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const p1, 0x10ccd0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_92

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_92
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_bb

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 295
    :cond_9c
    new-instance p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    sget-object p2, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_b2

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_b2
    invoke-virtual {p3}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_bb

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bb
    :goto_bb
    const/4 p0, 0x0

    .line 299
    sput-object p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    .line 301
    :cond_be
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final openGalleryActivity(Ljava/lang/Number;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Z",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p4, "count"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "type"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 426
    sget-object p6, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p6}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p6

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p6, Landroid/content/Context;

    const-string v0, "uts.sdk.modules.DCloudUniMedia.SystemPickerActivity"

    invoke-virtual {p4, p6, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string p6, "select_mode"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p4, p6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    const-string p1, "single_select"

    const/4 p6, 0x0

    invoke-virtual {p4, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    const-string p1, "COMPRESSED"

    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string p1, "max_select_count"

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {p4, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_46

    .line 432
    const-string p0, "size_type"

    invoke-static {p3}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    :cond_46
    const-string p0, "doc_path"

    sget-object p1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->mediaCachePath:Ljava/lang/String;

    invoke-virtual {p4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string p0, "image_editable"

    const/4 p1, 0x1

    invoke-virtual {p4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    invoke-static {p5}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getOrientation(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    const-string p2, "page_orientation"

    invoke-virtual {p4, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 437
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->isUniAppX()Z

    move-result p0

    xor-int/2addr p0, p1

    const-string p1, "copy_privacy_path"

    invoke-virtual {p4, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->GALLERY_MEDIA_PICKER_RESULT:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static final saveBitmapToLocalPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 5

    .line 688
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 691
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_21

    .line 693
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 695
    :cond_21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 696
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2a
    if-nez p0, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x0

    .line 703
    :try_start_2e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_44

    .line 704
    :try_start_35
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_41

    .line 710
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_41
    nop

    move-object p1, v2

    goto :goto_45

    :catchall_44
    nop

    :goto_45
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_4a
    return v1
.end method

.method public static final setOpenMediaFunction(Lkotlin/jvm/functions/Function3;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 370
    sput-object p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->openMediaFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final setTakeCameraFunction(Lkotlin/jvm/functions/Function3;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 318
    sput-object p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeCameraFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final setTakeVideoFunction(Lkotlin/jvm/functions/Function3;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 259
    sput-object p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->takeVideoFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final uniChooseMedia(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Lkotlin/jvm/functions/Function3;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "options"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onSourceTypeSelect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getCount()Ljava/lang/Number;

    move-result-object v3

    const/16 v4, 0x9

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_3f

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getCount()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-static {v3, v7}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    if-gtz v3, :cond_37

    .line 163
    check-cast v4, Ljava/lang/Number;

    goto :goto_41

    .line 165
    :cond_37
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getCount()Ljava/lang/Number;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_41

    .line 168
    :cond_3f
    check-cast v4, Ljava/lang/Number;

    .line 161
    :goto_41
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 171
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSourceType()Lio/dcloud/uts/UTSArray;

    move-result-object v4

    const-string v7, "camera"

    const-string v8, "album"

    if-eqz v4, :cond_6d

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSourceType()Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v4

    check-cast v6, Ljava/lang/Number;

    invoke-static {v4, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v4

    if-lez v4, :cond_6d

    .line 172
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getSourceType()Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_75

    .line 176
    :cond_6d
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v4}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    .line 179
    :goto_75
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getMediaType()Lio/dcloud/uts/UTSArray;

    move-result-object v6

    .line 180
    const-string v9, "video"

    const-string v10, "image"

    if-nez v6, :cond_87

    .line 183
    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    .line 186
    :cond_87
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 838
    new-instance v12, Lio/dcloud/uts/UTSArray;

    invoke-direct {v12}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 186
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 187
    invoke-virtual {v4, v7}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 188
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "mix"

    invoke-virtual {v6, v7}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "\u5f55\u50cf"

    const-string v13, "\u62cd\u6444"

    if-eqz v7, :cond_b3

    .line 191
    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f6

    .line 193
    :cond_b3
    invoke-virtual {v6, v10}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-virtual {v6, v9}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 196
    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f6

    .line 198
    :cond_ca
    invoke-virtual {v6, v10}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 200
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f6

    .line 202
    :cond_db
    invoke-virtual {v6, v9}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 204
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f6

    .line 209
    :cond_ec
    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {v6}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    :cond_f6
    :goto_f6
    invoke-virtual {v4, v8}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 214
    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/dcloud/uts/UTSArray;

    const-string v6, "\u4ece\u76f8\u518c\u9009\u62e9"

    invoke-virtual {v4, v6}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_105
    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/dcloud/uts/UTSArray;

    invoke-virtual {v4}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 217
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    iget-boolean v2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v3, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/dcloud/uts/UTSArray;

    invoke-virtual {v3, v5}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->onMediaTypeSelect(Ljava/lang/Number;ZLjava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void

    .line 219
    :cond_134
    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/dcloud/uts/UTSArray;

    invoke-virtual {v4}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v4

    if-lez v4, :cond_173

    .line 220
    invoke-static {}, Lio/dcloud/uniapp/extapi/UniPromptKt;->getShowActionSheet()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    new-instance v12, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    iget-object v5, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Lio/dcloud/uts/UTSArray;

    new-instance v5, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;

    invoke-direct {v5, v2, v3, v11, v1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda1;-><init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V

    const/16 v21, 0x9b

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v1

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v22}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_173
    return-void
.end method

.method private static final uniChooseMedia$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lio/dcloud/uts/UTSArray;

    invoke-virtual {p4}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;->getTapIndex()Ljava/lang/Number;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p4}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->onMediaTypeSelect(Ljava/lang/Number;ZLjava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 222
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final uniChooseMedia$lambda$7(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 4

    .line 224
    new-instance p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;

    const v0, 0x10ccc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    sget-object v1, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->UniError_ChooseMedia:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_19
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/lang/Number;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Number;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Number;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda0;->f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, p3

    check-cast v6, Landroid/content/Intent;

    invoke-static/range {v0 .. v6}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$BsfqRt6Z9K6BwleLEIC_ZbtsX48(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/IPromptError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$TsDobrfBZtOXgercSFEJOqJcO_I(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda10 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda10)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$wpoK-YgccQJYSX4cjzzGZBHOXpE(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda11 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda11)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda11;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda11;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/Intent;

    invoke-static {v0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$Vg3S2kmYRwzja1_TA1lE_zWBcL4(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda12 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda12)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/lang/Number;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Number;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Number;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda12;->f$3:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, p3

    check-cast v6, Landroid/content/Intent;

    invoke-static/range {v0 .. v6}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$NXGEVj2kHUKJGpf9x_cPRiSoRmg(Ljava/lang/Number;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;IILandroid/content/Intent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda13 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda13)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$3:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda13;->f$3:Lkotlin/jvm/functions/Function3;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;

    invoke-static {v0, v1, v2, v3, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$jptdvVnxlb1LSGZd0YgOM5z1ebg(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$D2UWknUDSEwx0RF3-oLqWNx3vV8(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$k-G-cUz2hxZMjjGUiEK4r9o94ug(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda4 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda4)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$HrzfKbs_TTUXWLHC1pVedjaoZNQ(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda5 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda5)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda5;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda5;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Number;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-static {v0, p1, p2, p3}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$zUeLgEtt2GzqChebPSDkcBzktNA(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLjava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda6 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda6)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

.field public final synthetic f$1:Ljava/lang/Number;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lio/dcloud/uts/UTSArray;

    invoke-static {v0, v1, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$NdriglcVtGG32rEzaBNKk4eRRvg(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Ljava/lang/Number;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda7 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda7)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda7;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda7;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lio/dcloud/uts/UTSArray;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$q8zcdOcC4G2ZBlZHMgdJLUE4XGw(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda8 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda8)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/Number;

.field public final synthetic f$1:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Number;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$1:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    iput-boolean p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Number;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$1:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    iget-boolean v2, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda8;->f$2:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lio/dcloud/uts/UTSArray;

    invoke-static {v0, v1, v2, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$vVOETR0OWsKEB2B3Aa3fknLO7Nc(Ljava/lang/Number;Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda9 (uts.sdk.modules.DCloudUniChooseMedia.IndexKt$$ExternalSyntheticLambda9)
.class public final synthetic Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda9;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt$$ExternalSyntheticLambda9;->f$0:Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lio/dcloud/uts/UTSArray;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->$r8$lambda$1lZRHRIXp5afVgU81BPPTklHDCY(Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;ZLio/dcloud/uts/UTSArray;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
