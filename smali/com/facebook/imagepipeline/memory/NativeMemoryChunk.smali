###### Class com.facebook.imagepipeline.memory.NativeMemoryChunk (com.facebook.imagepipeline.memory.NativeMemoryChunk)
.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
.super Ljava/lang/Object;
.source "NativeMemoryChunk.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/MemoryChunk;
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMemoryChunk"


# instance fields
.field private mIsClosed:Z

.field private final mNativePtr:J

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string v0, "imagepipeline"

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mIsClosed:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 46
    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 47
    iput p1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    .line 48
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeAllocate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 49
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mIsClosed:Z

    return-void
.end method

.method private doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 9

    .line 174
    instance-of v0, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    if-eqz v0, :cond_2d

    .line 177
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 178
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 179
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getSize()I

    move-result v0

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 180
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getNativePtr()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    iget-wide p2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeMemcpy(JJI)V

    return-void

    .line 175
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeAllocate(I)J
.end method

.method private static native nativeCopyFromByteArray(J[BII)V
.end method

.method private static native nativeCopyToByteArray(J[BII)V
.end method

.method private static native nativeFree(J)V
.end method

.method private static native nativeMemcpy(JJI)V
.end method

.method private static native nativeReadByte(J)B
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mIsClosed:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mIsClosed:Z

    .line 63
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeFree(J)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 65
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public copy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V
    .registers 10

    .line 128
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_50

    .line 139
    const-string v0, "NativeMemoryChunk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Copying from NativeMemoryChunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to NativeMemoryChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which share the same address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 151
    :cond_50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->getUniqueId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_6a

    .line 152
    monitor-enter p2

    .line 153
    :try_start_5d
    monitor-enter p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_67

    .line 154
    :try_start_5e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 155
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_64

    .line 156
    :try_start_62
    monitor-exit p2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    return-void

    :catchall_64
    move-exception p1

    .line 155
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw p1

    :catchall_67
    move-exception p1

    .line 156
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_67

    throw p1

    .line 161
    :cond_6a
    monitor-enter p0

    .line 162
    :try_start_6b
    monitor-enter p2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_75

    .line 163
    :try_start_6c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/MemoryChunk;II)V

    .line 164
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_72

    .line 165
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_75

    return-void

    :catchall_72
    move-exception p1

    .line 164
    :try_start_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw p1

    :catchall_75
    move-exception p1

    .line 165
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    throw p1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 194
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalize: Chunk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " still active. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "NativeMemoryChunk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_27
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_2e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 204
    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    return-wide v0
.end method

.method public getSize()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    return v0
.end method

.method public getUniqueId()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    return-wide v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 69
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mIsClosed:Z
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

.method public declared-synchronized read(I)B
    .registers 6

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

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

    .line 104
    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 105
    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    if-ge p1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 106
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeReadByte(J)B

    move-result p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return p1

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public declared-synchronized read(I[BII)I
    .registers 9

    monitor-enter p0

    .line 92
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 94
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 95
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 97
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyToByteArray(J[BII)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 98
    monitor-exit p0

    return p4

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public declared-synchronized write(I[BII)I
    .registers 9

    monitor-enter p0

    .line 80
    :try_start_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 82
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-static {p1, p4, v0}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->adjustByteCount(III)I

    move-result p4

    .line 83
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-static {p1, v0, p3, p4, v1}, Lcom/facebook/imagepipeline/memory/MemoryChunkUtil;->checkBounds(IIIII)V

    .line 85
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyFromByteArray(J[BII)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 86
    monitor-exit p0

    return p4

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
