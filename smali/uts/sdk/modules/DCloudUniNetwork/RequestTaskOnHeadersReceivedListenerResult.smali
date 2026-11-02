###### Class uts.sdk.modules.DCloudUniNetwork.RequestTaskOnHeadersReceivedListenerResult (uts.sdk.modules.DCloudUniNetwork.RequestTaskOnHeadersReceivedListenerResult)
.class public Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u000f\u0008\u0016\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0007\u001a\u00020\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
        "Lio/dcloud/uts/UTSObject;",
        "cookies",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "header",
        "Lio/dcloud/uts/UTSJSONObject;",
        "statusCode",
        "",
        "<init>",
        "(Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;)V",
        "getCookies",
        "()Lio/dcloud/uts/UTSArray;",
        "setCookies",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getHeader",
        "()Lio/dcloud/uts/UTSJSONObject;",
        "setHeader",
        "(Lio/dcloud/uts/UTSJSONObject;)V",
        "getStatusCode",
        "()Ljava/lang/Number;",
        "setStatusCode",
        "(Ljava/lang/Number;)V",
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

.field private header:Lio/dcloud/uts/UTSJSONObject;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 120
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->cookies:Lio/dcloud/uts/UTSArray;

    .line 122
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->header:Lio/dcloud/uts/UTSJSONObject;

    .line 124
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->statusCode:Ljava/lang/Number;

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

    .line 120
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->cookies:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getHeader()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 122
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->header:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Number;
    .registers 2

    .line 124
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->statusCode:Ljava/lang/Number;

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

    .line 120
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->cookies:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setHeader(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->header:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setStatusCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;->statusCode:Ljava/lang/Number;

    return-void
.end method
