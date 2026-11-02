###### Class com.facebook.drawee.backends.pipeline.Fresco (com.facebook.drawee.backends.pipeline.Fresco)
.class public Lcom/facebook/drawee/backends/pipeline/Fresco;
.super Ljava/lang/Object;
.source "Fresco.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sIsInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/facebook/drawee/backends/pipeline/Fresco;

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDraweeControllerBuilderSupplier()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;
    .registers 1

    .line 131
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    return-object v0
.end method

.method public static getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;
    .registers 1

    .line 145
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    return-object v0
.end method

.method public static getImagePipelineFactory()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;
    .registers 1

    .line 140
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getInstance()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v0

    return-object v0
.end method

.method public static hasBeenInitialized()Z
    .registers 1

    .line 157
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .registers 3
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V
    .registers 4
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 54
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;Z)V
    .registers 9
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    const-string v0, "Fresco#initialize"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 66
    :cond_b
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 67
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->TAG:Ljava/lang/Class;

    const-string v2, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1a

    .line 72
    :cond_18
    sput-boolean v1, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    .line 75
    :goto_1a
    invoke-static {p3}, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->setUseNativeCode(Z)V

    .line 77
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_9a

    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 79
    const-string p3, "Fresco.initialize->SoLoader.init"

    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 82
    :cond_2e
    :try_start_2e
    const-string p3, "com.facebook.imagepipeline.nativecode.NativeCodeInitializer"

    .line 83
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 84
    const-string v0, "init"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_49} :catch_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_49} :catch_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_49} :catch_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_49} :catch_50
    .catchall {:try_start_2e .. :try_end_49} :catchall_8f

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_9a

    goto :goto_8b

    .line 96
    :catch_50
    :try_start_50
    new-instance p3, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {p3}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {p3}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_8f

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_9a

    goto :goto_8b

    .line 93
    :catch_5f
    :try_start_5f
    new-instance p3, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {p3}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {p3}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_8f

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_9a

    goto :goto_8b

    .line 90
    :catch_6e
    :try_start_6e
    new-instance p3, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {p3}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {p3}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_8f

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_9a

    goto :goto_8b

    .line 87
    :catch_7d
    :try_start_7d
    new-instance p3, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {p3}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {p3}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_8f

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-eqz p3, :cond_9a

    .line 99
    :goto_8b
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    goto :goto_9a

    :catchall_8f
    move-exception p0

    .line 98
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 99
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 101
    :cond_99
    throw p0

    .line 104
    :cond_9a
    :goto_9a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p1, :cond_a4

    .line 106
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->initialize(Landroid/content/Context;)V

    goto :goto_a7

    .line 108
    :cond_a4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->initialize(Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 110
    :goto_a7
    invoke-static {p0, p2}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initializeDrawee(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V

    .line 111
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 112
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_b3
    return-void
.end method

.method private static initializeDrawee(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V
    .registers 3
    .param p1    # Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    const-string v0, "Fresco.initializeDrawee"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 121
    :cond_b
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/DraweeConfig;)V

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    .line 123
    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->initialize(Lcom/facebook/common/internal/Supplier;)V

    .line 124
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 125
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1e
    return-void
.end method

.method public static newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .registers 1

    .line 136
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->get()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static shutDown()V
    .registers 1

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    .line 151
    invoke-static {}, Lcom/facebook/drawee/view/SimpleDraweeView;->shutDown()V

    .line 152
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->shutDown()V

    return-void
.end method
