###### Class com.bumptech.glide.load.engine.EngineJob (com.bumptech.glide.load.engine.EngineJob)
.class Lcom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;,
        Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;,
        Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;,
        Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;,
        Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
        "TR;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;


# instance fields
.field private final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

.field dataSource:Lcom/bumptech/glide/load/DataSource;

.field private decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field engineResource:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field exception:Lcom/bumptech/glide/load/engine/GlideException;

.field private hasLoadFailed:Z

.field private hasResource:Z

.field private isCacheable:Z

.field private volatile isCancelled:Z

.field private isLoadedFromAlternateCacheKey:Z

.field private key:Lcom/bumptech/glide/load/Key;

.field private onlyRetrieveFromCache:Z

.field private final pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private final resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorPool:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;)V"
        }
    .end annotation

    .line 82
    sget-object v8, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    .line 34
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 104
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 105
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 106
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 107
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 108
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 109
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroidx/core/util/Pools$Pool;

    .line 110
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    return-void
.end method

.method private getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .registers 2

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    if-eqz v0, :cond_7

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0

    .line 198
    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0
.end method

.method private isDone()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized release()V
    .registers 4

    monitor-enter p0

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_2c

    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->clear()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 303
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 304
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v1, 0x0

    .line 305
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    .line 306
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 307
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 308
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    .line 309
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->release(Z)V

    .line 310
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 311
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 312
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    .line 314
    monitor-exit p0

    return-void

    .line 299
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method declared-synchronized addCallback(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .registers 5

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->add(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 141
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    .line 142
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;-><init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_34

    .line 143
    :cond_1c
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_2c

    .line 144
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    .line 145
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;-><init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_34

    .line 147
    :cond_2c
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 149
    :goto_34
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

.method callCallbackOnLoadFailed(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    .line 175
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method callCallbackOnResourceReady(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 5

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    .line 161
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method cancel()V
    .registers 3

    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method decrementPendingCallbacks()V
    .registers 4

    .line 280
    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 282
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 284
    :goto_1a
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-nez v0, :cond_27

    .line 286
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 288
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->release()V

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 290
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    if-eqz v0, :cond_2e

    .line 293
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    .line 290
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method declared-synchronized incrementPendingCallbacks(I)V
    .registers 4

    monitor-enter p0

    .line 270
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz p1, :cond_19

    .line 272
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 274
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method declared-synchronized init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 121
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    .line 122
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    .line 123
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    .line 124
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 125
    monitor-exit p0

    return-object p0

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method notifyCallbacksOfException()V
    .registers 5

    .line 353
    monitor-enter p0

    .line 354
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 355
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_f

    .line 356
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->release()V

    .line 357
    monitor-exit p0

    return-void

    .line 358
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 360
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_56

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    .line 365
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 367
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->copy()Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    .line 371
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_66

    .line 373
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 375
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    .line 376
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;-><init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_39

    .line 378
    :cond_52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    return-void

    .line 361
    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_66
    move-exception v0

    .line 371
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_66

    throw v0
.end method

.method notifyCallbacksOfResult()V
    .registers 6

    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 235
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_14

    .line 238
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 239
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->release()V

    .line 240
    monitor-exit p0

    return-void

    .line 241
    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 243
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_6c

    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lcom/bumptech/glide/load/engine/Resource;ZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 252
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->copy()Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 256
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 257
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_7c

    .line 259
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    invoke-interface {v3, p0, v0, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 261
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    .line 262
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;-><init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f

    .line 264
    :cond_68
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    return-void

    .line 244
    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7c
    move-exception v0

    .line 257
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .registers 2

    .line 329
    monitor-enter p0

    .line 330
    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 331
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 332
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->notifyCallbacksOfException()V

    return-void

    :catchall_8
    move-exception p1

    .line 331
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 319
    monitor-enter p0

    .line 320
    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 321
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 322
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    .line 323
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    .line 324
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->notifyCallbacksOfResult()V

    return-void

    :catchall_c
    move-exception p1

    .line 323
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method onlyRetrieveFromCache()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    return v0
.end method

.method declared-synchronized removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->remove(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 182
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 183
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->cancel()V

    .line 184
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez p1, :cond_1e

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz p1, :cond_29

    .line 185
    :cond_1e
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_29

    .line 186
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->release()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 189
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized start(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 131
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->willDecodeFromCache()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_10

    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    .line 132
    :goto_10
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 133
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

###### Class com.bumptech.glide.load.engine.EngineJob.CallLoadFailed (com.bumptech.glide.load.engine.EngineJob$CallLoadFailed)
.class Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLoadFailed"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .line 391
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    .line 401
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->contains(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 402
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->callCallbackOnLoadFailed(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 405
    :cond_1d
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    .line 406
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    .line 407
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    return-void

    :catchall_25
    move-exception v2

    .line 406
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2

    :catchall_28
    move-exception v1

    .line 407
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v1
.end method

###### Class com.bumptech.glide.load.engine.EngineJob.CallResourceReady (com.bumptech.glide.load.engine.EngineJob$CallResourceReady)
.class Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallResourceReady"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .line 415
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_36

    .line 425
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->contains(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 427
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 428
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->callCallbackOnResourceReady(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 429
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 431
    :cond_2b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    .line 432
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_33

    .line 433
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    return-void

    :catchall_33
    move-exception v2

    .line 432
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v2

    :catchall_36
    move-exception v1

    .line 433
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    throw v1
.end method

###### Class com.bumptech.glide.load.engine.EngineJob.EngineResourceFactory (com.bumptech.glide.load.engine.EngineJob$EngineResourceFactory)
.class Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineResourceFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/engine/Resource;ZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;Z",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "TR;>;"
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v3, 0x1

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.EngineJob.ResourceCallbackAndExecutor (com.bumptech.glide.load.engine.EngineJob$ResourceCallbackAndExecutor)
.class final Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceCallbackAndExecutor"
.end annotation


# instance fields
.field final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    .line 494
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 499
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    if-eqz v0, :cond_f

    .line 500
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.bumptech.glide.load.engine.EngineJob.ResourceCallbacksAndExecutors (com.bumptech.glide.load.engine.EngineJob$ResourceCallbacksAndExecutors)
.class final Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceCallbacksAndExecutors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbacksAndExecutors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    return-void
.end method

.method private static defaultCallbackAndExecutor(Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;
    .registers 3

    .line 478
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    invoke-static {}, Lcom/bumptech/glide/util/Executors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method add(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method contains(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->defaultCallbackAndExecutor(Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method copy()Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;
    .registers 4

    .line 474
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method remove(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->defaultCallbackAndExecutor(Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method size()I
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
