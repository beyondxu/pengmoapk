###### Class io.dcloud.p.k4 (io.dcloud.p.k4)
.class public Lio/dcloud/p/k4;
.super Lio/dcloud/p/y4;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/k4$b;
    }
.end annotation


# instance fields
.field private C:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

.field private final D:Ljava/util/Queue;


# direct methods
.method public static synthetic $r8$lambda$rtZkkJW9M-C8njDlcihs8C3fQdk(Lio/dcloud/p/k4;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/dcloud/p/k4;->a(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/y4;-><init>(Landroid/app/Activity;I)V

    .line 115
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k4;->D:Ljava/util/Queue;

    .line 116
    new-instance p1, Lio/dcloud/p/k4$b;

    invoke-direct {p1, p0}, Lio/dcloud/p/k4$b;-><init>(Lio/dcloud/p/k4;)V

    invoke-virtual {p0, p1}, Lio/dcloud/p/i4;->a(Lio/dcloud/p/b0$a;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 9
    iget-object v0, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    instance-of v1, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$SplashAOLLoadListener;

    if-eqz v1, :cond_b

    .line 10
    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$SplashAOLLoadListener;

    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/interfaces/AOLLoader$SplashAOLLoadListener;->redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_b
    return-void
.end method

.method static synthetic a(Lio/dcloud/p/k4;ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/i4;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/k4;Lorg/json/JSONObject;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/i4;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/p/k4;)Ljava/util/Queue;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/k4;->D:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/p/k4;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/k4;->s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/p/k4;)Lio/dcloud/p/w2;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/p/k4;)Lio/dcloud/p/w2;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lio/dcloud/p/k4;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    const-string v1, "dcloud"

    invoke-virtual {v0, v1}, Lio/dcloud/p/e;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/i4;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-interface {v0, v1, v2}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getAd(Landroid/app/Activity;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/p/k4;->D:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .registers 3

    .line 12
    invoke-super {p0, p1, p2}, Lio/dcloud/p/w;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    instance-of v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    if-eqz v1, :cond_b

    .line 5
    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->showIn(Landroid/view/ViewGroup;)V

    :cond_b
    return-void
.end method

.method protected a(Lio/dcloud/p/t0;)V
    .registers 2

    .line 11
    invoke-super {p0, p1}, Lio/dcloud/p/y4;->a(Lio/dcloud/p/t0;)V

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/p/w2;)V
    .registers 5

    .line 6
    iput-object p1, p0, Lio/dcloud/p/k4;->C:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    .line 7
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->height(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->width(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object p1

    .line 8
    invoke-super {p0, p1, p2}, Lio/dcloud/p/y4;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/w2;)V

    return-void
.end method

.method protected b(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 5
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/k4;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_27

    .line 2
    :cond_3
    const-string v0, "src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 4
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/k4$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/k4$a;-><init>(Lio/dcloud/p/k4;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_27
    :goto_27
    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/p/k4;->D:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-direct {p0}, Lio/dcloud/p/k4;->s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v0

    return-object v0

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/p/k4;->D:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    return-object v0
.end method

.method public t()Lio/dcloud/sdk/core/entry/SplashAOLConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/k4;->C:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    return-object v0
.end method

###### Class io.dcloud.p.k4.a (io.dcloud.p.k4$a)
.class Lio/dcloud/p/k4$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/k4;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lio/dcloud/p/k4;


# direct methods
.method public static synthetic $r8$lambda$VgZTVYZl1D27s9wwdX_ztJYIIqQ(Lio/dcloud/p/k4$a;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/k4$a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wc7NCYOcnSYTRNwmSlKN9Oe7wac(Lio/dcloud/p/k4$a;Landroid/widget/RelativeLayout;Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/k4$a;->a(Landroid/widget/RelativeLayout;Lorg/json/JSONObject;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/p/k4;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    iput-object p2, p0, Lio/dcloud/p/k4$a;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/widget/RelativeLayout;Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 6

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    :cond_f
    const-string p1, "click_action"

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string p3, "browser"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "url"

    if-eqz p3, :cond_2f

    .line 65
    iget-object p1, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {p1}, Lio/dcloud/p/k4;->n(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/p/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42

    .line 66
    :cond_2f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 67
    iget-object p1, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {p1}, Lio/dcloud/p/k4;->o(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/p/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_42
    :goto_42
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/p/k4$a;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 11

    .line 73
    iget-object v0, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v0}, Lio/dcloud/p/k4;->c(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v1

    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const-string v6, ""

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 13

    .line 1
    iget-object p2, p0, Lio/dcloud/p/k4$a;->a:Lorg/json/JSONObject;

    const-string v0, "pos"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_b

    return-void

    .line 4
    :cond_b
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->a(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v2}, Lio/dcloud/p/k4;->b(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v2, "width"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v4}, Lio/dcloud/p/k4;->h(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v4}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 7
    const-string v4, "height"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v5}, Lio/dcloud/p/k4;->i(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    .line 8
    const-string v5, "left"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v7}, Lio/dcloud/p/k4;->j(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v7}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    .line 9
    const-string v7, "right"

    invoke-virtual {p2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v8}, Lio/dcloud/p/k4;->k(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v7, v8}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v7

    .line 10
    const-string v8, "top"

    invoke-virtual {p2, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v9}, Lio/dcloud/p/k4;->l(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v8, v9}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v8

    .line 11
    const-string v9, "bottom"

    invoke-virtual {p2, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    iget-object v6, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-static {v6}, Lio/dcloud/p/k4;->m(Lio/dcloud/p/k4;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {p2, v6}, Lio/dcloud/sdk/core/util/AdSizeUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p2

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-ltz v7, :cond_d3

    .line 19
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_d7

    :cond_d3
    if-ltz v5, :cond_d7

    .line 21
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_d7
    :goto_d7
    if-ltz p2, :cond_dc

    .line 24
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e0

    :cond_dc
    if-ltz v8, :cond_e0

    .line 26
    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_e0
    :goto_e0
    if-ltz v5, :cond_f0

    if-ltz v8, :cond_e9

    const v2, 0x800033

    .line 30
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_e9
    if-ltz p2, :cond_f0

    const v2, 0x800053

    .line 33
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_f0
    if-ltz v7, :cond_100

    if-ltz v8, :cond_f9

    const v2, 0x800035

    .line 38
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_f9
    if-ltz p2, :cond_100

    const p2, 0x800055

    .line 41
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    :cond_100
    iget-object p2, p0, Lio/dcloud/p/k4$a;->a:Lorg/json/JSONObject;

    new-instance v2, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/k4$a;Landroid/widget/RelativeLayout;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p2, p0, Lio/dcloud/p/k4$a;->b:Lio/dcloud/p/k4;

    invoke-virtual {p2, v0, p1}, Lio/dcloud/p/k4;->b(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/k4$a;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

###### Class io.dcloud.p.k4$a$$ExternalSyntheticLambda0 (io.dcloud.p.k4$a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/k4$a;

.field public final synthetic f$1:Landroid/widget/RelativeLayout;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/k4$a;Landroid/widget/RelativeLayout;Lorg/json/JSONObject;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k4$a;

    iput-object p2, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k4$a;

    iget-object v1, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, p1}, Lio/dcloud/p/k4$a;->$r8$lambda$wc7NCYOcnSYTRNwmSlKN9Oe7wac(Lio/dcloud/p/k4$a;Landroid/widget/RelativeLayout;Lorg/json/JSONObject;Landroid/view/View;)V

    return-void
.end method

###### Class io.dcloud.p.k4$a$$ExternalSyntheticLambda1 (io.dcloud.p.k4$a$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/k4$a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/k4$a;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/k4$a;

    iput-object p2, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/k4$a;

    iget-object v1, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/dcloud/p/k4$a$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/p/k4$a;->$r8$lambda$VgZTVYZl1D27s9wwdX_ztJYIIqQ(Lio/dcloud/p/k4$a;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.k4.b (io.dcloud.p.k4$b)
.class public Lio/dcloud/p/k4$b;
.super Lio/dcloud/p/b0$b;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/k4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lio/dcloud/p/k4;


# direct methods
.method public constructor <init>(Lio/dcloud/p/k4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    .line 2
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/dcloud/p/b0$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .line 51
    invoke-super {p0, p1, p2}, Lio/dcloud/p/b0$b;->a(ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v0, p1, p2}, Lio/dcloud/p/k4;->a(Lio/dcloud/p/k4;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .registers 9

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_ac

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_ac

    .line 6
    :cond_c
    iget-object v1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->d(Lio/dcloud/p/k4;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_81

    .line 8
    iget-object v1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->d(Lio/dcloud/p/k4;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v2, :cond_47

    .line 10
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 12
    check-cast v3, Lio/dcloud/p/u0;

    invoke-virtual {v3, v4, v0}, Lio/dcloud/p/u0;->a(Lorg/json/JSONArray;Z)V

    goto :goto_4c

    .line 14
    :cond_47
    check-cast v3, Lio/dcloud/p/u0;

    invoke-virtual {v3, p2, v0}, Lio/dcloud/p/u0;->a(Lorg/json/JSONArray;Z)V

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 19
    :cond_4f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-le p2, v2, :cond_c8

    move p2, v2

    .line 20
    :goto_56
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_c8

    .line 21
    iget-object v1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->e(Lio/dcloud/p/k4;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v1

    check-cast v1, Lio/dcloud/p/u0;

    if-eqz v1, :cond_7e

    .line 23
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 24
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    invoke-virtual {v1, v3, v0}, Lio/dcloud/p/u0;->a(Lorg/json/JSONArray;Z)V

    .line 26
    iget-object v3, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v3}, Lio/dcloud/p/k4;->d(Lio/dcloud/p/k4;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 p2, p2, 0x1

    goto :goto_56

    .line 31
    :cond_81
    :goto_81
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_c8

    .line 32
    iget-object p2, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {p2}, Lio/dcloud/p/k4;->e(Lio/dcloud/p/k4;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p2

    check-cast p2, Lio/dcloud/p/u0;

    if-eqz p2, :cond_a9

    .line 34
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 35
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    invoke-virtual {p2, v1, v0}, Lio/dcloud/p/u0;->a(Lorg/json/JSONArray;Z)V

    .line 37
    iget-object v1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->d(Lio/dcloud/p/k4;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 38
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {p1}, Lio/dcloud/p/k4;->d(Lio/dcloud/p/k4;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 39
    check-cast v1, Lio/dcloud/p/u0;

    invoke-virtual {v1, p2, v0}, Lio/dcloud/p/u0;->a(Lorg/json/JSONArray;Z)V

    goto :goto_b6

    :cond_c8
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 9

    .line 41
    invoke-super {p0, p1}, Lio/dcloud/p/b0$b;->a(Lorg/json/JSONObject;)V

    .line 44
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "cfgs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v1}, Lio/dcloud/p/k4;->f(Lio/dcloud/p/k4;)Lio/dcloud/p/w2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getConfig"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v2}, Lio/dcloud/p/k4;->g(Lio/dcloud/p/k4;)Lio/dcloud/p/w2;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_36} :catch_36

    .line 50
    :catch_36
    iget-object v0, p0, Lio/dcloud/p/k4$b;->c:Lio/dcloud/p/k4;

    invoke-static {v0, p1}, Lio/dcloud/p/k4;->a(Lio/dcloud/p/k4;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.p.k4$$ExternalSyntheticLambda0 (io.dcloud.p.k4$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/k4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/k4;

.field public final synthetic f$1:Landroid/widget/RelativeLayout;

.field public final synthetic f$2:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/k4;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k4;

    iput-object p2, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k4;

    iget-object v1, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/p/k4$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, v2}, Lio/dcloud/p/k4;->$r8$lambda$rtZkkJW9M-C8njDlcihs8C3fQdk(Lio/dcloud/p/k4;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method
