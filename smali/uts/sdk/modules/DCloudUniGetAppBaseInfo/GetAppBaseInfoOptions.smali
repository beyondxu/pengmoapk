###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoOptions (uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoOptions)
.class public Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "filter",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "<init>",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getFilter",
        "()Lio/dcloud/uts/UTSArray;",
        "setFilter",
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
.field private filter:Lio/dcloud/uts/UTSArray;
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


# direct methods
.method public constructor <init>(Lio/dcloud/uts/UTSArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 126
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;->filter:Lio/dcloud/uts/UTSArray;

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

    .line 126
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;->filter:Lio/dcloud/uts/UTSArray;

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

    .line 126
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;->filter:Lio/dcloud/uts/UTSArray;

    return-void
.end method
