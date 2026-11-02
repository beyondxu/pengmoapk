###### Class uts.sdk.modules.DCloudUniStorage.RemoveStorageOptionsJSONObject (uts.sdk.modules.DCloudUniStorage.RemoveStorageOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "key",
        "",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
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
.field private complete:Lio/dcloud/uts/UTSCallback;

.field private fail:Lio/dcloud/uts/UTSCallback;

.field public key:Ljava/lang/String;

.field private success:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 476
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 480
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 479
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 477
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->key:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "key"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 478
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 480
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 479
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->key:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 478
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method
