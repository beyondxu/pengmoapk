###### Class com.facebook.imagepipeline.memory.AshmemMemoryChunk (com.facebook.imagepipeline.memory.AshmemMemoryChunk)
.class public Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;
.super Ljava/lang/Object;
.source "AshmemMemoryChunk.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/MemoryChunk;
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AshmemMemoryChunk"


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mId:J

.field private mSharedMemory:Landroid/os/SharedMemory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;

    .line 47
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 48
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mId:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 34
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 36
    :try_start_f
    const-string v0, "AshmemMemoryChunk"

    invoke-static {v0, p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;

    .line 37
    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/SharedMemory;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_1d} :catch_25

    .line 41
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mId:J

    return-void

    :catch_25
    move-exception p1

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create AshmemMemory"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 7

    .line 175
    instance-of v0, p2, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;

    if-eqz v0, :cond_49

    .line 178
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 179
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 180
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v1

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 183
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    new-array p1, p4, [B

    .line 189
    iget-object p3, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 190
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 176
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;

    if-eqz v0, :cond_e

    .line 55
    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/SharedMemory;)V

    .line 57
    :cond_e
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_15

    .line 58
    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/ByteBuffer;)V

    :cond_15
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 61
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 63
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public copy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 10

    .line 130
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_47

    .line 141
    const-string v0, "AshmemMemoryChunk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Copying from AshmemMemoryChunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to AshmemMemoryChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which are the same "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 152
    :cond_47
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_61

    .line 153
    monitor-enter p2

    .line 154
    :try_start_54
    monitor-enter p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_5e

    .line 155
    :try_start_55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 156
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_5b

    .line 157
    :try_start_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    return-void

    :catchall_5b
    move-exception p1

    .line 156
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p1

    :catchall_5e
    move-exception p1

    .line 157
    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5e

    throw p1

    .line 162
    :cond_61
    monitor-enter p0

    .line 163
    :try_start_62
    monitor-enter p2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_6c

    .line 164
    :try_start_63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 165
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_69

    .line 166
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6c

    return-void

    :catchall_69
    move-exception p1

    .line 165
    :try_start_6a
    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    :catchall_6c
    move-exception p1

    .line 166
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get the pointer of an  AshmemMemoryChunk"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/SharedMemory;)I

    move-result v0

    return v0
.end method

.method public getUniqueId()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mId:J

    return-wide v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mSharedMemory:Landroid/os/SharedMemory;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized read(I)B
    .registers 5

    monitor-enter p0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->isClosed()Z

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

    .line 105
    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 106
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return p1

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public declared-synchronized read(I[BII)I
    .registers 7

    monitor-enter p0

    .line 92
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v0

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 95
    array-length v0, p2

    .line 96
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v1

    .line 95
    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 99
    monitor-exit p0

    return p4

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public declared-synchronized write(I[BII)I
    .registers 7

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v0

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 82
    array-length v0, p2

    .line 83
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->getSize()I

    move-result v1

    .line 82
    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunk;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 86
    monitor-exit p0

    return p4

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method
