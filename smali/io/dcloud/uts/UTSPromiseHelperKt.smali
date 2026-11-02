###### Class io.dcloud.uts.UTSPromiseHelperKt (io.dcloud.uts.UTSPromiseHelperKt)
.class public final Lio/dcloud/uts/UTSPromiseHelperKt;
.super Ljava/lang/Object;
.source "UTSPromiseHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\u001c\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0007\u001a\"\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008H\u0086@\u00a2\u0006\u0002\u0010\t\u001a\"\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000c\u001a(\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000b\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008H\u0086@\u00a2\u0006\u0002\u0010\t\u001a \u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000b\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000b\u001a7\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008\"\u0004\u0008\u0000\u0010\u00052\u001e\u0010\u000f\u001a\u001a\u0008\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "wrapError",
        "Lio/dcloud/uts/UTSError;",
        "err",
        "",
        "await",
        "T",
        "promise",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/dcloud/uts/UTSPromise;",
        "(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "def",
        "Lkotlinx/coroutines/Deferred;",
        "(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDeferred",
        "wrapUTSPromise",
        "fn",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;)Lio/dcloud/uts/UTSPromise;",
        "utsplugin_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$gQTDAdo6kNmuO3YWRhUu1ug-HBM(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/dcloud/uts/UTSPromiseHelperKt;->wrapUTSPromise$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$wrapError(Ljava/lang/Object;)Lio/dcloud/uts/UTSError;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/uts/UTSPromiseHelperKt;->wrapError(Ljava/lang/Object;)Lio/dcloud/uts/UTSError;

    move-result-object p0

    return-object p0
.end method

.method public static final await(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/UTSPromise<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;

    invoke-direct {v2, v1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lio/dcloud/uts/UTSPromise;->then$default(Lio/dcloud/uts/UTSPromise;Lkotlin/jvm/functions/Function1;Lkotlin/Function;ILjava/lang/Object;)Lio/dcloud/uts/UTSPromise;

    move-result-object p0

    .line 30
    new-instance v2, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;

    invoke-direct {v2, v1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v2}, Lio/dcloud/uts/UTSPromise;->catch(Lkotlin/jvm/functions/Function1;)Lio/dcloud/uts/UTSPromise;

    .line 26
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_33

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_33
    return-object p0
.end method

.method public static final await(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 19
    sget-object v2, Lio/dcloud/uts/UTSPromise;->Companion:Lio/dcloud/uts/UTSPromise$Companion;

    invoke-virtual {v2, p0}, Lio/dcloud/uts/UTSPromise$Companion;->resolve(Ljava/lang/Object;)Lio/dcloud/uts/UTSPromise;

    move-result-object p0

    new-instance v2, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;

    invoke-direct {v2, v1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lio/dcloud/uts/UTSPromise;->then$default(Lio/dcloud/uts/UTSPromise;Lkotlin/jvm/functions/Function1;Lkotlin/Function;ILjava/lang/Object;)Lio/dcloud/uts/UTSPromise;

    move-result-object p0

    .line 21
    new-instance v2, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;

    invoke-direct {v2, v1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v2}, Lio/dcloud/uts/UTSPromise;->catch(Lkotlin/jvm/functions/Function1;)Lio/dcloud/uts/UTSPromise;

    .line 18
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_36

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_36
    return-object p0
.end method

.method public static final await(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    invoke-interface {p0, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toDeferred(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/UTSPromise<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getDomCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;-><init>(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public static final toDeferred(Lkotlinx/coroutines/Deferred;)Lkotlinx/coroutines/Deferred;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "def"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final wrapError(Ljava/lang/Object;)Lio/dcloud/uts/UTSError;
    .registers 2

    .line 12
    instance-of v0, p0, Lio/dcloud/uts/UTSError;

    if-eqz v0, :cond_7

    .line 13
    check-cast p0, Lio/dcloud/uts/UTSError;

    return-object p0

    .line 15
    :cond_7
    new-instance v0, Lio/dcloud/uts/HolderUTSError;

    invoke-direct {v0, p0}, Lio/dcloud/uts/HolderUTSError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lio/dcloud/uts/UTSError;

    return-object v0
.end method

.method public static final wrapUTSPromise(Lkotlin/jvm/functions/Function1;)Lio/dcloud/uts/UTSPromise;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/UTSPromise<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lio/dcloud/uts/UTSPromise;

    new-instance v1, Lio/dcloud/uts/UTSPromiseHelperKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/dcloud/uts/UTSPromiseHelperKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, v1}, Lio/dcloud/uts/UTSPromise;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method private static final wrapUTSPromise$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 10

    const-string v0, "resolve"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getDomCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 51
    new-instance v0, Lio/dcloud/uts/UTSPromiseHelperKt$wrapUTSPromise$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lio/dcloud/uts/UTSPromiseHelperKt$wrapUTSPromise$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt.AnonymousClass2 (io.dcloud.uts.UTSPromiseHelperKt$toDeferred$2)
.class final Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSPromiseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSPromiseHelperKt;->toDeferred(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.uts.UTSPromiseHelperKt$toDeferred$2"
    f = "UTSPromiseHelper.kt"
    i = {}
    l = {
        0x29
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $promise:Lio/dcloud/uts/UTSPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSPromise<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSPromise<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->$promise:Lio/dcloud/uts/UTSPromise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;

    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->$promise:Lio/dcloud/uts/UTSPromise;

    invoke-direct {p1, v0, p2}, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;-><init>(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->$promise:Lio/dcloud/uts/UTSPromise;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/dcloud/uts/UTSPromiseHelperKt$toDeferred$2;->label:I

    invoke-static {p1, v1}, Lio/dcloud/uts/UTSPromiseHelperKt;->await(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_28

    return-object v0

    :cond_28
    return-object p1
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt$$ExternalSyntheticLambda0 (io.dcloud.uts.UTSPromiseHelperKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/uts/UTSPromiseHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, p2}, Lio/dcloud/uts/UTSPromiseHelperKt;->$r8$lambda$gQTDAdo6kNmuO3YWRhUu1ug-HBM(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt$await$2$1 (io.dcloud.uts.UTSPromiseHelperKt$await$2$1)
.class final Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;
.super Ljava/lang/Object;
.source "UTSPromiseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSPromiseHelperKt;->await(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 20
    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt$await$2$2 (io.dcloud.uts.UTSPromiseHelperKt$await$2$2)
.class final Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;
.super Ljava/lang/Object;
.source "UTSPromiseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSPromiseHelperKt;->await(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 22
    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$2$2;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lio/dcloud/uts/UTSPromiseHelperKt;->access$wrapError(Ljava/lang/Object;)Lio/dcloud/uts/UTSError;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt$await$4$1 (io.dcloud.uts.UTSPromiseHelperKt$await$4$1)
.class final Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;
.super Ljava/lang/Object;
.source "UTSPromiseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSPromiseHelperKt;->await(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSPromiseHelperKt$await$4$2 (io.dcloud.uts.UTSPromiseHelperKt$await$4$2)
.class final Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;
.super Ljava/lang/Object;
.source "UTSPromiseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSPromiseHelperKt;->await(Lio/dcloud/uts/UTSPromise;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 31
    iget-object v0, p0, Lio/dcloud/uts/UTSPromiseHelperKt$await$4$2;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lio/dcloud/uts/UTSPromiseHelperKt;->access$wrapError(Ljava/lang/Object;)Lio/dcloud/uts/UTSError;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
