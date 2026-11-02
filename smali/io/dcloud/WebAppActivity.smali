###### Class io.dcloud.WebAppActivity (io.dcloud.WebAppActivity)
.class public Lio/dcloud/WebAppActivity;
.super Lio/dcloud/a;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/WebAppActivity$f;,
        Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;,
        Lio/dcloud/WebAppActivity$g;
    }
.end annotation


# static fields
.field public static final ONE_SECOND:J = 0x3e8L

.field public static final SPLASH_SECOND:J = 0x1388L


# instance fields
.field A:Landroid/view/View;

.field B:Z

.field C:Z

.field D:Landroid/widget/FrameLayout;

.field E:Landroid/widget/LinearLayout;

.field F:Landroid/widget/FrameLayout;

.field G:Lio/dcloud/common/DHInterface/ICallBack;

.field protected mSplashShowing:Z

.field protected mSplashView:Landroid/view/View;

.field private o:Landroid/app/AlertDialog;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private final r:Ljava/lang/String;

.field s:Landroid/content/BroadcastReceiver;

.field private t:Lio/dcloud/WebAppActivity$f;

.field private u:Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;

.field private v:Landroid/content/Context;

.field w:Landroid/graphics/Bitmap;

.field x:J

.field private y:Ljava/util/ArrayList;

.field z:Z


# direct methods
.method public static synthetic $r8$lambda$fjOBWh2XKB6D0wan62JkiN-0tIM(Lio/dcloud/WebAppActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->o()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/dcloud/a;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->q:Landroid/os/Handler;

    .line 15
    const-string v0, "remove-app_action"

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->r:Ljava/lang/String;

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 219
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const-wide/16 v1, 0x0

    .line 221
    iput-wide v1, p0, Lio/dcloud/WebAppActivity;->x:J

    const/4 v1, 0x0

    .line 319
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->z:Z

    .line 320
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    .line 321
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->B:Z

    const/4 v1, 0x1

    .line 653
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->C:Z

    .line 659
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    .line 660
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->E:Landroid/widget/LinearLayout;

    .line 764
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->F:Landroid/widget/FrameLayout;

    .line 776
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_94

    const-string v2, "Main_Path"

    const-string/jumbo v3, "use splashPath="

    if-nez v1, :cond_46

    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->C:Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_94

    .line 9
    :try_start_2f
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_94

    goto :goto_37

    :catch_33
    move-exception v1

    .line 11
    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    if-nez v0, :cond_6d

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6d

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    :cond_6d
    if-nez v0, :cond_98

    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_98

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_98
    :goto_98
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 10

    .line 182
    const-string v0, "DCLOUD_STREAMAPP_CHANNEL"

    invoke-direct {p0, v0}, Lio/dcloud/WebAppActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_23

    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_23

    .line 186
    const-string/jumbo p3, "string"

    const-string p4, "app_name"

    invoke-static {p1, p3, p4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    goto :goto_24

    :cond_23
    const/4 p4, 0x0

    .line 188
    :goto_24
    const-string v3, "_12214060304"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 p4, 0x3

    .line 189
    new-array v0, p4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p2, p4, v1

    aput-object p3, p4, v4

    const-string p1, "io.dcloud.html5pframework.splash.SplashView4Yunos"

    invoke-static {p1, v0, p4}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 191
    :cond_4d
    new-instance v0, Lio/dcloud/feature/internal/splash/SplashViewDBackground;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/dcloud/feature/internal/splash/SplashViewDBackground;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 26
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 27
    const-string v3, "appid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebAppActivity.onCreateSplash().appid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " this.appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/dcloud/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "splash"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "WebAppActivity.onCreateSplash().mSplashView is Null ="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_44

    const/4 v6, 0x1

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    :goto_45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v4, :cond_75

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 31
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 32
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    goto :goto_75

    :cond_74
    return-object v6

    .line 37
    :cond_75
    :goto_75
    iput-boolean v8, v1, Lio/dcloud/WebAppActivity;->C:Z

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "onCreateSplash;intent="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "WebAppActivity"

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v4, "__start_first_web__"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 40
    const-string v10, "direct_page"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a0

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a0

    const/4 v10, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v10, 0x0

    :goto_a1
    if-eqz v4, :cond_a6

    if-nez v10, :cond_a6

    return-object v6

    .line 44
    :cond_a6
    const-string v4, "__splash_view__"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_af

    return-object v6

    .line 48
    :cond_af
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onCreateSplash hasSplash="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, "__plugin_auto_hide__"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c9

    return-object v6

    .line 54
    :cond_c9
    const-string v4, "__splash_mode__"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, ""

    const-string v12, "auto"

    if-eqz v11, :cond_f0

    .line 56
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f0

    .line 57
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f1

    const-string v13, "default"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f1

    :cond_f0
    move-object v11, v12

    .line 60
    :cond_f1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onCreateSplash __splash_mode__="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v9, "hide_stream_splash"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 62
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v6}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lio/dcloud/WebAppActivity;->x:J

    .line 64
    iput-boolean v8, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    return-object v6

    .line 66
    :cond_11b
    const-string v9, "has_stream_splash"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "icon"

    const-string v13, "__name__"

    const-string v14, "splash/"

    const-string v15, "app_splash_path"

    const-string v8, "splash_temp/"

    const-string v6, "app_icon"

    move/from16 v17, v7

    const-string v7, "drawable"

    move/from16 v18, v10

    const-string v10, ".png"

    if-eqz v17, :cond_1ff

    .line 67
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_1e3

    .line 68
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_191

    if-nez v18, :cond_179

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-direct {v1, v4, v8, v5}, Lio/dcloud/WebAppActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 76
    :cond_179
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_191

    .line 77
    new-instance v4, Lio/dcloud/common/DHInterface/SplashView;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v8, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v8}, Lio/dcloud/common/DHInterface/SplashView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 78
    iget-boolean v5, v1, Lio/dcloud/WebAppActivity;->C:Z

    if-nez v5, :cond_191

    .line 79
    sget v5, Lio/dcloud/common/DHInterface/SplashView;->STYLE_BLACK:I

    invoke-virtual {v4, v5}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting(I)V

    .line 83
    :cond_191
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_1e3

    .line 84
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b0

    .line 86
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 88
    :cond_1b0
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v4, v2, v3}, Lio/dcloud/WebAppActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 89
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1e3

    .line 90
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 91
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_1e3

    instance-of v2, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v2, :cond_1e3

    .line 92
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v9}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/feature/internal/splash/ISplash;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    :cond_1e3
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lio/dcloud/WebAppActivity;->x:J

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    .line 102
    const-string v0, "IAN"

    const-string v3, "onCreateSplash aliyun ended"

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1ff
    move-object/from16 v17, v9

    .line 104
    iget-object v9, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v9, :cond_32a

    .line 107
    :try_start_205
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b2

    if-nez v18, :cond_243

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-direct {v1, v8, v9, v10}, Lio/dcloud/WebAppActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 115
    :cond_243
    iget-object v8, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-nez v8, :cond_29a

    .line 116
    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "pdr"

    invoke-static {v8, v9}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 117
    const-string/jumbo v9, "update_splash_img_path"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_25c} :catch_323

    if-nez v8, :cond_284

    .line 120
    :try_start_25e
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26b

    .line 121
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    goto :goto_284

    .line 123
    :cond_26b
    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 124
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 125
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_280} :catch_281

    goto :goto_284

    :catch_281
    const/4 v4, 0x0

    .line 128
    :try_start_282
    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 131
    :cond_284
    :goto_284
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-nez v4, :cond_29a

    iget-boolean v4, v1, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v4, :cond_29a

    .line 132
    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0, v7, v5}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 135
    :cond_29a
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2b2

    .line 136
    new-instance v4, Lio/dcloud/common/DHInterface/SplashView;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v8, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v8}, Lio/dcloud/common/DHInterface/SplashView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 137
    iget-boolean v5, v1, Lio/dcloud/WebAppActivity;->C:Z

    if-nez v5, :cond_2b2

    .line 138
    sget v5, Lio/dcloud/common/DHInterface/SplashView;->STYLE_BLACK:I

    invoke-virtual {v4, v5}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting(I)V

    .line 142
    :cond_2b2
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_30e

    .line 143
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2d1

    .line 145
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    .line 147
    :cond_2d1
    const-string v4, "Main_Path"

    const-string/jumbo v5, "use defaultSplash"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v4, v2, v3}, Lio/dcloud/WebAppActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 149
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_30e

    .line 150
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30e

    .line 151
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_30e

    instance-of v2, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v2, :cond_30e

    .line 152
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, v17

    invoke-static {v4, v7, v5}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/feature/internal/splash/ISplash;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_30e
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lio/dcloud/WebAppActivity;->x:J

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z
    :try_end_322
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_322} :catch_323

    goto :goto_327

    :catch_323
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_327
    const/16 v16, 0x0

    return-object v16

    :cond_32a
    const/16 v16, 0x0

    return-object v16
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 163
    invoke-static {}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->isPlugin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 168
    :cond_8
    :try_start_8
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 170
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_34

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    if-eqz v0, :cond_33

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    return-object v1

    :catch_34
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method static synthetic a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/WebAppActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_APP_DOWNLOAD_ERROR_DIALOG_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    const-string p2, "appid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static deviceInjectionGeoLocationJs(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkDeviceHtml5Geo()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lio/dcloud/common/util/BaseInfo;->injectionGeolocationJS:Z

    return-void
.end method

.method private k()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    const-string v2, "__plugin_auto_hide__"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 3
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkAutoHide "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebAppActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_57

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v3, "__plugin_auto_hide_show_pname__"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    const-string v6, "__plugin_auto_hide_show_activity__"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    .line 8
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v2, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkAutoHide return mini package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method private l()Ljava/lang/String;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    const-string v1, "is_stream_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v1, :cond_16

    .line 5
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private n()V
    .registers 7

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "com.huawei.intent.action.CLICK_STATUSBAR"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->s:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1c

    .line 5
    new-instance v0, Lio/dcloud/WebAppActivity$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$a;-><init>(Lio/dcloud/WebAppActivity;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->s:Landroid/content/BroadcastReceiver;

    .line 36
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2d

    .line 37
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->s:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v3, "huawei.permission.CLICK_STATUSBAR_BROADCAST"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    :cond_2d
    move-object v0, p0

    .line 39
    iget-object v1, v0, Lio/dcloud/WebAppActivity;->s:Landroid/content/BroadcastReceiver;

    const-string v3, "huawei.permission.CLICK_STATUSBAR_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic o()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_43

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_43

    .line 2
    :cond_16
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 3
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_43
    return-void
.end method


# virtual methods
.method public addClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method protected addViewToContentView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_53

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_52

    .line 5
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_4f

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "AppRootView"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 8
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 9
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_33
    if-nez v1, :cond_4f

    .line 12
    iget-object v3, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-ne v2, v3, :cond_40

    .line 13
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4f

    :cond_40
    if-lez v0, :cond_4a

    .line 16
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4f

    .line 18
    :cond_4a
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_52
    return-void

    .line 25
    :cond_53
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity;->v:Landroid/content/Context;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_c

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public backPressed()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic callBack(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic checkAndRequestPhoneState()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->checkAndRequestPhoneState()V

    return-void
.end method

.method public bridge synthetic checkAndRequestStoragePermission()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->checkAndRequestStoragePermission()V

    return-void
.end method

.method public closeAppStreamSplash(Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string/jumbo v0, "webappActivity closeAppStreamSplash"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->Plugin2Host_closeAppStreamSplash(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 5
    :try_start_14
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_20
    :goto_20
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 12
    const-string/jumbo v0, "webappActivity removeView mSplashView"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v2, v0, Lio/dcloud/WebAppActivity$g;

    if-eqz v2, :cond_36

    .line 14
    check-cast v0, Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity$g;->b()V

    goto :goto_3b

    .line 16
    :cond_36
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :goto_3b
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    :cond_3f
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->z:Z

    .line 22
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    const-wide/16 v2, 0x0

    .line 23
    iput-wide v2, p0, Lio/dcloud/WebAppActivity;->x:J

    .line 24
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_52

    const/4 v2, 0x1

    .line 25
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    .line 28
    :cond_52
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->initBackToFrontSplashAd()V

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->l()Ljava/lang/String;

    move-result-object p1

    :cond_5f
    const-string v0, "onCloseSplashNoAd"

    invoke-static {p0, p1, v0, v1}, Lio/dcloud/p/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeSideBar()V
    .registers 1

    return-void
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getActivityState()I
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->getActivityState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTipMsg()Ljava/lang/String;
    .registers 4

    .line 2
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    const/4 v1, 0x4

    const-string v2, ""

    if-ne v0, v1, :cond_1a

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_not_sd_card:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_31

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_sd_not_space:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_31
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_setting_download_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    goto :goto_51

    :cond_50
    return-object v2

    .line 9
    :cond_51
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_res_download_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->v:Landroid/content/Context;

    return-object v0
.end method

.method public getProgressView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_9

    instance-of v1, v0, Lio/dcloud/WebAppActivity$g;

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrlByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->getUrlByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasAdService()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->hasAdService()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->z:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public initBackToFrontSplashAd()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->t:Lio/dcloud/WebAppActivity$f;

    if-nez v0, :cond_45

    .line 2
    new-instance v0, Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;

    invoke-direct {v0}, Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->u:Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    if-lt v1, v2, :cond_2b

    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_33

    .line 6
    :cond_2b
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    :goto_33
    new-instance v0, Lio/dcloud/WebAppActivity$f;

    invoke-direct {v0, p0, p0}, Lio/dcloud/WebAppActivity$f;-><init>(Lio/dcloud/WebAppActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->t:Lio/dcloud/WebAppActivity$f;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCloudApplication;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->t:Lio/dcloud/WebAppActivity$f;

    invoke-virtual {v0, v1}, Lio/dcloud/application/DCloudApplication;->addActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_45
    return-void
.end method

.method public bridge synthetic isMultiProcessMode()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->isMultiProcessMode()Z

    move-result v0

    return v0
.end method

.method public isSideBarCanRefresh()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 5
    :goto_7
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 6
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 7
    instance-of v2, v2, Lio/dcloud/common/DHInterface/SplashView;

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public obtainActivityContentView()Landroid/widget/FrameLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAppActive(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    return-void
.end method

.method public onAppActive(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAppStart(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    return-void
.end method

.method public onAppStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAppStop(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onAsyncStartAppEnd(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->onAsyncStartAppEnd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onAsyncStartAppStart(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->onAsyncStartAppStart(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    const-string v0, "back"

    const-string v1, "WebAppActivity onBackPressed"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->isMultiProcessMode()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->backPressed()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_17

    const/4 v1, 0x1

    if-ne v1, v0, :cond_18

    :cond_17
    return-void

    .line 8
    :cond_18
    iget-object v0, p0, Lio/dcloud/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lio/dcloud/a;->e:Ljava/lang/String;

    :goto_27
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    const-string v2, "onBack"

    invoke-static {p0, v0, v2, v1}, Lio/dcloud/p/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-super {p0}, Lio/dcloud/a;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onCloseSplash()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->onCloseSplash()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/dcloud/common/util/BaseInfo;->startTime:J

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/dcloud/common/util/AppRuntime;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Html5Plus-onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcutactivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ShortCutUtil;->activityNameSDK:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autocreateshortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/util/ShortCutUtil;->mAutoCreateShortcut:Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extrapro"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 9
    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lio/dcloud/common/util/ShortCutUtil;->extraProSDK:Ljava/util/HashMap;

    .line 11
    :cond_62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__intetn_orientation__"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 15
    :cond_7a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/WebAppActivity;->deviceInjectionGeoLocationJs(Landroid/content/Context;)V

    .line 16
    const-string v0, "WebAppActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->m()V

    .line 19
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v0, :cond_94

    .line 20
    const-string v0, "run_5app_time_key"

    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 22
    :cond_94
    invoke-super {p0, p1}, Lio/dcloud/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 23
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 26
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 28
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    .line 30
    :cond_a9
    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->k()V

    return-void
.end method

.method public onCreateAdSplash(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-boolean p1, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-eqz p1, :cond_5

    goto :goto_5f

    .line 2
    :cond_5
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_5f

    .line 3
    :cond_a
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    if-eqz p1, :cond_f

    goto :goto_5f

    .line 4
    :cond_f
    invoke-super {p0}, Lio/dcloud/a;->hasAdService()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 5
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    new-instance v0, Lio/dcloud/WebAppActivity$b;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$b;-><init>(Lio/dcloud/WebAppActivity;)V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/dcloud/p/k;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    .line 19
    :cond_24
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->z:Z

    if-eqz p1, :cond_5f

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 22
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_42
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_55

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_55
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    new-instance v0, Lio/dcloud/WebAppActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$$ExternalSyntheticLambda3;-><init>(Lio/dcloud/WebAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5f
    :goto_5f
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_18

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4e

    :cond_18
    if-le v1, v2, :cond_4e

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x500

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4e

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 14
    invoke-static {v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 17
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v0, :cond_5b

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/dcloud/common/util/BaseInfo;->splashCreateTime:J

    .line 25
    invoke-direct {p0, p1}, Lio/dcloud/WebAppActivity;->a(Landroid/content/Context;)Ljava/lang/Object;

    :cond_5b
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 6

    .line 1
    invoke-static {}, Lio/dcloud/common/DHInterface/message/ActionBus;->getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;

    move-result-object v0

    invoke-static {}, Lio/dcloud/common/DHInterface/message/action/WebActivityOnDestroyAction;->obtain()Lio/dcloud/common/DHInterface/message/action/WebActivityOnDestroyAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/DHInterface/message/ActionBus;->sendToBus(Lio/dcloud/common/DHInterface/message/action/IAction;)Z

    .line 3
    invoke-super {p0}, Lio/dcloud/a;->onDestroy()V

    .line 5
    :try_start_e
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->clearUseRejectedCache()V

    .line 8
    invoke-static {}, Lio/dcloud/common/util/ImageLoaderUtil;->clearCache()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    nop

    .line 10
    :goto_20
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    :cond_28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v0, :cond_3b

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCloudApplication;

    iget-object v2, p0, Lio/dcloud/WebAppActivity;->t:Lio/dcloud/WebAppActivity$f;

    invoke-virtual {v0, v2}, Lio/dcloud/application/DCloudApplication;->removeActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    .line 15
    :cond_3b
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;

    if-eqz v0, :cond_42

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    :cond_42
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->clearData()V

    .line 19
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->setLancheTabBar(Lio/dcloud/common/core/ui/TabBarWebview;)V

    .line 20
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_61

    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 22
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_61
    const/4 v0, 0x1

    .line 25
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const-string v3, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string/jumbo v4, "unregisterReceiver"

    invoke-static {v3, v4, v1, v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    .line 27
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->v:Landroid/content/Context;

    .line 28
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/a;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/a;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLowMemory()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->onLowMemory()V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/a;->onNewIntentImpl(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->onPause()V

    return-void
.end method

.method public bridge synthetic onPrivacySureAction()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->onPrivacySureAction()V

    return-void
.end method

.method public bridge synthetic onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->onResume()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Html5Plus-onResume"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onRuntimeCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->n()V

    .line 2
    invoke-super {p0, p1}, Lio/dcloud/a;->onRuntimeCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 3
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    .line 5
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    .line 7
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I

    return-void
.end method

.method public recordDialog(Landroid/app/Dialog;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic registerLocalReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->registerLocalReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public bridge synthetic registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/dcloud/b;->registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    .line 2
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public removeClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public removeFromRecord(Landroid/app/Dialog;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic sendLocalBroadcast(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->sendLocalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setProgressView()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-ne v1, v2, :cond_1b

    .line 4
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1e

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1e
    :goto_1e
    new-instance v0, Lio/dcloud/WebAppActivity$g;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lio/dcloud/WebAppActivity$g;-><init>(Lio/dcloud/WebAppActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setSecondPrivacyAlert()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/a;->setSecondPrivacyAlert()V

    return-void
.end method

.method public setSideBarVisibility(I)V
    .registers 2

    return-void
.end method

.method public setSplashCloseListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    .line 6
    :cond_d
    iget-boolean p2, p0, Lio/dcloud/WebAppActivity;->B:Z

    if-eqz p2, :cond_14

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 9
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->l()Ljava/lang/String;

    move-result-object p1

    :cond_1e
    iget-object p2, p0, Lio/dcloud/WebAppActivity;->A:Landroid/view/View;

    const-string v0, "onWillCloseSplash"

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/p/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/dcloud/WebAppActivity;->B:Z

    return-void
.end method

.method public setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    if-nez v0, :cond_33

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->E:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_29

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->E:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_2c

    .line 9
    :cond_29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 11
    :goto_2c
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setContentView(Lio/dcloud/common/DHInterface/IActivityHandler;)V

    .line 13
    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 15
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    const-string v0, "checkNeedTitleView"

    const/4 v3, 0x0

    const-string v4, "io.dcloud.appstream.actionbar.StreamAppActionBarUtil"

    invoke-static {v4, v0, v3, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/WebAppActivity;->addViewToContentView(Landroid/view/View;)V

    if-eqz p2, :cond_62

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_62
    sget-object p2, Lio/dcloud/common/util/TestUtil;->START_APP_SET_ROOTVIEW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWebViewIntoPreloadView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->F:Landroid/widget/FrameLayout;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->F:Landroid/widget/FrameLayout;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5
    :cond_13
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    if-nez v0, :cond_5

    goto :goto_f

    .line 2
    :cond_5
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    .line 5
    :cond_10
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-nez v0, :cond_21

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    .line 8
    :cond_21
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_tips:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3e

    .line 10
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_no_network_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_89

    :cond_3e
    if-eqz p1, :cond_6b

    .line 12
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_into:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getErrorTipMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 14
    :cond_6b
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_run_app_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getErrorTipMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 16
    :goto_89
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_retry:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/WebAppActivity$c;

    invoke-direct {v1, p0, p2}, Lio/dcloud/WebAppActivity$c;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_close:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/WebAppActivity$d;

    invoke-direct {v1, p0, p2}, Lio/dcloud/WebAppActivity$d;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v0, Lio/dcloud/WebAppActivity$e;

    invoke-direct {v0, p0, p2}, Lio/dcloud/WebAppActivity$e;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 44
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showSplashWaiting()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->C:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/SplashView;

    if-eqz v1, :cond_f

    .line 2
    check-cast v0, Lio/dcloud/common/DHInterface/SplashView;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting()V

    :cond_f
    return-void
.end method

.method public sideBarHideMenu()V
    .registers 1

    return-void
.end method

.method public sideBarShowMenu(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public bridge synthetic unregisterReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->unregisterReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;)V

    return-void
.end method

.method public updateParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    const-string v0, "progress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v0, p1, Lio/dcloud/WebAppActivity$g;

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Lio/dcloud/WebAppActivity$g;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/WebAppActivity$g;->a(I)V

    :cond_19
    return-void

    .line 5
    :cond_1a
    const-string v0, "setProgressView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->setProgressView()V

    return-void

    .line 8
    :cond_26
    invoke-super {p0, p1, p2}, Lio/dcloud/a;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateSplash(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-interface {v0, p1}, Lio/dcloud/feature/internal/splash/ISplash;->setNameText(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

###### Class io.dcloud.WebAppActivity.HomeKeyEventBroadcastReceiver (io.dcloud.WebAppActivity$HomeKeyEventBroadcastReceiver)
.class public Lio/dcloud/WebAppActivity$HomeKeyEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeKeyEventBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 3
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 5
    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 6
    :cond_24
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->onApp2Back()V

    :cond_2b
    return-void
.end method

###### Class io.dcloud.WebAppActivity.a (io.dcloud.WebAppActivity$a)
.class Lio/dcloud/WebAppActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_35

    :sswitch_15
    const-string v0, "com.huawei.intent.action.CLICK_STATUSBAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v3, 0x2

    goto :goto_35

    :sswitch_20
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_35

    :cond_29
    const/4 v3, 0x1

    goto :goto_35

    :sswitch_2b
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    packed-switch v3, :pswitch_data_8e

    goto :goto_5d

    .line 4
    :pswitch_39
    iget-object p2, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    iget-object v0, p2, Lio/dcloud/WebAppActivity;->D:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5d

    invoke-static {p2}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 5
    iget-object p2, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    invoke-static {p2}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4f
    if-ge v2, v0, :cond_5d

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/DHInterface/ICallBack;

    .line 6
    invoke-interface {v3, v1, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_5d
    :goto_5d
    return-void

    .line 12
    :pswitch_5e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Ljava/util/Locale;)V

    return-void

    .line 18
    :pswitch_66
    const-string p1, "level"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 20
    const-string/jumbo v0, "temperature"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    double-to-int p2, v0

    .line 21
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->setBatteryLevel(I)V

    .line 22
    invoke-static {p2}, Lio/dcloud/common/util/AppRuntime;->setTemperature(I)V

    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x5bb23923 -> :sswitch_2b
        -0x122164c -> :sswitch_20
        0x30efcf0a -> :sswitch_15
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5e
        :pswitch_39
    .end packed-switch
.end method

###### Class io.dcloud.WebAppActivity.b (io.dcloud.WebAppActivity$b)
.class Lio/dcloud/WebAppActivity$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    iget-object v1, p1, Lio/dcloud/WebAppActivity;->G:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v1, :cond_14

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lio/dcloud/WebAppActivity;->B:Z

    goto :goto_16

    .line 5
    :cond_14
    iput-boolean v0, p1, Lio/dcloud/WebAppActivity;->B:Z

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.WebAppActivity.c (io.dcloud.WebAppActivity$c)
.class Lio/dcloud/WebAppActivity$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$c;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$c;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.d (io.dcloud.WebAppActivity$d)
.class Lio/dcloud/WebAppActivity$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const-string v0, "closewebapp"

    invoke-virtual {p1, v0, p2}, Lio/dcloud/WebAppActivity;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.e (io.dcloud.WebAppActivity$e)
.class Lio/dcloud/WebAppActivity$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1c

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const-string v1, "closewebapp"

    invoke-virtual {p1, v1, p2}, Lio/dcloud/WebAppActivity;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$e;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return v0

    :cond_1c
    return p3
.end method

###### Class io.dcloud.WebAppActivity.f (io.dcloud.WebAppActivity$f)
.class Lio/dcloud/WebAppActivity$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method public constructor <init>(Lio/dcloud/WebAppActivity;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$f;->b:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_46

    .line 3
    :cond_f
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_46

    .line 8
    :cond_24
    :try_start_24
    const-class v1, Lio/dcloud/feature/gg/dcloud/dcmgr/SIAolManager;

    .line 9
    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    const-string v3, "load"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 12
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    :goto_46
    return-void
.end method

.method public onFront()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_46

    .line 3
    :cond_f
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_46

    .line 8
    :cond_24
    :try_start_24
    const-class v1, Lio/dcloud/feature/gg/dcloud/dcmgr/SIAolManager;

    .line 9
    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    const-string v3, "show"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 12
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    :goto_46
    return-void
.end method

###### Class io.dcloud.WebAppActivity.g (io.dcloud.WebAppActivity$g)
.class Lio/dcloud/WebAppActivity$g;
.super Landroid/widget/RelativeLayout;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:Landroid/graphics/Paint;

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$g;->h:Lio/dcloud/WebAppActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->c:I

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    .line 5
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->e:I

    .line 6
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->f:I

    const/16 p1, 0xff

    .line 7
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->g:I

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/WebAppActivity$g;->a:I

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v0, 0x500

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x780

    if-eq p1, v0, :cond_48

    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    const p2, 0x3b9374bc    # 0.0045f

    mul-float p1, p1, p2

    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    return-void

    :cond_48
    const/high16 p1, 0x41100000    # 9.0f

    .line 21
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    return-void

    :cond_4d
    const/high16 p1, 0x40c00000    # 6.0f

    .line 24
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/WebAppActivity$g$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$g$a;-><init>(Lio/dcloud/WebAppActivity$g;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(I)V
    .registers 5

    .line 2
    iget v0, p0, Lio/dcloud/WebAppActivity$g;->a:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 3
    iget p1, p0, Lio/dcloud/WebAppActivity$g;->e:I

    iget v1, p0, Lio/dcloud/WebAppActivity$g;->f:I

    if-lt p1, v1, :cond_16

    .line 4
    new-instance p1, Lio/dcloud/WebAppActivity$g$b;

    invoke-direct {p1, p0}, Lio/dcloud/WebAppActivity$g$b;-><init>(Lio/dcloud/WebAppActivity$g;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_16
    iput v0, p0, Lio/dcloud/WebAppActivity$g;->f:I

    return-void
.end method

.method b()V
    .registers 2

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/WebAppActivity$g;->a(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/WebAppActivity$g;->g:I

    const/16 v2, 0xad

    const/16 v3, 0x19

    const/16 v4, 0x1a

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lio/dcloud/WebAppActivity$g;->c:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->e:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->b:F

    add-float v5, v3, v0

    iget-object v6, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Lio/dcloud/WebAppActivity$g;->a:I

    iget p2, p0, Lio/dcloud/WebAppActivity$g;->c:I

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->b:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.g.a (io.dcloud.WebAppActivity$g$a)
.class Lio/dcloud/WebAppActivity$g$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity$g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity$g;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    iget v1, v0, Lio/dcloud/WebAppActivity$g;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lio/dcloud/WebAppActivity$g;->g:I

    if-lez v1, :cond_10

    const-wide/16 v1, 0x5

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 5
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 7
    iget-object v1, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.g.b (io.dcloud.WebAppActivity$g$b)
.class Lio/dcloud/WebAppActivity$g$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity$g;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity$g;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    iget v1, v0, Lio/dcloud/WebAppActivity$g;->f:I

    iget v2, v0, Lio/dcloud/WebAppActivity$g;->e:I

    sub-int v3, v1, v2

    const/16 v4, 0xa

    div-int/2addr v3, v4

    if-le v3, v4, :cond_e

    goto :goto_13

    :cond_e
    const/4 v4, 0x1

    if-ge v3, v4, :cond_12

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    add-int/2addr v2, v4

    .line 7
    iput v2, v0, Lio/dcloud/WebAppActivity$g;->e:I

    if-le v1, v2, :cond_1e

    const-wide/16 v1, 0x5

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 11
    :cond_1e
    iget v2, v0, Lio/dcloud/WebAppActivity$g;->a:I

    if-lt v1, v2, :cond_25

    .line 12
    invoke-virtual {v0}, Lio/dcloud/WebAppActivity$g;->a()V

    .line 14
    :cond_25
    :goto_25
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebAppActivity$$ExternalSyntheticLambda3 (io.dcloud.WebAppActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lio/dcloud/WebAppActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/WebAppActivity;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/WebAppActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/WebAppActivity$$ExternalSyntheticLambda3;->f$0:Lio/dcloud/WebAppActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/WebAppActivity$$ExternalSyntheticLambda3;->f$0:Lio/dcloud/WebAppActivity;

    invoke-static {v0}, Lio/dcloud/WebAppActivity;->$r8$lambda$fjOBWh2XKB6D0wan62JkiN-0tIM(Lio/dcloud/WebAppActivity;)V

    return-void
.end method
