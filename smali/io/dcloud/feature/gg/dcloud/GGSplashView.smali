###### Class io.dcloud.feature.gg.dcloud.GGSplashView (io.dcloud.feature.gg.dcloud.GGSplashView)
.class public Lio/dcloud/feature/gg/dcloud/GGSplashView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/internal/splash/ISplash;


# instance fields
.field appid:Ljava/lang/String;

.field bottomIcon:Landroid/view/View;

.field container:Landroid/widget/FrameLayout;

.field handler:Landroid/os/Handler;

.field mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field private pullTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->handler:Landroid/os/Handler;

    .line 109
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "id"

    .line 1
    :try_start_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "ilWlkdg}lW{xdi{`"

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->getBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    const-string v2, "ilWlkdg}lW{xdi{`Wkgf|iafmz"

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    const-string v3, "ilWlkdg}lW{xdi{`Wjg||geWjiz"

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->bottomIcon:Landroid/view/View;

    .line 7
    const-string v1, "ilWlkdg}lWakgfW{afodm"

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_57} :catch_b2

    const-string v3, "ilWlkdg}lWfiem"

    const-string v4, "ilWlkdg}lWakgf"

    const/16 v5, 0x8

    if-nez v2, :cond_8d

    .line 9
    :try_start_5f
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 11
    invoke-static {p1}, Lio/dcloud/feature/gg/AolSplashUtil;->getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13
    invoke-static {p1}, Lio/dcloud/feature/gg/AolSplashUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8d
    const/4 v6, 0x0

    .line 15
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->dealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_b2} :catch_b2

    :catch_b2
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBgColor()I
    .registers 3

    .line 1
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    :cond_e
    return v1
.end method

.method public getBottomIcon()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->bottomIcon:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    const-string v0, "img"

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e

    :cond_23
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v2

    :goto_2e
    if-eqz v0, :cond_36

    .line 15
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_36
    return-object v2
.end method

.method public getImgContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onFinishShow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_d

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->appid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_14
    return-void
.end method

.method public onWillCloseSplash()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->onFinishShow()V

    :cond_b
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setPullTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->pullTime:J

    return-void
.end method

.method public showAd(Lio/dcloud/p/u;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lio/dcloud/p/u;->a(Landroid/view/ViewGroup;)V

    return-void

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->handler:Landroid/os/Handler;

    new-instance v1, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;-><init>(Lio/dcloud/feature/gg/dcloud/GGSplashView;Lio/dcloud/p/u;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.GGSplashView.AnonymousClass1 (io.dcloud.feature.gg.dcloud.GGSplashView$1)
.class Lio/dcloud/feature/gg/dcloud/GGSplashView$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/GGSplashView;->showAd(Lio/dcloud/p/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/GGSplashView;

.field final synthetic val$wrapper:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/GGSplashView;Lio/dcloud/p/u;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->this$0:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->val$wrapper:Lio/dcloud/p/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->this$0:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->val$wrapper:Lio/dcloud/p/u;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->this$0:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    iget-object v1, v1, Lio/dcloud/feature/gg/dcloud/GGSplashView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lio/dcloud/p/u;->a(Landroid/view/ViewGroup;)V

    return-void

    .line 4
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/GGSplashView$1;->this$0:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/GGSplashView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
