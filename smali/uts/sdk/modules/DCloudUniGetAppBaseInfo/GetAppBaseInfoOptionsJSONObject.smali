###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoOptionsJSONObject (uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "filter",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "getFilter",
        "()Lio/dcloud/uts/UTSArray;",
        "setFilter",
        "(Lio/dcloud/uts/UTSArray;)V",
        "uni-getAppBaseInfo_release"
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
.field public filter:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;->filter:Lio/dcloud/uts/UTSArray;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "filter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setFilter(Lio/dcloud/uts/UTSArray;)V
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

    .line 324
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;->filter:Lio/dcloud/uts/UTSArray;

    return-void
.end method
