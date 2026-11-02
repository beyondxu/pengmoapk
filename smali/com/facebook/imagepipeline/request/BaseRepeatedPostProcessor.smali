###### Class com.facebook.imagepipeline.request.BaseRepeatedPostProcessor (com.facebook.imagepipeline.request.BaseRepeatedPostProcessor)
.class public abstract Lcom/facebook/imagepipeline/request/BaseRepeatedPostProcessor;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "BaseRepeatedPostProcessor.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0006\u0010\n\u001a\u00020\u0008R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/request/BaseRepeatedPostProcessor;",
        "Lcom/facebook/imagepipeline/request/BasePostprocessor;",
        "Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;",
        "<init>",
        "()V",
        "callback",
        "Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;",
        "setCallback",
        "",
        "runner",
        "update",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private callback:Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized setCallback(Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "runner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/BaseRepeatedPostProcessor;->callback:Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 17
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final update()V
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/BaseRepeatedPostProcessor;->callback:Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;->update()V

    :cond_7
    return-void
.end method
