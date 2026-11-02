###### Class com.taobao.weex.ui.component.WXImage (com.taobao.weex.ui.component.WXImage)
.class public Lcom/taobao/weex/ui/component/WXImage;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXImage$MyImageListener;,
        Lcom/taobao/weex/ui/component/WXImage$Measurable;,
        Lcom/taobao/weex/ui/component/WXImage$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field private static BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERRORDESC:Ljava/lang/String; = "errorDesc"

.field public static final SUCCEED:Ljava/lang/String; = "success"

.field private static final WRITE_EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2


# instance fields
.field private mAutoRecycle:Z

.field private mBlurRadius:I

.field private mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

.field protected mIsUni:Z

.field private mSrc:Ljava/lang/String;

.field private preImgUrlStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/WXImage$1;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXImage$1;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mIsUni:Z

    .line 399
    const-string p1, ""

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->monitorImgSize(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private monitorImgSize(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_8

    goto/16 :goto_e5

    .line 1
    :cond_8
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-nez v2, :cond_10

    goto/16 :goto_e5

    .line 5
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v3, :cond_e5

    if-nez v4, :cond_1e

    goto/16 :goto_e5

    .line 10
    :cond_1e
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 11
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 12
    iget-object v5, v0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    .line 13
    iput-object v1, v0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    const/16 v5, 0x439

    const-string v6, "details"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-le v3, v5, :cond_6d

    const/16 v5, 0x2d1

    if-le v4, v5, :cond_6d

    .line 15
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v5

    const-string/jumbo v9, "wxLargeImgMaxCount"

    invoke-virtual {v5, v9, v7, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 16
    sget-boolean v5, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v5, :cond_6d

    .line 17
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v6, v9, v10}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6d
    mul-int v5, v3, v4

    int-to-long v9, v5

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    mul-int v5, v5, v11

    int-to-long v11, v5

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-nez v5, :cond_82

    goto :goto_e5

    :cond_82
    long-to-double v13, v9

    move-wide v15, v7

    long-to-double v7, v11

    div-double/2addr v13, v7

    const-wide v7, 0x3ff3333333333333L    # 1.2

    cmpl-double v5, v13, v7

    if-lez v5, :cond_e5

    sub-long/2addr v9, v11

    const-wide/16 v7, 0x640

    cmp-long v5, v9, v7

    if-lez v5, :cond_e5

    .line 30
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v5

    iget-wide v7, v5, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    add-double/2addr v7, v15

    iput-wide v7, v5, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    .line 31
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-string/jumbo v5, "wxWrongImgSizeCount"

    move-wide v7, v15

    invoke-virtual {v2, v5, v7, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 33
    sget-boolean v2, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v2, :cond_e5

    .line 34
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const/4 v3, 0x2

    aput-object v7, v9, v3

    const/4 v3, 0x3

    aput-object v8, v9, v3

    const/4 v3, 0x4

    aput-object v1, v9, v3

    const-string v1, "imgSize:[%d,%d],viewSize:[%d,%d],urL:%s"

    invoke-static {v1, v9}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v2, v6, v5, v1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method private parseBlurRadius(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    new-instance v1, Lcom/taobao/weex/utils/SingleFunctionParser;

    sget-object v2, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-direct {v1, p1, v2}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    .line 4
    :try_start_b
    const-string p1, "blur"

    invoke-virtual {v1, p1}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_25

    if-eqz p1, :cond_25

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_25

    .line 11
    :cond_1a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catch_25
    :cond_25
    :goto_25
    return v0
.end method

.method private runSrc(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_7a

    .line 5
    :cond_d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;->fetchLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    move-object p1, v0

    .line 12
    :cond_2a
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_7a

    .line 16
    :cond_31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_4b
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 34
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setLocalSrc(Landroid/net/Uri;)V

    return-void

    .line 37
    :cond_6b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getBlur()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private setBlurRadius(Ljava/lang/String;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    if-eq p2, v0, :cond_27

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    :cond_27
    return-void
.end method

.method private setLocalSrc(Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/ImgURIUtil;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method

.method private setRemoteSrc(Landroid/net/Uri;I)V
    .registers 8

    .line 1
    new-instance v0, Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXImageStrategy;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->isClipping:Z

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->isSharpen:Z

    .line 7
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->blurRadius:I

    .line 8
    iput p2, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;

    invoke-direct {p2, p0, p0, p1}, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;-><init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/ui/component/WXImage;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/taobao/weex/common/WXImageStrategy;->setImageListener(Lcom/taobao/weex/common/WXImageStrategy$ImageListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v1, "autoCompression"

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/taobao/weex/common/WXImageStrategy;->setAutoCompression(Z)V

    .line 16
    :cond_52
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v1, "placeholder"

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_81

    .line 18
    :cond_69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v1, "placeHolder"

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_81

    :cond_80
    const/4 p2, 0x0

    :goto_81
    if-eqz p2, :cond_97

    .line 22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "image"

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    .line 25
    :cond_97
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/weex/common/WXImageStrategy;->instanceId:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXImage;->setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void
.end method

.method private updateBorderRadius()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v0, :cond_65

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXImageView;

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 6
    new-instance v3, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v4

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v1

    goto :goto_47

    :cond_2b
    const/16 v1, 0x8

    .line 9
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 11
    :goto_47
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXImageView;->setBorderRadius([F)V

    .line 13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/utils/ImageDrawable;

    if-eqz v2, :cond_65

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/ImageDrawable;

    .line 15
    invoke-virtual {v0}, Lcom/taobao/weex/utils/ImageDrawable;->getCornerRadii()[F

    move-result-object v2

    .line 16
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_65

    .line 17
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/ImageDrawable;->setCornerRadii([F)V

    :cond_65
    return-void
.end method


# virtual methods
.method public autoRecoverImage()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public autoReleaseImage()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_2a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    :cond_2a
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 6
    :cond_2e
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    return-void
.end method

.method protected getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v0

    return-object v0
.end method

.method protected getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .registers 4

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1c

    .line 6
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "cover"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "contain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    :goto_1c
    return-object v0

    .line 11
    :cond_1d
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p1

    .line 12
    :cond_20
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 3

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXImageView;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXImageView;->holdComponent(Lcom/taobao/weex/ui/component/WXImage;)V

    return-object v0
.end method

.method protected onFinishLayout()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    return-void
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .registers 3

    return-void
.end method

.method public recycled()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void

    .line 6
    :cond_2a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_36

    .line 9
    const-string v0, "Error getImgLoaderAdapter() == null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_36
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v1, "getImgLoaderAdapter() == null"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getImageSrc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public save(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 8
    :cond_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorDesc"

    const-string/jumbo v2, "success"

    if-eqz v0, :cond_46

    if-eqz p1, :cond_8f

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v2, "Permission denied: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_5f

    if-eqz p1, :cond_8f

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "Image component not initialized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_5f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    if-eqz v0, :cond_7b

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_7b

    .line 38
    :cond_6c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v1, Lcom/taobao/weex/ui/component/WXImage$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXImage$2;-><init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V

    const/4 p1, 0x0

    const v2, -0x70708

    invoke-static {v0, p1, v2, v1}, Lcom/taobao/weex/utils/WXViewToImageUtil;->generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V

    return-void

    :cond_7b
    :goto_7b
    if-eqz p1, :cond_8f

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "Image does not have the correct src"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_8f
    return-void
.end method

.method protected setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v2

    .line 5
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    :cond_17
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_bc

    goto :goto_52

    :sswitch_11
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_52

    :cond_1a
    const/4 v3, 0x5

    goto :goto_52

    :sswitch_1c
    const-string v0, "imageQuality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_52

    :cond_25
    const/4 v3, 0x4

    goto :goto_52

    :sswitch_27
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_52

    :cond_30
    const/4 v3, 0x3

    goto :goto_52

    :sswitch_32
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_52

    :cond_3b
    const/4 v3, 0x2

    goto :goto_52

    :sswitch_3d
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_52

    :cond_46
    const/4 v3, 0x1

    goto :goto_52

    :sswitch_48
    const-string v0, "autoBitmapRecycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_d6

    .line 32
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :pswitch_5b
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 34
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResizeMode(Ljava/lang/String;)V

    :cond_64
    :pswitch_64
    return v2

    .line 41
    :pswitch_65
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 42
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_6e
    return v2

    .line 43
    :pswitch_6f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 44
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResize(Ljava/lang/String;)V

    :cond_78
    return v2

    :pswitch_79
    if-eqz p2, :cond_85

    .line 60
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_85

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v1

    .line 63
    :cond_85
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 64
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/component/WXImage;->setBlurRadius(Ljava/lang/String;I)V

    :cond_92
    return v2

    .line 65
    :pswitch_93
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-nez p1, :cond_bb

    .line 66
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p2, "wxImgUnRecycleCount"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_bb
    return v2

    :sswitch_data_bc
    .sparse-switch
        -0x4ca1830b -> :sswitch_48
        -0x4bf73488 -> :sswitch_3d
        -0x37b2634c -> :sswitch_32
        0x1bde4 -> :sswitch_27
        0x4a798324 -> :sswitch_1c
        0x7a2cd077 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_79
        :pswitch_6f
        :pswitch_65
        :pswitch_64
        :pswitch_5b
    .end packed-switch
.end method

.method public setResize(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resize"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResizeMode(Ljava/lang/String;)V

    return-void
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resizeMode"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->runSrc(Ljava/lang/String;)V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXImage.AnonymousClass1 (com.taobao.weex.ui.component.WXImage$1)
.class Lcom/taobao/weex/ui/component/WXImage$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage$1;->map(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.WXImage.AnonymousClass2 (com.taobao.weex.ui.component.WXImage$2)
.class Lcom/taobao/weex/ui/component/WXImage$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXImage;->save(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;

.field final synthetic val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailed(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v2, "success"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "errorDesc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public onSaveSucceed(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_16

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "success"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXImage.Creator (com.taobao.weex.ui.component.WXImage$Creator)
.class public Lcom/taobao/weex/ui/component/WXImage$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/WXImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXImage.Measurable (com.taobao.weex.ui.component.WXImage$Measurable)
.class public interface abstract Lcom/taobao/weex/ui/component/WXImage$Measurable;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Measurable"
.end annotation


# virtual methods
.method public abstract getNaturalHeight()I
.end method

.method public abstract getNaturalWidth()I
.end method

###### Class com.taobao.weex.ui.component.WXImage.MyImageListener (com.taobao.weex.ui.component.WXImage$MyImageListener)
.class public Lcom/taobao/weex/ui/component/WXImage$MyImageListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/WXImageStrategy$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyImageListener"
.end annotation


# instance fields
.field private rewritedStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;

.field private wxImageWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/ui/component/WXImage;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->wxImageWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->rewritedStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->wxImageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXImage;

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string v0, "error"

    const-string/jumbo v1, "success"

    if-nez p4, :cond_20

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 13
    :cond_20
    invoke-virtual {p1, p3, p4}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    .line 15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    const-string/jumbo v4, "width"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v4, "height"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    iget-boolean p4, p4, Lcom/taobao/weex/ui/component/WXImage;->mIsUni:Z

    const-string v4, "detail"

    const-string v5, "load"

    if-eqz p4, :cond_77

    if-nez p3, :cond_60

    .line 20
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_60

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1, v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_60
    const/4 p4, 0x1

    if-ne p3, p4, :cond_8a

    .line 25
    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8a

    .line 26
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1, v5, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8a

    .line 31
    :cond_77
    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8a

    .line 32
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1, v5, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    :cond_8a
    :goto_8a
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->rewritedStr:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;->access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
