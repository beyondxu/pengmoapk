###### Class io.dcloud.feature.weex.adapter.Fresco.DCGenericDraweeHierarchyInflater (io.dcloud.feature.weex.adapter.Fresco.DCGenericDraweeHierarchyInflater)
.class public Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getRoundingParams(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    .line 4
    :cond_e
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method private static getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 3

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    packed-switch p0, :pswitch_data_2e

    .line 24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "XML attribute not specified!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :pswitch_10
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 26
    :pswitch_13
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 27
    :pswitch_16
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 28
    :pswitch_19
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 29
    :pswitch_1c
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 30
    :pswitch_1f
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 31
    :pswitch_22
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 32
    :pswitch_25
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 33
    :pswitch_28
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    :pswitch_2b
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .registers 4

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, "GenericDraweeHierarchyBuilder#inflateBuilder"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 4
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    new-instance v1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 6
    invoke-static {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;->updateBuilder(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_21
    return-object p0
.end method

.method public static inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;->inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->build()Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public static updateBuilder(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
