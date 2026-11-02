###### Class uts.sdk.modules.DCloudUniStorage.SetStorageOptions (uts.sdk.modules.DCloudUniStorage.SetStorageOptions)
.class public Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0016\u0018\u00002\u00020\u0001B\u009e\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012+\u0008\u0002\u0010\u0006\u001a%\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\r\u0012+\u0008\u0002\u0010\u000e\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0010\u0012+\u0008\u0002\u0010\u0011\u001a%\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR=\u0010\u0006\u001a%\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R=\u0010\u000e\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001e\"\u0004\u0008\"\u0010 R=\u0010\u0011\u001a%\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "key",
        "",
        "data",
        "",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccessCallback;",
        "fail",
        "Lio/dcloud/uniapp/UniError;",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageFailCallback;",
        "complete",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
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

.field private data:Ljava/lang/Object;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
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
            "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
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

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 22
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->key:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->data:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 27
    iput-object p4, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 28
    iput-object p5, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_11

    move-object p6, v0

    goto :goto_12

    :cond_11
    move-object p6, p5

    :goto_12
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 21
    invoke-direct/range {p1 .. p6}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

    .line 28
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .line 24
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->data:Ljava/lang/Object;

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

    .line 27
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->success:Lkotlin/jvm/functions/Function1;

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

    .line 28
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->data:Ljava/lang/Object;

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

    .line 27
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->key:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method
