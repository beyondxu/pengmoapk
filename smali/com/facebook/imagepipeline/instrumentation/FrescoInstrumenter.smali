###### Class com.facebook.imagepipeline.instrumentation.FrescoInstrumenter (com.facebook.imagepipeline.instrumentation.FrescoInstrumenter)
.class public final Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;
.super Ljava/lang/Object;
.source "FrescoInstrumenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0007J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0007J\u001a\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8G\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;",
        "provide",
        "",
        "instrumenter",
        "isTracing",
        "",
        "()Z",
        "onBeforeSubmitWork",
        "tag",
        "",
        "onBeginWork",
        "token",
        "onEndWork",
        "markFailure",
        "th",
        "",
        "decorateRunnable",
        "Ljava/lang/Runnable;",
        "runnable",
        "Instrumenter",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

.field private static volatile instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->INSTANCE:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 79
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-eqz v0, :cond_f

    if-nez p0, :cond_7

    goto :goto_f

    :cond_7
    if-nez p1, :cond_b

    .line 83
    const-string p1, ""

    .line 84
    :cond_b
    invoke-interface {v0, p0, p1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static final isTracing()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 36
    :cond_6
    invoke-interface {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->isTracing()Z

    move-result v0

    return v0
.end method

.method public static final markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "th"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-eqz v0, :cond_10

    if-nez p0, :cond_d

    goto :goto_10

    .line 74
    :cond_d
    invoke-interface {v0, p0, p1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static final onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-eqz v0, :cond_c

    if-nez p0, :cond_7

    goto :goto_c

    .line 45
    :cond_7
    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 51
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-eqz v0, :cond_c

    if-nez p0, :cond_7

    goto :goto_c

    .line 55
    :cond_7
    invoke-interface {v0, p0, p1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final onEndWork(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 61
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-eqz v0, :cond_a

    if-nez p0, :cond_7

    goto :goto_a

    .line 65
    :cond_7
    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onEndWork(Ljava/lang/Object;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static final provide(Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;)V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    sput-object p0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    return-void
.end method

###### Class com.facebook.imagepipeline.instrumentation.FrescoInstrumenter.Instrumenter (com.facebook.imagepipeline.instrumentation.FrescoInstrumenter$Instrumenter)
.class public interface abstract Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
.super Ljava/lang/Object;
.source "FrescoInstrumenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Instrumenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00012\u0006\u0010\t\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0001H&J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH&J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;",
        "",
        "isTracing",
        "",
        "()Z",
        "onBeforeSubmitWork",
        "tag",
        "",
        "onBeginWork",
        "token",
        "onEndWork",
        "",
        "markFailure",
        "th",
        "",
        "decorateRunnable",
        "Ljava/lang/Runnable;",
        "runnable",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;
.end method

.method public abstract isTracing()Z
.end method

.method public abstract markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract onEndWork(Ljava/lang/Object;)V
.end method
