###### Class uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptionsJSONObject (uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010!X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010#\"\u0004\u0008(\u0010%R\u001c\u0010)\u001a\u0004\u0018\u00010!X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010#\"\u0004\u0008+\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "pageOrientation",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;",
        "getPageOrientation",
        "()Ljava/lang/String;",
        "setPageOrientation",
        "(Ljava/lang/String;)V",
        "count",
        "",
        "getCount",
        "()Ljava/lang/Number;",
        "setCount",
        "(Ljava/lang/Number;)V",
        "mediaType",
        "Lio/dcloud/uts/UTSArray;",
        "getMediaType",
        "()Lio/dcloud/uts/UTSArray;",
        "setMediaType",
        "(Lio/dcloud/uts/UTSArray;)V",
        "sourceType",
        "getSourceType",
        "setSourceType",
        "maxDuration",
        "getMaxDuration",
        "setMaxDuration",
        "camera",
        "getCamera",
        "setCamera",
        "success",
        "Lio/dcloud/uts/UTSCallback;",
        "getSuccess",
        "()Lio/dcloud/uts/UTSCallback;",
        "setSuccess",
        "(Lio/dcloud/uts/UTSCallback;)V",
        "fail",
        "getFail",
        "setFail",
        "complete",
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

.field private complete:Lio/dcloud/uts/UTSCallback;

.field private count:Ljava/lang/Number;

.field private fail:Lio/dcloud/uts/UTSCallback;

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

.field private success:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 814
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCamera()Ljava/lang/String;
    .registers 2

    .line 820
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 823
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getCount()Ljava/lang/Number;
    .registers 2

    .line 816
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->count:Ljava/lang/Number;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 822
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getMaxDuration()Ljava/lang/Number;
    .registers 2

    .line 819
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->maxDuration:Ljava/lang/Number;

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

    .line 817
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->mediaType:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getPageOrientation()Ljava/lang/String;
    .registers 2

    .line 815
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->pageOrientation:Ljava/lang/String;

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

    .line 818
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->sourceType:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 821
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 2

    .line 820
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->camera:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 823
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setCount(Ljava/lang/Number;)V
    .registers 2

    .line 816
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->count:Ljava/lang/Number;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 822
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setMaxDuration(Ljava/lang/Number;)V
    .registers 2

    .line 819
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->maxDuration:Ljava/lang/Number;

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

    .line 817
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->mediaType:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setPageOrientation(Ljava/lang/String;)V
    .registers 2

    .line 815
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->pageOrientation:Ljava/lang/String;

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

    .line 818
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->sourceType:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 821
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method
