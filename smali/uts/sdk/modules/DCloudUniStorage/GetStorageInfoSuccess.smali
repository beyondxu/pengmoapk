###### Class uts.sdk.modules.DCloudUniStorage.GetStorageInfoSuccess (uts.sdk.modules.DCloudUniStorage.GetStorageInfoSuccess)
.class public Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR$\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
        "Lio/dcloud/uts/UTSObject;",
        "keys",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "currentSize",
        "",
        "limitSize",
        "<init>",
        "(Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/Number;)V",
        "getKeys",
        "()Lio/dcloud/uts/UTSArray;",
        "setKeys",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getCurrentSize",
        "()Ljava/lang/Number;",
        "setCurrentSize",
        "(Ljava/lang/Number;)V",
        "getLimitSize",
        "setLimitSize",
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
.field private currentSize:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private keys:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private limitSize:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 48
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->keys:Lio/dcloud/uts/UTSArray;

    .line 50
    iput-object p2, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->currentSize:Ljava/lang/Number;

    .line 52
    iput-object p3, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->limitSize:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getCurrentSize()Ljava/lang/Number;
    .registers 2

    .line 50
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->currentSize:Ljava/lang/Number;

    return-object v0
.end method

.method public getKeys()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->keys:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getLimitSize()Ljava/lang/Number;
    .registers 2

    .line 52
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->limitSize:Ljava/lang/Number;

    return-object v0
.end method

.method public setCurrentSize(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->currentSize:Ljava/lang/Number;

    return-void
.end method

.method public setKeys(Lio/dcloud/uts/UTSArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->keys:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setLimitSize(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->limitSize:Ljava/lang/Number;

    return-void
.end method
