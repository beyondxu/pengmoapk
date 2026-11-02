###### Class com.facebook.imagepipeline.memory.Bucket (com.facebook.imagepipeline.memory.Bucket)
.class Lcom/facebook/imagepipeline/memory/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BUCKET"


# instance fields
.field private final mFixBucketsReinitialization:Z

.field final mFreeList:Ljava/util/Queue;

.field private mInUseLength:I

.field public final mItemSize:I

.field public final mMaxLength:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 61
    :goto_a
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    if-ltz p2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 62
    :goto_12
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    if-ltz p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 63
    :goto_19
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 65
    iput p1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mItemSize:I

    .line 66
    iput p2, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mMaxLength:I

    .line 67
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFreeList:Ljava/util/Queue;

    .line 68
    iput p3, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    .line 70
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFixBucketsReinitialization:Z

    return-void
.end method


# virtual methods
.method addToFreeList(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFreeList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public decrementInUseCount()V
    .registers 3

    .line 152
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 153
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/Bucket;->pop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 96
    iget v1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    :cond_c
    return-object v0
.end method

.method getFreeListSize()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFreeList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getInUseCount()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    return v0
.end method

.method public incrementInUseCount()V
    .registers 2

    .line 117
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    return-void
.end method

.method public isMaxLengthExceeded()Z
    .registers 3

    .line 77
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/Bucket;->getFreeListSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mMaxLength:I

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFreeList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mFixBucketsReinitialization:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 129
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    if-lez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 130
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    .line 131
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/Bucket;->addToFreeList(Ljava/lang/Object;)V

    return-void

    .line 134
    :cond_1a
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    if-lez v0, :cond_25

    sub-int/2addr v0, v2

    .line 135
    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->mInUseLength:I

    .line 136
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/Bucket;->addToFreeList(Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_25
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "BUCKET"

    const-string v1, "Tried to release value %s from an empty bucket!"

    invoke-static {p1, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
