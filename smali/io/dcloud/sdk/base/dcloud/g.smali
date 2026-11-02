###### Class io.dcloud.sdk.base.dcloud.g (io.dcloud.sdk.base.dcloud.g)
.class public Lio/dcloud/sdk/base/dcloud/g;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field a:Lio/dcloud/p/n;

.field b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Z

.field f:Z

.field g:Z

.field h:Landroid/content/Context;

.field i:Landroid/content/BroadcastReceiver;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$J91LP-RVbK0nzP8OBhOo0T9hc44(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/g;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/view/ViewGroup;Lio/dcloud/p/n;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->a:Lio/dcloud/p/n;

    .line 4
    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/dcloud/sdk/base/dcloud/g;->e:Z

    .line 7
    iput-boolean v1, p0, Lio/dcloud/sdk/base/dcloud/g;->f:Z

    .line 8
    iput-boolean v1, p0, Lio/dcloud/sdk/base/dcloud/g;->g:Z

    .line 67
    new-instance v1, Lio/dcloud/sdk/base/dcloud/g$b;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/base/dcloud/g$b;-><init>(Lio/dcloud/sdk/base/dcloud/g;)V

    iput-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->i:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v1, Lio/dcloud/sdk/base/dcloud/g$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/base/dcloud/g$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/sdk/base/dcloud/g;)V

    iput-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->j:Ljava/lang/Runnable;

    .line 185
    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/g;->a:Lio/dcloud/p/n;

    .line 186
    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 187
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g;->h:Landroid/content/Context;

    .line 188
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lio/dcloud/base/R$layout;->dcloud_ad_main_container:I

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    .line 189
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    sget p3, Lio/dcloud/base/R$id;->ad_dcloud_main_skip:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    .line 191
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 192
    const-string p2, "SplashADViewWrapper"

    const-string p3, "use cache AdData"

    invoke-static {p2, p3}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void

    .line 195
    :cond_55
    const-string p2, "adh"

    const-string p3, "listenADReceive-----------------"

    invoke-static {p2, p3}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    new-instance p3, Lio/dcloud/sdk/base/dcloud/g$a;

    invoke-direct {p3, p0, p1}, Lio/dcloud/sdk/base/dcloud/g$a;-><init>(Lio/dcloud/sdk/base/dcloud/g;Landroid/content/Context;)V

    invoke-virtual {p2, p1, p3}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Landroid/content/Context;Lio/dcloud/p/s1;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 82
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->a:Lio/dcloud/p/n;

    invoke-interface {v0}, Lio/dcloud/p/n;->onFinishShow()V

    .line 83
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 84
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lio/dcloud/sdk/base/dcloud/g;->f:Z

    .line 87
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_32

    .line 88
    check-cast v0, Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_32

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_32
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lio/dcloud/sdk/base/dcloud/g;->e:Z

    .line 94
    iget-boolean v0, p0, Lio/dcloud/sdk/base/dcloud/g;->g:Z

    if-eqz v0, :cond_44

    .line 95
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->h:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_44
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    .line 6
    const-string v0, "ADReceive"

    const-string v1, "initAdMainView "

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget v0, Lio/dcloud/base/R$id;->ad_dcloud_main_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 8
    new-instance v0, Lio/dcloud/sdk/base/dcloud/g$c;

    invoke-direct {v0, p0, p1}, Lio/dcloud/sdk/base/dcloud/g$c;-><init>(Lio/dcloud/sdk/base/dcloud/g;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance v0, Lio/dcloud/sdk/base/dcloud/g$d;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/base/dcloud/g$d;-><init>(Lio/dcloud/sdk/base/dcloud/g;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_38

    .line 54
    new-instance v0, Lio/dcloud/sdk/base/dcloud/f;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v4, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v4, v1}, Lio/dcloud/sdk/base/dcloud/f;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    .line 55
    invoke-virtual {p2, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_60

    .line 56
    :cond_38
    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    .line 57
    new-array v1, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v4, "pl.droidsonroids.gif.GifImageView"

    invoke-static {v4, v1, v0}, Lio/dcloud/sdk/core/util/ReflectUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v1, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p2, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 70
    :cond_60
    :goto_60
    iget-boolean p2, p0, Lio/dcloud/sdk/base/dcloud/g;->e:Z

    if-eqz p2, :cond_69

    .line 71
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_69
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    new-instance v0, Lio/dcloud/sdk/base/dcloud/g$e;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/base/dcloud/g$e;-><init>(Lio/dcloud/sdk/base/dcloud/g;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    const-string v0, "adid"

    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->c(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g;->a:Lio/dcloud/p/n;

    invoke-interface {p1}, Lio/dcloud/p/n;->onShow()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/g;->c()V

    return-void
.end method

.method static synthetic b(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/g;->a()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/sdk/base/dcloud/g;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/base/dcloud/g;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c()V
    .registers 5

    .line 2
    iget-boolean v0, p0, Lio/dcloud/sdk/base/dcloud/g;->e:Z

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_14
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->h:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "ad_img_downlaod_receive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/dcloud/sdk/base/dcloud/g;->g:Z

    return-void
.end method

.method public b()V
    .registers 5

    .line 2
    const-string v0, "ADReceive"

    const-string v1, "onWillCloseSplash "

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/sdk/base/dcloud/g;->e:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_1c
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.g.a (io.dcloud.sdk.base.dcloud.g$a)
.class Lio/dcloud/sdk/base/dcloud/g$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/s1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/g;-><init>(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/view/ViewGroup;Lio/dcloud/p/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/g;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$a;->b:Lio/dcloud/sdk/base/dcloud/g;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/g$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string p1, "adh"

    const-string v0, "listenADReceive----------------onReceiver-"

    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$a;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-boolean v0, p1, Lio/dcloud/sdk/base/dcloud/g;->f:Z

    if-eqz v0, :cond_e

    return-void

    .line 5
    :cond_e
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/g;->h:Landroid/content/Context;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v1, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 6
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$a;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 7
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$a;->b:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->a(Lio/dcloud/sdk/base/dcloud/g;)V

    return-void

    .line 9
    :cond_27
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$a;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.g.b (io.dcloud.sdk.base.dcloud.g$b)
.class Lio/dcloud/sdk/base/dcloud/g$b;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-boolean v0, v0, Lio/dcloud/sdk/base/dcloud/g;->f:Z

    if-eqz v0, :cond_7

    goto :goto_5c

    .line 4
    :cond_7
    const-string v0, "src"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 6
    const-string v0, "downloadImage"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 8
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object p2, p2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 9
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 10
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->a(Lio/dcloud/sdk/base/dcloud/g;)V

    return-void

    .line 12
    :cond_51
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->b(Lio/dcloud/sdk/base/dcloud/g;)V

    return-void

    .line 15
    :cond_57
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$b;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->b(Lio/dcloud/sdk/base/dcloud/g;)V

    :cond_5c
    :goto_5c
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.g.c (io.dcloud.sdk.base.dcloud.g$c)
.class Lio/dcloud/sdk/base/dcloud/g$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/g;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "down_x"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "down_y"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up_x"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up_y"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "relative_down_x"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "relative_down_y"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "relative_up_x"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "relative_up_y"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dw"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->a:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/p/l;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dh"

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/g$c;->a:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/p/l;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_114
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v1, v1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$c;->b:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object v0, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    .line 17
    iput-object v0, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    .line 25
    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->a:Lio/dcloud/p/n;

    invoke-interface {p1}, Lio/dcloud/p/n;->onClicked()V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.g.d (io.dcloud.sdk.base.dcloud.g$d)
.class Lio/dcloud/sdk/base/dcloud/g$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$d;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_d

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$d;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Landroid/view/MotionEvent;

    goto :goto_1a

    .line 3
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 4
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$d;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/g;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/view/MotionEvent;

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.sdk.base.dcloud.g.e (io.dcloud.sdk.base.dcloud.g$e)
.class Lio/dcloud/sdk/base/dcloud/g$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/g;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$e;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$e;->a:Lio/dcloud/sdk/base/dcloud/g;

    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/g;->d:Landroid/view/View;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->c(Lio/dcloud/sdk/base/dcloud/g;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$e;->a:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/g;->b(Lio/dcloud/sdk/base/dcloud/g;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.g$$ExternalSyntheticLambda0 (io.dcloud.sdk.base.dcloud.g$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/sdk/base/dcloud/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/sdk/base/dcloud/g;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/sdk/base/dcloud/g;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/g$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/sdk/base/dcloud/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/g$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/sdk/base/dcloud/g;

    invoke-static {v0}, Lio/dcloud/sdk/base/dcloud/g;->$r8$lambda$J91LP-RVbK0nzP8OBhOo0T9hc44(Lio/dcloud/sdk/base/dcloud/g;)V

    return-void
.end method
