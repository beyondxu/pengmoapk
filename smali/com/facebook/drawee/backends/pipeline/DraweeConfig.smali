###### Class com.facebook.drawee.backends.pipeline.DraweeConfig (com.facebook.drawee.backends.pipeline.DraweeConfig)
.class public Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    }
.end annotation


# instance fields
.field private final mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmCustomDrawableFactories(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 33
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmCustomDrawableFactories(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->copyOf(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 34
    :goto_13
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;

    .line 36
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmDebugOverlayEnabledSupplier(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 37
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmDebugOverlayEnabledSupplier(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_29

    :cond_20
    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 39
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmPipelineDraweeControllerFactory(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    .line 40
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->-$$Nest$fgetmImagePerfDataListener(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;Lcom/facebook/drawee/backends/pipeline/DraweeConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;-><init>(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 1

    .line 59
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;

    invoke-direct {v0}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCustomDrawableFactories()Lcom/facebook/common/internal/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public getDebugOverlayEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getImagePerfDataListener()Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    return-object v0
.end method

.method public getPipelineDraweeControllerFactory()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    return-object v0
.end method

###### Class com.facebook.drawee.backends.pipeline.DraweeConfig.Builder (com.facebook.drawee.backends.pipeline.DraweeConfig$Builder)
.class public final Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomDrawableFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCustomDrawableFactories(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mCustomDrawableFactories:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugOverlayEnabledSupplier(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImagePerfDataListener(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
    .registers 1

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipelineDraweeControllerFactory(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;
    .registers 1

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCustomDrawableFactory(Lcom/facebook/imagepipeline/drawable/DrawableFactory;)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mCustomDrawableFactories:Ljava/util/List;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mCustomDrawableFactories:Ljava/util/List;

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mCustomDrawableFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/facebook/drawee/backends/pipeline/DraweeConfig;
    .registers 3

    .line 130
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig;-><init>(Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;Lcom/facebook/drawee/backends/pipeline/DraweeConfig-IA;)V

    return-object v0
.end method

.method public setDebugOverlayEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;"
        }
    .end annotation

    .line 108
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mDebugOverlayEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setDrawDebugOverlay(Z)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 2

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->setDebugOverlayEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setImagePerfDataListener(Lcom/facebook/fresco/ui/common/ImagePerfDataListener;)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 2
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mImagePerfDataListener:Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    return-object p0
.end method

.method public setPipelineDraweeControllerFactory(Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;)Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/DraweeConfig$Builder;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    return-object p0
.end method
