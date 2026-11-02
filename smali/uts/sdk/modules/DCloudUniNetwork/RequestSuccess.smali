###### Class uts.sdk.modules.DCloudUniNetwork.RequestSuccess (uts.sdk.modules.DCloudUniNetwork.RequestSuccess)
.class public Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/dcloud/uts/UTSObject;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0006\u001a\u00020\u00078\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000e\"\u0004\u0008\u0017\u0010\u0010R$\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;",
        "T",
        "Lio/dcloud/uts/UTSObject;",
        "data",
        "statusCode",
        "",
        "header",
        "",
        "cookies",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "<init>",
        "(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Object;Lio/dcloud/uts/UTSArray;)V",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "getStatusCode",
        "()Ljava/lang/Number;",
        "setStatusCode",
        "(Ljava/lang/Number;)V",
        "getHeader",
        "setHeader",
        "getCookies",
        "()Lio/dcloud/uts/UTSArray;",
        "setCookies",
        "(Lio/dcloud/uts/UTSArray;)V",
        "uni-network_release"
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
.field private cookies:Lio/dcloud/uts/UTSArray;
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

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private header:Ljava/lang/Object;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Object;Lio/dcloud/uts/UTSArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 98
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->data:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->statusCode:Ljava/lang/Number;

    .line 101
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->header:Ljava/lang/Object;

    .line 103
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->cookies:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Object;Lio/dcloud/uts/UTSArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    .line 97
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;-><init>(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Object;Lio/dcloud/uts/UTSArray;)V

    return-void
.end method


# virtual methods
.method public getCookies()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->cookies:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeader()Ljava/lang/Object;
    .registers 2

    .line 101
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->header:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Number;
    .registers 2

    .line 99
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->statusCode:Ljava/lang/Number;

    return-object v0
.end method

.method public setCookies(Lio/dcloud/uts/UTSArray;)V
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

    .line 103
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->cookies:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->data:Ljava/lang/Object;

    return-void
.end method

.method public setHeader(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->header:Ljava/lang/Object;

    return-void
.end method

.method public setStatusCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;->statusCode:Ljava/lang/Number;

    return-void
.end method
