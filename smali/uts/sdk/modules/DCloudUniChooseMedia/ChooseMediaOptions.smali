###### Class uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions (uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions)
.class public Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u0016\u0018\u00002\u00020\u0001B\u00fb\u0001\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012+\u0008\u0002\u0010\u000c\u001a%\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u0013\u0012>\u0008\u0002\u0010\u0014\u001a8\u0012&\u0012$0\u0015j\u0011`\u0016\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u0017\u0012+\u0008\u0002\u0010\u0018\u001a%\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\"\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010&\"\u0004\u0008*\u0010(R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\"\"\u0004\u0008,\u0010$R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001e\"\u0004\u0008.\u0010 R=\u0010\u000c\u001a%\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102RP\u0010\u0014\u001a8\u0012&\u0012$0\u0015j\u0011`\u0016\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00100\"\u0004\u00084\u00102R=\u0010\u0018\u001a%\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102\u00a8\u00067"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "pageOrientation",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;",
        "count",
        "",
        "mediaType",
        "Lio/dcloud/uts/UTSArray;",
        "sourceType",
        "maxDuration",
        "camera",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFail;",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getPageOrientation",
        "()Ljava/lang/String;",
        "setPageOrientation",
        "(Ljava/lang/String;)V",
        "getCount",
        "()Ljava/lang/Number;",
        "setCount",
        "(Ljava/lang/Number;)V",
        "getMediaType",
        "()Lio/dcloud/uts/UTSArray;",
        "setMediaType",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getSourceType",
        "setSourceType",
        "getMaxDuration",
        "setMaxDuration",
        "getCamera",
        "setCamera",
        "getSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFail",
        "setFail",
        "getComplete",
        "setComplete",
        "uni-chooseMedia_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private camera:Ljava/lang/String;

.field private complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/Number;

.field private fail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private maxDuration:Ljava/lang/Number;

.field private mediaType:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageOrientation:Ljava/lang/String;

.field private sourceType:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 13

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 70
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->pageOrientation:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->count:Ljava/lang/Number;

    .line 72
    iput-object p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->mediaType:Lio/dcloud/uts/UTSArray;

    .line 73
    iput-object p4, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->sourceType:Lio/dcloud/uts/UTSArray;

    .line 74
    iput-object p5, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->maxDuration:Ljava/lang/Number;

    .line 75
    iput-object p6, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->camera:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 77
    iput-object p8, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 78
    iput-object p9, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_29

    move-object p8, v0

    :cond_29
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_2f

    move-object p10, v0

    goto :goto_30

    :cond_2f
    move-object p10, p9

    :goto_30
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 69
    invoke-direct/range {p1 .. p10}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/Number;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getCamera()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getCount()Ljava/lang/Number;
    .registers 2

    .line 71
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->count:Ljava/lang/Number;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getMaxDuration()Ljava/lang/Number;
    .registers 2

    .line 74
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->maxDuration:Ljava/lang/Number;

    return-object v0
.end method

.method public getMediaType()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->mediaType:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getPageOrientation()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->pageOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->sourceType:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->camera:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setCount(Ljava/lang/Number;)V
    .registers 2

    .line 71
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->count:Ljava/lang/Number;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setMaxDuration(Ljava/lang/Number;)V
    .registers 2

    .line 74
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->maxDuration:Ljava/lang/Number;

    return-void
.end method

.method public setMediaType(Lio/dcloud/uts/UTSArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->mediaType:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setPageOrientation(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->pageOrientation:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Lio/dcloud/uts/UTSArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->sourceType:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method
