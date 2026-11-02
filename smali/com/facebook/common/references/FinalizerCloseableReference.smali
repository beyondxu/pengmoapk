###### Class com.facebook.common.references.FinalizerCloseableReference (com.facebook.common.references.FinalizerCloseableReference)
.class public Lcom/facebook/common/references/FinalizerCloseableReference;
.super Lcom/facebook/common/references/CloseableReference;
.source "FinalizerCloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/references/CloseableReference<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinalizerCloseableReference"


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V
    .registers 11
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;Z)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/facebook/common/references/CloseableReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/facebook/common/references/FinalizerCloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method protected finalize()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_4e

    .line 44
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/FinalizerCloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_a

    .line 45
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4b

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 47
    :cond_a
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_4b

    .line 49
    :try_start_b
    iget-object v0, p0, Lcom/facebook/common/references/FinalizerCloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 50
    const-string v1, "FinalizerCloseableReference"

    const-string v2, "Finalized without closing: %x %x (type = %s)"

    .line 53
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/references/FinalizerCloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 54
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_33

    .line 55
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_33
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    .line 50
    invoke-static {v1, v2, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/common/references/FinalizerCloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->deleteReference()V
    :try_end_47
    .catchall {:try_start_b .. :try_end_47} :catchall_4e

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_4b
    move-exception v0

    .line 47
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 60
    throw v0
.end method
