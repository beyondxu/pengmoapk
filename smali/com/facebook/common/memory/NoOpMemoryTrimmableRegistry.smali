###### Class com.facebook.common.memory.NoOpMemoryTrimmableRegistry (com.facebook.common.memory.NoOpMemoryTrimmableRegistry)
.class public Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;
.super Ljava/lang/Object;
.source "NoOpMemoryTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/memory/MemoryTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;
    .registers 2

    const-class v0, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    invoke-direct {v1}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;-><init>()V

    sput-object v1, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    .line 24
    :cond_e
    sget-object v1, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;
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
.method public registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V
    .registers 2

    return-void
.end method

.method public unregisterMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V
    .registers 2

    return-void
.end method
