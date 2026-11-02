###### Class com.facebook.imagepipeline.memory.BufferMemoryChunk (com.facebook.imagepipeline.memory.BufferMemoryChunk)
.class public Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;
.super Ljava/lang/Object;
.source "BufferMemoryChunk.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/MemoryChunk;
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferMemoryChunk"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mId:J

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    .line 39
    iput p1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    .line 40
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mId:J

    return-void
.end method

.method private doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 7

    .line 159
    instance-of v0, p2, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    if-eqz v0, :cond_42

    .line 162
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 163
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 164
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getSize()I

    move-result v0

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    new-array p2, p4, [B

    .line 172
    iget-object p3, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {p1, p2, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 160
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    :try_start_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 46
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public copy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 10

    .line 98
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_47

    .line 109
    const-string v0, "BufferMemoryChunk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Copying from BufferMemoryChunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to BufferMemoryChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which are the same "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 120
    :cond_47
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_61

    .line 121
    monitor-enter p2

    .line 122
    :try_start_54
    monitor-enter p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_5e

    .line 123
    :try_start_55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 124
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_5b

    .line 125
    :try_start_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    return-void

    :catchall_5b
    move-exception p1

    .line 124
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p1

    :catchall_5e
    move-exception p1

    .line 125
    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5e

    throw p1

    .line 130
    :cond_61
    monitor-enter p0

    .line 131
    :try_start_62
    monitor-enter p2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_6c

    .line 132
    :try_start_63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 133
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_69

    .line 134
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6c

    return-void

    :catchall_69
    move-exception p1

    .line 133
    :try_start_6a
    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    :catchall_6c
    move-exception p1

    .line 134
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public declared-synchronized getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get the pointer of a BufferMemoryChunk"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    return v0
.end method

.method public getUniqueId()J
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mId:J

    return-wide v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized read(I)B
    .registers 5

    monitor-enter p0

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    if-ltz p1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 89
    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 90
    iget v2, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    if-ge p1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return p1

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized read(I[BII)I
    .registers 7

    monitor-enter p0

    .line 75
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 79
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 83
    monitor-exit p0

    return p4

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public declared-synchronized write(I[BII)I
    .registers 7

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 65
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 69
    monitor-exit p0

    return p4

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method
