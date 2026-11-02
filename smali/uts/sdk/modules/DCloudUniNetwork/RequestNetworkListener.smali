###### Class uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener (uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener)
.class public Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;
.super Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/RequestNetworkListener\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,2842:1\n33#2:2843\n33#2:2844\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/RequestNetworkListener\n*L\n2505#1:2843\n2512#1:2844\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\'\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J*\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00150\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u0008H\u0002J\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0008H\u0002J\u0018\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u000cH\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;",
        "T",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "param",
        "Luts/sdk/modules/DCloudUniNetwork/RequestOptions;",
        "type",
        "Ljava/lang/reflect/Type;",
        "clzName",
        "",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Ljava/lang/reflect/Type;Ljava/lang/String;)V",
        "headers",
        "Lio/dcloud/uts/UTSJSONObject;",
        "looper",
        "Landroid/os/Looper;",
        "onStart",
        "",
        "onHeadersReceived",
        "statusCode",
        "",
        "",
        "",
        "onProgress",
        "progress",
        "onComplete",
        "option",
        "readAsString",
        "byteArray",
        "",
        "parseData",
        "",
        "data",
        "parseCookie",
        "Lio/dcloud/uts/UTSArray;",
        "header",
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
.field private clzName:Ljava/lang/String;

.field private headers:Lio/dcloud/uts/UTSJSONObject;

.field private looper:Landroid/os/Looper;

.field private param:Luts/sdk/modules/DCloudUniNetwork/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method public static synthetic $r8$lambda$5qGVkUJRyDo1w058S_BoeFGfUis(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->onComplete$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NMyYFXkB6vbxzq1dxrVgO-Yp_Os(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->onComplete$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_xhU84mqG-WB9LcU1JRp978SSvE(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->onComplete$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q20gys-gQmKWBKzIA1g5TreWjQQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->onComplete$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2262
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;-><init>()V

    const/4 v0, 0x0

    .line 2258
    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    .line 2263
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->param:Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    .line 2264
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->type:Ljava/lang/reflect/Type;

    .line 2265
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    .line 2266
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->looper:Landroid/os/Looper;

    return-void
.end method

.method private static final onComplete$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2322
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2323
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2325
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2329
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onComplete$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2371
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2372
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2374
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2378
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onComplete$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2422
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2424
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2428
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onComplete$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/RequestSuccess<",
            "TT;>;>;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2445
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2447
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2451
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final parseCookie(Lio/dcloud/uts/UTSJSONObject;)Lio/dcloud/uts/UTSArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSJSONObject;",
            ")",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 2843
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    return-object p1

    .line 2507
    :cond_8
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2509
    const-string v0, "set-cookie"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    if-nez v0, :cond_1e

    .line 2844
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    return-object p1

    .line 2514
    :cond_1e
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v1, 0x0

    .line 2515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->charAt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->charAt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2516
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v2, v5}, Lio/dcloud/uts/StringKt;->slice(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    :cond_5f
    const-string v2, ";"

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 2519
    move-object v5, p0

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;

    .line 2520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 2521
    :goto_6e
    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v6

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v6

    const-string v7, ","

    if-gez v6, :cond_cd

    .line 2522
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "Expires="

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v6, v8, v9, v10, v9}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "expires="

    invoke-static {v6, v8, v9, v10, v9}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a9

    goto :goto_b5

    .line 2525
    :cond_a9
    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p1, v6}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_c8

    .line 2523
    :cond_b5
    :goto_b5
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 2527
    :goto_c8
    invoke-static {v5}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    goto :goto_6e

    .line 2530
    :cond_cd
    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    return-object p1
.end method

.method private final parseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 2475
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    const-string v1, "java.lang.Object"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2476
    const-string v0, "json"

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p2, v0, v1, v3, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2477
    invoke-static {p1}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2478
    :cond_23
    const-string v0, "jsonp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 2479
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    new-array p1, v0, [Lkotlin/Pair;

    .line 2480
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    return-object p1

    .line 2482
    :cond_3c
    const-string p2, "("

    invoke-static {p1, p2, v1, v3, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {p2, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    .line 2483
    const-string v2, ")"

    invoke-static {p1, v2, v1, v3, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    .line 2484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-ltz v2, :cond_63

    goto :goto_6c

    .line 2487
    :cond_63
    invoke-static {p1, p2, v1}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 2488
    invoke-static {p1}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2484
    :cond_6c
    :goto_6c
    new-array p1, v0, [Lkotlin/Pair;

    .line 2485
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    return-object p1

    .line 2492
    :cond_73
    :try_start_73
    new-instance p2, Lio/dcloud/uts/gson/Gson;

    invoke-direct {p2}, Lio/dcloud/uts/gson/Gson;-><init>()V

    .line 2493
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p1, v0}, Lio/dcloud/uts/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_7f

    goto :goto_80

    :catchall_7f
    nop

    :goto_80
    if-nez v1, :cond_83

    goto :goto_84

    :cond_83
    move-object p1, v1

    :goto_84
    return-object p1

    .line 2497
    :cond_85
    const-string p2, "java.lang.String"

    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_90

    return-object p1

    .line 2500
    :cond_90
    iget-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, p2}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final readAsString([BLjava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_2d

    .line 2462
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getCharsetPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2463
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 2464
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "group(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    .line 2468
    :cond_2d
    const-string p2, "utf-8"

    :goto_2f
    :try_start_2f
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    const-string v1, "forName(charsetName)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3d} :catch_3e

    return-object v0

    .line 2471
    :catch_3e
    new-instance p2, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method


# virtual methods
.method public onComplete(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "option"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->param:Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Lkotlin/Pair;

    .line 2295
    invoke-static {v4}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v4

    .line 2296
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v5, :cond_34a

    .line 2297
    const-string v5, "-1"

    const-string v6, "statusCode"

    invoke-virtual {v1, v6}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "header"

    const-string v8, "errorMsg"

    const/4 v9, 0x1

    if-eqz v5, :cond_dd

    .line 2298
    iget-object v5, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    if-eqz v5, :cond_37

    .line 2299
    invoke-virtual {v4, v7, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2301
    :cond_37
    const-string v4, "cause"

    invoke-virtual {v1, v4}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Exception;

    .line 2302
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/String;

    .line 2303
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v9, v7}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2304
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_5b

    move-object v6, v5

    .line 2308
    :cond_5b
    const-string v4, "errorCode"

    invoke-virtual {v1, v4}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2309
    const-string v4, "timeout"

    const/4 v8, 0x2

    invoke-static {v5, v4, v7, v8, v7}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const/4 v1, 0x5

    goto :goto_a9

    .line 2312
    :cond_7e
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "Connection refused"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    const/16 v1, 0x3e8

    goto :goto_a9

    .line 2314
    :cond_8e
    const-string v5, "Network is unreachable"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    const v1, 0x927c3

    goto :goto_a9

    .line 2316
    :cond_9c
    const-string v5, "invalid URL"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    const v1, 0x927c9

    .line 2319
    :cond_a9
    :goto_a9
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getErrcode(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v4, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;-><init>(Ljava/lang/Number;)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2320
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    new-instance v4, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v4, v6}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    check-cast v4, Lio/dcloud/uts/UTSError;

    invoke-virtual {v1, v4}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;->setCause(Lio/dcloud/uts/UTSError;)V

    .line 2321
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v4, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->looper:Landroid/os/Looper;

    .line 2332
    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2321
    invoke-direct {v1, v4, v5}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2332
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    return-void

    .line 2334
    :cond_dd
    invoke-virtual {v1, v6}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2335
    const-string v3, "originalData"

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v10, "ArrayBuffer"

    const-string v11, "io.dcloud.uts.ArrayBuffer"

    const-string v12, "java.lang.String"

    const-string v13, "java.lang.Object"

    const-string v14, "null cannot be cast to non-null type kotlin.String"

    const-string v15, "data"

    if-nez v5, :cond_1d8

    .line 2336
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getResponseType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10e

    .line 2337
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getResponseType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_116

    .line 2339
    :cond_10e
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getDataType()Ljava/lang/String;

    move-result-object v3

    .line 2341
    :goto_116
    iget-object v5, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v13, v5, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const-string v13, "error"

    if-eqz v5, :cond_144

    .line 2342
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13d

    .line 2344
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_139

    .line 2346
    invoke-virtual {v4, v15, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_140

    .line 2348
    :cond_139
    invoke-virtual {v4, v15, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_140

    .line 2351
    :cond_13d
    invoke-virtual {v4, v15, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_140
    :goto_140
    move-object/from16 v18, v7

    goto/16 :goto_2ec

    .line 2353
    :cond_144
    iget-object v5, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v12, v5, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 2354
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_153

    goto :goto_154

    :cond_153
    move-object v13, v3

    :goto_154
    invoke-virtual {v4, v15, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_140

    .line 2355
    :cond_158
    iget-object v5, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v11, v5, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1bc

    invoke-static {v10, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_167

    goto :goto_1bc

    .line 2361
    :cond_167
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_140

    .line 2363
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iget-object v8, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->type:Ljava/lang/reflect/Type;

    invoke-static {v5, v8}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_17c

    .line 2365
    invoke-virtual {v4, v15, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_140

    .line 2367
    :cond_17c
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    const v5, 0x186a2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getErrcode(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-direct {v4, v5}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;-><init>(Ljava/lang/Number;)V

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2368
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    invoke-virtual {v4, v3}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;->setData(Ljava/lang/Object;)V

    .line 2369
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    new-instance v4, Lio/dcloud/uniapp/SourceError;

    const-string v5, "Error message parsing failed"

    invoke-direct {v4, v5}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    check-cast v4, Lio/dcloud/uts/UTSError;

    invoke-virtual {v3, v4}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;->setCause(Lio/dcloud/uts/UTSError;)V

    .line 2370
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v4, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->looper:Landroid/os/Looper;

    .line 2382
    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2370
    invoke-direct {v3, v4, v5}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2382
    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    return-void

    .line 2356
    :cond_1bc
    :goto_1bc
    new-instance v3, Lio/dcloud/uts/TextEncoder;

    invoke-direct {v3}, Lio/dcloud/uts/TextEncoder;-><init>()V

    .line 2357
    invoke-virtual {v1, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1c8

    goto :goto_1c9

    :cond_1c8
    move-object v13, v5

    :goto_1c9
    check-cast v13, Ljava/lang/String;

    .line 2358
    invoke-virtual {v3, v13}, Lio/dcloud/uts/TextEncoder;->encode(Ljava/lang/String;)Lio/dcloud/uts/Uint8Array;

    move-result-object v3

    .line 2359
    invoke-virtual {v3}, Lio/dcloud/uts/Uint8Array;->getBuffer()Lio/dcloud/uts/ArrayBuffer;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_140

    .line 2389
    :cond_1d8
    iget-object v5, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {v5}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 2391
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-string v16, ""

    move-object/from16 v17, v16

    :goto_1f7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_221

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/String;

    move-object/from16 v18, v7

    .line 2392
    const-string v7, "Content-Type"

    invoke-static {v8, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_21c

    .line 2393
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    :cond_21c
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_1f7

    :cond_221
    move-object/from16 v18, v7

    .line 2398
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v5}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getResponseType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_239

    .line 2399
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v5}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getResponseType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_241

    .line 2401
    :cond_239
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v5}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getDataType()Ljava/lang/String;

    move-result-object v5

    .line 2403
    :goto_241
    iget-object v7, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v11, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "null cannot be cast to non-null type kotlin.ByteArray"

    if-nez v7, :cond_2d1

    invoke-static {v10, v5, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_253

    goto/16 :goto_2d1

    .line 2407
    :cond_253
    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [B

    move-object/from16 v7, v17

    invoke-direct {v0, v3, v7}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->readAsString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v5, :cond_267

    move-object/from16 v17, v7

    goto :goto_269

    :cond_267
    move-object/from16 v17, v5

    .line 2411
    :goto_269
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;

    invoke-virtual {v5}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v7, "HEAD"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27c

    move-object/from16 v5, v16

    goto :goto_27e

    :cond_27c
    move-object/from16 v5, v17

    .line 2414
    :goto_27e
    invoke-direct {v0, v3, v5}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->parseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2e9

    .line 2416
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    const v4, 0x186a1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getErrcode(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-direct {v3, v4}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;-><init>(Ljava/lang/Number;)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2417
    iget-object v3, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v13, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2c1

    iget-object v3, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->clzName:Ljava/lang/String;

    invoke-static {v12, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2c1

    .line 2418
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;

    const v4, 0x186a3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getErrcode(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-direct {v3, v4}, Luts/sdk/modules/DCloudUniNetwork/RequestFailImpl;-><init>(Ljava/lang/Number;)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2420
    :cond_2c1
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v4, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->looper:Landroid/os/Looper;

    .line 2432
    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2420
    invoke-direct {v3, v4, v5}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2432
    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    return-void

    .line 2404
    :cond_2d1
    :goto_2d1
    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [B

    .line 2405
    sget-object v5, Lio/dcloud/uts/ArrayBuffer;->Companion:Lio/dcloud/uts/ArrayBuffer$Companion;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v7, "wrap(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lio/dcloud/uts/ArrayBuffer$Companion;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lio/dcloud/uts/ArrayBuffer;

    move-result-object v3

    .line 2436
    :cond_2e9
    invoke-virtual {v4, v15, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2438
    :goto_2ec
    sget-object v3, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->Companion:Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;

    invoke-virtual {v1, v6}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "statusText"

    invoke-virtual {v4, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2439
    iget-object v1, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    move-object/from16 v3, v18

    if-eqz v1, :cond_309

    .line 2440
    invoke-virtual {v4, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2442
    :cond_309
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;

    invoke-virtual {v4, v15}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v4, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    iget-object v8, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {v4, v8}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;->parseCookie(Lio/dcloud/uts/UTSJSONObject;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-direct {v5, v7, v6, v3, v4}, Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;-><init>(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Object;Lio/dcloud/uts/UTSArray;)V

    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2443
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v4, v0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->looper:Landroid/os/Looper;

    .line 2455
    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2443
    invoke-direct {v3, v4, v5}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2455
    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    :cond_34a
    return-void
.end method

.method public onHeadersReceived(Ljava/lang/Number;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "headers"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array v0, p1, [Lkotlin/Pair;

    .line 2270
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 2272
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2273
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2274
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2275
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v2, :cond_35

    .line 2279
    const-string v2, "_"

    .line 2281
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_19

    .line 2283
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    .line 2284
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :cond_4b
    const/16 v3, 0xa

    .line 2286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v1, v3}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    .line 2290
    :cond_5b
    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->headers:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public onProgress(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->$r8$lambda$q20gys-gQmKWBKzIA1g5TreWjQQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->$r8$lambda$5qGVkUJRyDo1w058S_BoeFGfUis(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->$r8$lambda$_xhU84mqG-WB9LcU1JRp978SSvE(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniNetwork.RequestNetworkListener$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;->$r8$lambda$NMyYFXkB6vbxzq1dxrVgO-Yp_Os(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
