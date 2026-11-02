###### Class com.facebook.drawee.view.SimpleDraweeView (com.facebook.drawee.view.SimpleDraweeView)
.class public Lcom/facebook/drawee/view/SimpleDraweeView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "SimpleDraweeView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    const-string v0, "SimpleDraweeView#init"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 87
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 88
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 89
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_33

    .line 91
    :cond_22
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    const-string v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iput-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    :goto_33
    if-eqz p2, :cond_79

    .line 97
    sget-object v0, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_83

    .line 99
    :try_start_3b
    sget p2, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView_actualImageUri:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 100
    sget p2, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView_actualImageUri:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    goto :goto_70

    .line 102
    :cond_52
    sget p2, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView_actualImageResource:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 103
    sget p2, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView_actualImageResource:I

    const/4 v0, -0x1

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_70

    .line 106
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 107
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_70

    .line 109
    :cond_6d
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setActualImageResource(I)V
    :try_end_70
    .catchall {:try_start_3b .. :try_end_70} :catchall_74

    .line 114
    :cond_70
    :goto_70
    :try_start_70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_79

    :catchall_74
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    throw p2
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_83

    .line 118
    :cond_79
    :goto_79
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 119
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_82
    return-void

    :catchall_83
    move-exception p1

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 119
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 121
    :cond_8d
    throw p1
.end method

.method public static initialize(Lcom/facebook/common/internal/Supplier;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;)V"
        }
    .end annotation

    .line 46
    sput-object p0, Lcom/facebook/drawee/view/SimpleDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public static shutDown()V
    .registers 1

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public getControllerBuilder()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-object v0
.end method

.method public setActualImageResource(I)V
    .registers 3

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setActualImageResource(ILjava/lang/Object;)V

    return-void
.end method

.method public setActualImageResource(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    invoke-static {p1}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 136
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 225
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 167
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 169
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    .line 170
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;->build()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    .line 183
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 184
    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method
