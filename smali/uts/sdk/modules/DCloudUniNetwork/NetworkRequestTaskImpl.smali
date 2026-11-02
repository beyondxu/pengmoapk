###### Class uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl (uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl)
.class public Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniNetwork/RequestTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u001b\u001a\u00020\u0010H\u0016J/\u0010\u001c\u001a\u00020\u00072%\u0010\u001d\u001a!\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0016J\u0012\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J/\u0010!\u001a\u00020\u00072%\u0010\u001d\u001a!\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0018H\u0016J\u0012\u0010\"\u001a\u00020\u00102\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000RE\u0010\t\u001a-\u0012\u0004\u0012\u00020\u0007\u0012#\u0012!\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u00110\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015RE\u0010\u0016\u001a-\u0012\u0004\u0012\u00020\u0007\u0012#\u0012!\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u00180\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "call",
        "Lokhttp3/Call;",
        "<init>",
        "(Lokhttp3/Call;)V",
        "headersReceivedListenerId",
        "",
        "chunkReceivedListenerId",
        "headersReceivedListeners",
        "Lio/dcloud/uts/Map;",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedCallback;",
        "getHeadersReceivedListeners",
        "()Lio/dcloud/uts/Map;",
        "setHeadersReceivedListeners",
        "(Lio/dcloud/uts/Map;)V",
        "chunkReceivedListeners",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedCallback;",
        "getChunkReceivedListeners",
        "setChunkReceivedListeners",
        "abort",
        "onHeadersReceived",
        "listener",
        "offHeadersReceived",
        "id",
        "",
        "onChunkReceived",
        "offChunkReceived",
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
.field private call:Lokhttp3/Call;

.field private chunkReceivedListenerId:Ljava/lang/Number;

.field private chunkReceivedListeners:Lio/dcloud/uts/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private headersReceivedListenerId:Ljava/lang/Number;

.field private headersReceivedListeners:Lio/dcloud/uts/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2xCut0Aju1y7-1PSBAlzlrH0iQc(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->offHeadersReceived$lambda$0(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PMP4F_mDl3W4utKj9ngyVEr7zF8(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->offChunkReceived$lambda$1(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lokhttp3/Call;)V
    .registers 4

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    iput-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListenerId:Ljava/lang/Number;

    .line 600
    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListenerId:Ljava/lang/Number;

    .line 601
    new-instance v0, Lio/dcloud/uts/Map;

    invoke-direct {v0}, Lio/dcloud/uts/Map;-><init>()V

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListeners:Lio/dcloud/uts/Map;

    .line 602
    new-instance v0, Lio/dcloud/uts/Map;

    invoke-direct {v0}, Lio/dcloud/uts/Map;-><init>()V

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListeners:Lio/dcloud/uts/Map;

    .line 604
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->call:Lokhttp3/Call;

    return-void
.end method

.method private static final offChunkReceived$lambda$1(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 645
    const-string v0, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"result\")] uts.sdk.modules.DCloudUniNetwork.RequestTaskOnChunkReceivedListenerResult, kotlin.Unit>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 646
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 648
    :cond_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final offHeadersReceived$lambda$0(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 621
    const-string v0, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"result\")] uts.sdk.modules.DCloudUniNetwork.RequestTaskOnHeadersReceivedListenerResult, kotlin.Unit>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 622
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 624
    :cond_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 607
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->call:Lokhttp3/Call;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_9

    .line 608
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_9
    return-void
.end method

.method public getChunkReceivedListeners()Lio/dcloud/uts/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListeners:Lio/dcloud/uts/Map;

    return-object v0
.end method

.method public getHeadersReceivedListeners()Lio/dcloud/uts/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListeners:Lio/dcloud/uts/Map;

    return-object v0
.end method

.method public offChunkReceived(Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_3c

    .line 642
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "function"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 643
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 644
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v1

    new-instance v2, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 649
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/dcloud/uts/Map;->delete(Ljava/lang/Object;)Z

    return-void

    .line 651
    :cond_32
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->delete(Ljava/lang/Object;)Z

    return-void

    .line 654
    :cond_3c
    new-instance p1, Lio/dcloud/uts/Map;

    invoke-direct {p1}, Lio/dcloud/uts/Map;-><init>()V

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->setChunkReceivedListeners(Lio/dcloud/uts/Map;)V

    return-void
.end method

.method public offHeadersReceived(Ljava/lang/Object;)V
    .registers 6

    if-eqz p1, :cond_48

    .line 618
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "function"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 619
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 620
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v2

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 625
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 626
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/dcloud/uts/Map;->delete(Ljava/lang/Object;)Z

    :cond_3d
    return-void

    .line 629
    :cond_3e
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->delete(Ljava/lang/Object;)Z

    return-void

    .line 632
    :cond_48
    new-instance p1, Lio/dcloud/uts/Map;

    invoke-direct {p1}, Lio/dcloud/uts/Map;-><init>()V

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->setHeadersReceivedListeners(Lio/dcloud/uts/Map;)V

    return-void
.end method

.method public onChunkReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListenerId:Ljava/lang/Number;

    invoke-static {v0}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListenerId:Ljava/lang/Number;

    .line 637
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListenerId:Ljava/lang/Number;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListenerId:Ljava/lang/Number;

    return-object p1
.end method

.method public onHeadersReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListenerId:Ljava/lang/Number;

    invoke-static {v0}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListenerId:Ljava/lang/Number;

    .line 613
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListenerId:Ljava/lang/Number;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListenerId:Ljava/lang/Number;

    return-object p1
.end method

.method public setChunkReceivedListeners(Lio/dcloud/uts/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->chunkReceivedListeners:Lio/dcloud/uts/Map;

    return-void
.end method

.method public setHeadersReceivedListeners(Lio/dcloud/uts/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->headersReceivedListeners:Lio/dcloud/uts/Map;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, v1, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->$r8$lambda$PMP4F_mDl3W4utKj9ngyVEr7zF8(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniNetwork.NetworkRequestTaskImpl$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, v1, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->$r8$lambda$2xCut0Aju1y7-1PSBAlzlrH0iQc(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
