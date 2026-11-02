###### Class com.facebook.imagepipeline.memory.NoOpPoolStatsTracker (com.facebook.imagepipeline.memory.NoOpPoolStatsTracker)
.class public Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
.super Ljava/lang/Object;
.source "NoOpPoolStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/PoolStatsTracker;


# static fields
.field private static sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
    .registers 2

    const-class v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    .line 24
    :cond_e
    sget-object v1, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public onAlloc(I)V
    .registers 2

    return-void
.end method

.method public onFree(I)V
    .registers 2

    return-void
.end method

.method public onHardCapReached()V
    .registers 1

    return-void
.end method

.method public onSoftCapReached()V
    .registers 1

    return-void
.end method

.method public onValueRelease(I)V
    .registers 2

    return-void
.end method

.method public onValueReuse(I)V
    .registers 2

    return-void
.end method

.method public setBasePool(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .registers 2

    return-void
.end method
