###### Class com.facebook.imagepipeline.memory.BufferMemoryChunkPool (com.facebook.imagepipeline.memory.BufferMemoryChunkPool)
.class public Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;
.super Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
.source "BufferMemoryChunkPool.java"


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    return-void
.end method


# virtual methods
.method protected alloc(I)Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;
    .registers 3

    .line 31
    new-instance v0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic alloc(I)Lcom/facebook/imagepipeline/memory/MemoryChunk;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;->alloc(I)Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;->alloc(I)Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    move-result-object p1

    return-object p1
.end method
