###### Class uts.sdk.modules.DCloudUniNetwork.RequestTask (uts.sdk.modules.DCloudUniNetwork.RequestTask)
.class public interface abstract Luts/sdk/modules/DCloudUniNetwork/RequestTask;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J/\u0010\u0004\u001a\u00020\u00052%\u0010\u0006\u001a!\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00030\u0007j\u0002`\u000cH&J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H&J/\u0010\u000e\u001a\u00020\u00052%\u0010\u0006\u001a!\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00030\u0007j\u0002`\u0010H&J\u0012\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H&\u00a8\u0006\u0012\u00c0\u0006\u0003"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "",
        "abort",
        "",
        "onChunkReceived",
        "",
        "listener",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedCallback;",
        "offChunkReceived",
        "onHeadersReceived",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedCallback;",
        "offHeadersReceived",
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


# virtual methods
.method public abstract abort()V
.end method

.method public abstract offChunkReceived(Ljava/lang/Object;)V
.end method

.method public abstract offHeadersReceived(Ljava/lang/Object;)V
.end method

.method public abstract onChunkReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
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
.end method

.method public abstract onHeadersReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
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
.end method
