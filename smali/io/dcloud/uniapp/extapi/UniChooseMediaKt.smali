###### Class io.dcloud.uniapp.extapi.UniChooseMediaKt (io.dcloud.uniapp.extapi.UniChooseMediaKt)
.class public final Lio/dcloud/uniapp/extapi/UniChooseMediaKt;
.super Ljava/lang/Object;
.source "uniChooseMedia.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"0\u0010\u0012\u001a!\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00170\u0013j\u0002`\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*\n\u0010\u0006\"\u00020\u00072\u00020\u0007*\u000e\u0010\u0008\"\u0002`\t2\u00060\nj\u0002`\t*\u000e\u0010\u000b\"\u0002`\u000c2\u00060\rj\u0002`\u000c*\u000e\u0010\u000e\"\u0002`\u000f2\u00060\u0007j\u0002`\u000f*\u000e\u0010\u0010\"\u0002`\u00112\u00060\rj\u0002`\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "ChooseMediaTempFile",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;",
        "ChooseMediaSuccess",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
        "ChooseMediaOptions",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
        "IChooseMediaError",
        "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
        "ChooseMediaErrorCode",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorCode;",
        "",
        "ChooseMediaFileType",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFileType;",
        "",
        "ChooseMediaFail",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFail;",
        "ChooseMediaPageOrientation",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;",
        "chooseMedia",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMedia;",
        "getChooseMedia",
        "()Lkotlin/jvm/functions/Function1;",
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    invoke-static {}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getChooseMedia()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniChooseMediaKt;->chooseMedia:Lkotlin/jvm/functions/Function1;

    return-void
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

    .line 21
    sget-object v0, Lio/dcloud/uniapp/extapi/UniChooseMediaKt;->chooseMedia:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
