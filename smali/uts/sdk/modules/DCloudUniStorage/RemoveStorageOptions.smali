###### Class uts.sdk.modules.DCloudUniStorage.RemoveStorageOptions (uts.sdk.modules.DCloudUniStorage.RemoveStorageOptions)
.class public Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0016\u0018\u00002\u00020\u0001B\u0096\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012+\u0008\u0002\u0010\u0004\u001a%\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u000b\u0012+\u0008\u0002\u0010\u000c\u001a%\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u000e\u0012+\u0008\u0002\u0010\u000f\u001a%\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R=\u0010\u0004\u001a%\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR=\u0010\u000c\u001a%\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u000eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR=\u0010\u000f\u001a%\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "key",
        "",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccessCallback;",
        "fail",
        "Lio/dcloud/uniapp/UniError;",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "getSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFail",
        "setFail",
        "getComplete",
        "setComplete",
        "uni-storage_release"
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

.field private fail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/dcloud/uniapp/UniError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/dcloud/uniapp/UniError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 71
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->key:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 74
    iput-object p3, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 75
    iput-object p4, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 70
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
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

    .line 75
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uniapp/UniError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
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

    .line 75
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/dcloud/uniapp/UniError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->key:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method
