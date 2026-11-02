###### Class com.bumptech.glide.load.engine.Engine (com.bumptech.glide.load.engine.Engine)
.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final JOB_POOL_SIZE:I = 0x96

.field private static final TAG:Ljava/lang/String; = "Engine"

.field private static final VERBOSE_IS_LOGGABLE:Z


# instance fields
.field private final activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

.field private final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Lcom/bumptech/glide/load/engine/Jobs;

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Jobs;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;Z)V
    .registers 22

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 85
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    if-nez p9, :cond_16

    .line 88
    new-instance p2, Lcom/bumptech/glide/load/engine/ActiveResources;

    move/from16 v1, p13

    invoke-direct {p2, v1}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Z)V

    goto :goto_18

    :cond_16
    move-object/from16 p2, p9

    .line 90
    :goto_18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 91
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    if-nez p8, :cond_25

    .line 94
    new-instance p2, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    goto :goto_27

    :cond_25
    move-object/from16 p2, p8

    .line 96
    :goto_27
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    if-nez p7, :cond_30

    .line 99
    new-instance p7, Lcom/bumptech/glide/load/engine/Jobs;

    invoke-direct {p7}, Lcom/bumptech/glide/load/engine/Jobs;-><init>()V

    .line 101
    :cond_30
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    if-nez p10, :cond_40

    .line 104
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object v7, p0

    move-object v6, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    goto :goto_42

    :cond_40
    move-object/from16 v1, p10

    .line 113
    :goto_42
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    if-nez p11, :cond_4c

    .line 116
    new-instance p2, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    goto :goto_4e

    :cond_4c
    move-object/from16 p2, p11

    .line 118
    :goto_4e
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    if-nez p12, :cond_58

    .line 121
    new-instance p2, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    goto :goto_5a

    :cond_58
    move-object/from16 p2, p12

    .line 123
    :goto_5a
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 125
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Z)V
    .registers 22

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 53
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Jobs;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;Z)V

    return-void
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_a
    instance-of v0, v2, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_11

    .line 352
    check-cast v2, Lcom/bumptech/glide/load/engine/EngineResource;

    return-object v2

    .line 354
    :cond_11
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    return-object v1
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 329
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    :cond_b
    return-object p1
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 338
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 339
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    :cond_e
    return-object v0
.end method

.method private loadFromMemory(Lcom/bumptech/glide/load/engine/EngineKey;ZJ)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "ZJ)",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 302
    :cond_4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 304
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_13

    .line 305
    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    :cond_13
    return-object p2

    .line 310
    :cond_14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 312
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_23

    .line 313
    const-string v0, "Loaded resource from cache"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    :cond_23
    return-object p2

    :cond_24
    return-object v0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .registers 5

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitForExistingOrStartNewJob(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/EngineKey;J)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/Options;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "J)",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v4, p20

    move-wide/from16 v9, p21

    .line 248
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    move/from16 v8, p17

    invoke-virtual {v3, v4, v8}, Lcom/bumptech/glide/load/engine/Jobs;->get(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 250
    invoke-virtual {v3, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    .line 251
    sget-boolean v2, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_20

    .line 252
    const-string v2, "Added to existing load"

    invoke-static {v2, v9, v10, v4}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 254
    :cond_20
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v2

    .line 257
    :cond_26
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    .line 258
    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v19

    .line 265
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v18, p13

    move/from16 v17, p17

    move-object/from16 v6, p20

    .line 266
    invoke-virtual/range {v3 .. v19}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->build(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v3

    move-object v4, v6

    move-object/from16 v5, v19

    .line 284
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v6, v4, v5}, Lcom/bumptech/glide/load/engine/Jobs;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 286
    invoke-virtual {v5, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    .line 287
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->start(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 289
    sget-boolean v2, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_6f

    .line 290
    const-string v2, "Started new load"

    move-wide/from16 v9, p21

    invoke-static {v2, v9, v10, v4}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 292
    :cond_6f
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v2
.end method


# virtual methods
.method public clearDiskCache()V
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    return-void
.end method

.method public load(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/Options;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v2, p0

    .line 175
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    .line 177
    :goto_d
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v8, p10

    move-object/from16 v11, p13

    .line 178
    invoke-virtual/range {v3 .. v11}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/EngineKey;

    move-result-object v3

    .line 189
    monitor-enter p0

    move/from16 v4, p14

    .line 190
    :try_start_26
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromMemory(Lcom/bumptech/glide/load/engine/EngineKey;ZJ)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v5

    if-nez v5, :cond_5c

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-wide/from16 v23, v0

    move-object/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 193
    invoke-direct/range {v2 .. v24}, Lcom/bumptech/glide/load/engine/Engine;->waitForExistingOrStartNewJob(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/EngineKey;J)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_5c
    move-object v0, v5

    .line 216
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_26 .. :try_end_5e} :catchall_68

    .line 220
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    invoke-interface {v3, v0, v1, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_68
    move-exception v0

    .line 216
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public declared-synchronized onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/Jobs;->removeIfCurrent(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 388
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_e

    .line 378
    :try_start_3
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/ActiveResources;->activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 382
    :cond_e
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/Jobs;->removeIfCurrent(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 383
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

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->deactivate(Lcom/bumptech/glide/load/Key;)V

    .line 400
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    return-void

    .line 403
    :cond_11
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;Z)V

    return-void
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;Z)V

    return-void
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 366
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_a

    .line 367
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    return-void

    .line 369
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdown()V

    .line 414
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->clearDiskCacheIfCreated()V

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->shutdown()V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.Engine.DecodeJobFactory (com.bumptech.glide.load.engine.Engine$DecodeJobFactory)
.class Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodeJobFactory"
.end annotation


# instance fields
.field private creationOrder:I

.field final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .registers 4

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)V

    const/16 v1, 0x96

    .line 482
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    .line 494
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    return-void
.end method


# virtual methods
.method build(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;)Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 515
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 516
    iget v1, v0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->creationOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->creationOrder:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, v1

    invoke-virtual/range {v2 .. v19}, Lcom/bumptech/glide/load/engine/DecodeJob;->init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;I)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v1

    return-object v1
.end method

###### Class com.bumptech.glide.load.engine.Engine.DecodeJobFactory.AnonymousClass1 (com.bumptech.glide.load.engine.Engine$DecodeJobFactory$1)
.class Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 484
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->create()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.Engine.EngineJobFactory (com.bumptech.glide.load.engine.Engine$EngineJobFactory)
.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .registers 9

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    .line 548
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    .line 571
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 572
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 573
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 574
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 575
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 576
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method


# virtual methods
.method build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 595
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object p1

    return-object p1
.end method

.method shutdown()V
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 582
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 583
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 584
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.Engine.EngineJobFactory.AnonymousClass1 (com.bumptech.glide.load.engine.Engine$EngineJobFactory$1)
.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/EngineJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/EngineJob;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 550
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->create()Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.Engine.LazyDiskCacheProvider (com.bumptech.glide.load.engine.Engine$LazyDiskCacheProvider)
.class Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyDiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private final factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
    .registers 2

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    return-void
.end method


# virtual methods
.method declared-synchronized clearDiskCacheIfCreated()V
    .registers 2

    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    .line 455
    monitor-exit p0

    return-void

    .line 457
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 458
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_21

    .line 463
    monitor-enter p0

    .line 464
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_11

    .line 465
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 467
    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_1c

    .line 468
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 470
    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 472
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.Engine.LoadStatus (com.bumptech.glide.load.engine.Engine$LoadStatus)
.class public Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadStatus"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field private final engineJob:Lcom/bumptech/glide/load/engine/EngineJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->this$0:Lcom/bumptech/glide/load/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    .line 429
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->this$0:Lcom/bumptech/glide/load/engine/Engine;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 439
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
