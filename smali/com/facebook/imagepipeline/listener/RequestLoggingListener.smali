###### Class com.facebook.imagepipeline.listener.RequestLoggingListener (com.facebook.imagepipeline.listener.RequestLoggingListener)
.class public final Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
.super Ljava/lang/Object;
.source "RequestLoggingListener.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/listener/RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000c\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0016J.\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0017H\u0016J6\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0017H\u0016J.\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0017H\u0016J \u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0016J \u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0012H\u0016J \u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J(\u0010!\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0007H\u0016R(\u0010\u0004\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/listener/RequestLoggingListener;",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "<init>",
        "()V",
        "producerStartTimeMap",
        "",
        "Landroid/util/Pair;",
        "",
        "",
        "requestStartTimeMap",
        "onRequestStart",
        "",
        "request",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "callerContextObject",
        "",
        "requestId",
        "isPrefetch",
        "",
        "onProducerStart",
        "producerName",
        "onProducerFinishWithSuccess",
        "extraMap",
        "",
        "onProducerFinishWithFailure",
        "throwable",
        "",
        "onProducerFinishWithCancellation",
        "onProducerEvent",
        "producerEventName",
        "onUltimateProducerReached",
        "successful",
        "onRequestSuccess",
        "onRequestFailure",
        "onRequestCancellation",
        "requiresExtraMap",
        "id",
        "Companion",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

.field private static final TAG:Ljava/lang/String; = "RequestLoggingListener"


# instance fields
.field private final producerStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerEventName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 127
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 128
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 130
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    .line 132
    const-string v5, "RequestLoggingListener"

    .line 133
    const-string/jumbo v6, "time %d: onProducerEvent: {requestId: %s, stage: %s, eventName: %s; elapsedTime: %d ms}"

    .line 134
    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 138
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x3

    aput-object p3, v2, p1

    const/4 p1, 0x4

    aput-object v1, v2, p1

    .line 131
    invoke-static {v5, v6, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 140
    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public declared-synchronized onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 110
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 111
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 113
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    .line 115
    const-string v5, "RequestLoggingListener"

    .line 116
    const-string/jumbo v6, "time %d: onProducerFinishWithCancellation: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s}"

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 120
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const/4 p1, 0x4

    aput-object p3, v2, p1

    .line 114
    invoke-static {v5, v6, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 123
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public declared-synchronized onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 87
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 88
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 90
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    .line 92
    const-string v5, "RequestLoggingListener"

    .line 94
    const-string/jumbo v6, "time %d: onProducerFinishWithFailure: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s, throwable: %s}"

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 98
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 100
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object v1, v3, p1

    const/4 p1, 0x4

    aput-object p4, v3, p1

    aput-object v2, v3, v0

    .line 91
    invoke-static {v5, p3, v6, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 102
    :cond_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public declared-synchronized onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 65
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 66
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 68
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    .line 70
    const-string v5, "RequestLoggingListener"

    .line 71
    const-string/jumbo v6, "time %d: onProducerFinishWithSuccess: {requestId: %s, producer: %s, elapsedTime: %d ms, extraMap: %s}"

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 75
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const/4 p1, 0x4

    aput-object p3, v2, p1

    .line 69
    invoke-static {v5, v6, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 78
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public declared-synchronized onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 46
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 47
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "RequestLoggingListener"

    .line 52
    const-string/jumbo v3, "time %d: onProducerStart: {requestId: %s, producer: %s}"

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 50
    invoke-static {v0, v3, v1, p1, p2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 57
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public declared-synchronized onRequestCancellation(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 199
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 200
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    .line 203
    const-string v4, "RequestLoggingListener"

    .line 204
    const-string/jumbo v5, "time %d: onRequestCancellation: {requestId: %s, elapsedTime: %d ms}"

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 207
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 202
    invoke-static {v4, v5, v6, p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 209
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string p4, "request"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "throwable"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 184
    invoke-static {p1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 185
    iget-object p1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 186
    sget-object p4, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {p4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v0

    .line 188
    const-string v2, "RequestLoggingListener"

    .line 189
    const-string/jumbo v3, "time %d: onRequestFailure: {requestId: %s, elapsedTime: %d ms, throwable: %s}"

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 192
    invoke-static {p4, p1, v0, v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 193
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, p4, v0

    const/4 v0, 0x1

    aput-object p2, p4, v0

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const/4 p1, 0x3

    aput-object p3, p4, p1

    .line 187
    invoke-static {v2, v3, p4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 195
    :cond_4d
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public declared-synchronized onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callerContextObject"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 32
    invoke-static {p1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 34
    const-string v0, "RequestLoggingListener"

    .line 35
    const-string/jumbo v1, "time %d: onRequestSubmit: {requestId: %s, callerContext: %s, isPrefetch: %b}"

    .line 36
    sget-object p1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {p1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 39
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, p2

    move-object v3, p3

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 42
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    move-object p1, v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3e

    throw p1
.end method

.method public declared-synchronized onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string p3, "request"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 165
    invoke-static {p1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 166
    iget-object p1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 167
    sget-object p3, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {p3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v0

    .line 169
    const-string v2, "RequestLoggingListener"

    .line 170
    const-string/jumbo v3, "time %d: onRequestSuccess: {requestId: %s, elapsedTime: %d ms}"

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 173
    invoke-static {p3, p1, v0, v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 168
    invoke-static {v2, v3, v4, p2, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 175
    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public declared-synchronized onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 148
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 149
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 151
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    .line 153
    const-string v5, "RequestLoggingListener"

    .line 154
    const-string/jumbo v6, "time %d: onUltimateProducerReached: {requestId: %s, producer: %s, elapsedTime: %d ms, success: %b}"

    .line 155
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 158
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 159
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const/4 p1, 0x4

    aput-object p3, v2, p1

    .line 152
    invoke-static {v5, v6, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 161
    :cond_4d
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public requiresExtraMap(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 211
    invoke-static {p1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.imagepipeline.listener.RequestLoggingListener.Companion (com.facebook.imagepipeline.listener.RequestLoggingListener$Companion)
.class public final Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;
.super Ljava/lang/Object;
.source "RequestLoggingListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "getElapsedTime",
        "",
        "startTime",
        "endTime",
        "(Ljava/lang/Long;J)J",
        "time",
        "getTime",
        "()J",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J
    .registers 4

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J
    .registers 3

    .line 213
    invoke-direct {p0}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getElapsedTime(Ljava/lang/Long;J)J
    .registers 6

    if-eqz p1, :cond_8

    .line 218
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    return-wide p2

    :cond_8
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final getTime()J
    .registers 3

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
