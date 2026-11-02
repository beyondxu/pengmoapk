###### Class uts.sdk.modules.DCloudUniNetwork.OKDns (uts.sdk.modules.DCloudUniNetwork.OKDns)
.class public Luts/sdk/modules/DCloudUniNetwork/OKDns;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/OKDns\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,2842:1\n33#2:2843\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/OKDns\n*L\n435#1:2843\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/OKDns;",
        "Lokhttp3/Dns;",
        "<init>",
        "()V",
        "lookup",
        "",
        "Ljava/net/InetAddress;",
        "hostName",
        "",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "hostName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2843
    :try_start_5
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 436
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 437
    invoke-static {p1}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 438
    instance-of v2, v1, Ljava/net/Inet4Address;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_32

    .line 439
    new-array v2, v4, [Ljava/net/InetAddress;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSArray;->unshift([Ljava/lang/Object;)I

    goto :goto_18

    .line 441
    :cond_32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/net/InetAddress;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_18

    .line 444
    :cond_3d
    check-cast v0, Ljava/util/List;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    return-object v0

    :catch_40
    move-exception p1

    .line 447
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 448
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 449
    throw v0
.end method
