###### Class com.facebook.imagepipeline.systrace.FrescoSystrace (com.facebook.imagepipeline.systrace.FrescoSystrace)
.class public final Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.super Ljava/lang/Object;
.source "FrescoSystrace.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;,
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;,
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007J-\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0012H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace;",
        "",
        "<init>",
        "()V",
        "NO_OP_ARGS_BUILDER",
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;",
        "provide",
        "",
        "instance",
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;",
        "beginSection",
        "name",
        "",
        "beginSectionWithArgs",
        "endSection",
        "traceSection",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "isTracing",
        "",
        "_instance",
        "getInstance",
        "()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;",
        "Systrace",
        "ArgsBuilder",
        "NoOpArgsBuilder",
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
.field public static final INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

.field public static final NO_OP_ARGS_BUILDER:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

.field private static _instance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 22
    new-instance v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    sput-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->NO_OP_ARGS_BUILDER:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginSection(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static final beginSectionWithArgs(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->beginSectionWithArgs(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final endSection()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 36
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->endSection()V

    return-void
.end method

.method private final getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    .registers 4

    .line 57
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->_instance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    if-nez v0, :cond_18

    .line 58
    const-class v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    monitor-enter v0

    .line 59
    :try_start_7
    new-instance v1, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;-><init>()V

    .line 60
    move-object v2, v1

    check-cast v2, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    sput-object v2, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->_instance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 58
    monitor-exit v0

    check-cast v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_18
    return-object v0
.end method

.method public static final isTracing()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->isTracing()Z

    move-result v0

    return v0
.end method

.method public static final provide(Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;)V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 26
    sput-object p0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->_instance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-void
.end method


# virtual methods
.method public final traceSection(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 41
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_15
    invoke-static {p1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 46
    :try_start_18
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 48
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :catchall_20
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

###### Class com.facebook.imagepipeline.systrace.FrescoSystrace.ArgsBuilder (com.facebook.imagepipeline.systrace.FrescoSystrace$ArgsBuilder)
.class public interface abstract Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.super Ljava/lang/Object;
.source "FrescoSystrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArgsBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\u0006\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H&J\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\tH&J\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;",
        "",
        "flush",
        "",
        "arg",
        "key",
        "",
        "value",
        "",
        "",
        "",
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
.method public abstract arg(Ljava/lang/String;D)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.end method

.method public abstract arg(Ljava/lang/String;I)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.end method

.method public abstract arg(Ljava/lang/String;J)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.end method

.method public abstract arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.end method

.method public abstract flush()V
.end method

###### Class com.facebook.imagepipeline.systrace.FrescoSystrace.NoOpArgsBuilder (com.facebook.imagepipeline.systrace.FrescoSystrace$NoOpArgsBuilder)
.class final Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;
.super Ljava/lang/Object;
.source "FrescoSystrace.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpArgsBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\u0006\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000bH\u0016J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000cH\u0016J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;",
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;",
        "<init>",
        "()V",
        "flush",
        "",
        "arg",
        "key",
        "",
        "value",
        "",
        "",
        "",
        "",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arg(Ljava/lang/String;D)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .registers 4

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object p1, p0

    check-cast p1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    return-object p1
.end method

.method public arg(Ljava/lang/String;I)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .registers 3

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    move-object p1, p0

    check-cast p1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    return-object p1
.end method

.method public arg(Ljava/lang/String;J)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .registers 4

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    move-object p1, p0

    check-cast p1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    return-object p1
.end method

.method public arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    move-object p1, p0

    check-cast p1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    return-object p1
.end method

.method public flush()V
    .registers 1

    return-void
.end method

###### Class com.facebook.imagepipeline.systrace.FrescoSystrace.Systrace (com.facebook.imagepipeline.systrace.FrescoSystrace$Systrace)
.class public interface abstract Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
.super Ljava/lang/Object;
.source "FrescoSystrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Systrace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;",
        "",
        "beginSection",
        "",
        "name",
        "",
        "beginSectionWithArgs",
        "Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;",
        "endSection",
        "isTracing",
        "",
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
.method public abstract beginSection(Ljava/lang/String;)V
.end method

.method public abstract beginSectionWithArgs(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
.end method

.method public abstract endSection()V
.end method

.method public abstract isTracing()Z
.end method
