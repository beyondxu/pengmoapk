###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl)
.class public Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Landroid/graphics/Bitmap;
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 78
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_9

    const/16 v0, 0x5dc

    goto :goto_b

    :cond_9
    const/16 v0, 0x1f4

    .line 58
    :goto_b
    new-instance v1, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    int-to-long p1, v0

    .line 75
    invoke-static {v1, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLjava/lang/String;)V
    .registers 19

    .line 79
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 82
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pdr"

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 83
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 84
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_created_shortcut"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 88
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 90
    const-string p4, "short_cut_class_name"

    invoke-virtual {v3, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_4c
    move-object v5, p4

    .line 93
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const/4 v8, 0x1

    if-lt p4, v3, :cond_7d

    .line 94
    invoke-static {v1, p2}, Lio/dcloud/common/util/ShortCutUtil;->hasShortcut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_60

    if-eqz p7, :cond_5d

    goto :goto_60

    :cond_5d
    move-object v3, p2

    goto/16 :goto_ee

    :cond_60
    :goto_60
    const/4 v7, 0x1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .line 95
    invoke-static/range {v1 .. v7}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 96
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ee

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p5, v8}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto/16 :goto_ee

    :cond_7d
    move-object v3, p2

    .line 104
    invoke-static {v1}, Lio/dcloud/common/util/ShortcutCreateUtil;->isDuplicateLauncher(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a5

    const/4 v7, 0x1

    move-object v4, p3

    move-object v6, p6

    .line 105
    invoke-static/range {v1 .. v7}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 106
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ee

    invoke-static {v1}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p5, v8}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto :goto_ee

    .line 111
    :cond_a5
    invoke-static {v1, v3}, Lio/dcloud/common/util/ShortCutUtil;->hasShortcut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ee

    if-eqz p7, :cond_cb

    .line 114
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c4

    .line 115
    invoke-static {v1}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p5, v8}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    :cond_c4
    const/4 v7, 0x1

    move-object v4, p3

    move-object v6, p6

    .line 119
    invoke-static/range {v1 .. v7}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    goto :goto_ee

    :cond_cb
    if-eqz v0, :cond_ce

    return-void

    :cond_ce
    const/4 v7, 0x1

    move-object v4, p3

    move-object v6, p6

    .line 124
    invoke-static/range {v1 .. v7}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 125
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ee

    invoke-static {v1}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p5, v8}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 133
    :cond_ee
    :goto_ee
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    move-object/from16 p3, p9

    invoke-direct {p0, p2, p1, p3, v3}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v1, p3

    const-string v0, "toast"

    const/4 v2, 0x0

    .line 2
    aget-object v3, p2, v2

    const/4 v4, 0x1

    .line 3
    aget-object v14, p2, v4

    .line 6
    const-string v5, ""

    .line 11
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lio/dcloud/base/R$string;->dcloud_short_cut_created:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v6, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 15
    :try_start_23
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v3, "force"

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2e} :catch_8e

    if-eqz v3, :cond_49

    .line 18
    :try_start_30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget v11, Lio/dcloud/base/R$string;->dcloud_short_cut_created_removed_manually:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    :cond_49
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_4f} :catch_89

    .line 21
    :try_start_4f
    const-string v10, "icon"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_55} :catch_82

    .line 22
    :try_start_55
    const-string v11, "classname"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 24
    :cond_66
    const-string v0, "extra"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_6c} :catch_7d

    .line 25
    :try_start_6c
    const-string v0, "check"

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_72} :catch_7a

    move v12, v3

    move v13, v4

    move-object v3, v7

    move-object v7, v9

    move-object v0, v10

    move-object v9, v5

    move-object v10, v6

    goto :goto_9e

    :catch_7a
    move-exception v0

    move-object v8, v6

    goto :goto_80

    :catch_7d
    move-exception v0

    move-object v8, v6

    move-object v11, v7

    :goto_80
    move-object v6, v5

    goto :goto_87

    :catch_82
    move-exception v0

    move-object v10, v5

    move-object v8, v6

    move-object v11, v7

    move-object v6, v10

    :goto_87
    move-object v5, v9

    goto :goto_94

    :catch_89
    move-exception v0

    move-object v10, v5

    move-object v8, v6

    move-object v11, v7

    goto :goto_93

    :catch_8e
    move-exception v0

    move-object v10, v5

    move-object v8, v6

    move-object v11, v7

    const/4 v3, 0x1

    :goto_93
    move-object v6, v10

    .line 27
    :goto_94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v12, v3

    move-object v9, v6

    move-object v3, v7

    move-object v0, v10

    const/4 v13, 0x1

    move-object v7, v5

    move-object v10, v8

    .line 31
    :goto_9e
    :try_start_9e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 32
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b0} :catch_d0

    move-object v3, v0

    :cond_b1
    if-nez v3, :cond_bd

    .line 37
    :try_start_b3
    invoke-direct {p0, v1}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b7} :catch_b9

    move-object v3, v0

    goto :goto_bd

    :catch_b9
    move-exception v0

    .line 39
    :try_start_ba
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_bd
    :goto_bd
    if-nez v3, :cond_d4

    if-nez v3, :cond_d4

    .line 45
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWABLE_ICON:I

    .line 46
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_cf} :catch_d0

    goto :goto_d4

    :catch_d0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d4
    :goto_d4
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v8, v3

    .line 54
    invoke-direct/range {v5 .. v14}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLjava/lang/String;)V

    return v2
.end method

.method static synthetic a(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;
    .registers 3

    .line 21
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 24
    const-string v0, "app_icon"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method private b(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p1, p4}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCut(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p4, "short_cut_existing"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "{result:%s}"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1b

    .line 3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "existing"

    aput-object p4, p1, v2

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    .line 5
    :cond_1b
    const-string p4, "short_cut_none"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2e

    .line 6
    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "none"

    aput-object p4, p1, v2

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    .line 8
    :cond_2e
    const-string p4, "nopermissions"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 9
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p4, p1, v2

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    .line 12
    :cond_3f
    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "unknown"

    aput-object p4, p1, v2

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :goto_49
    :try_start_49
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p2, p3, p4, p1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    const-string v1, "delay_w2a"

    const-string v2, "autoclose_w2a"

    const-string v5, "delay"

    const-string v6, "autoclose"

    .line 1
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    move-object v8, v6

    .line 2
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v15, -0x1

    sparse-switch v9, :sswitch_data_62a

    goto/16 :goto_1c0

    :sswitch_27
    const-string v9, "setStatusBarStyle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto/16 :goto_1c0

    :cond_31
    const/16 v15, 0x1e

    goto/16 :goto_1c0

    :sswitch_35
    const-string v9, "setLogs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_1c0

    :cond_3f
    const/16 v15, 0x1d

    goto/16 :goto_1c0

    :sswitch_43
    const-string v9, "setUserAgent"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    goto/16 :goto_1c0

    :cond_4d
    const/16 v15, 0x1c

    goto/16 :goto_1c0

    :sswitch_51
    const-string v9, "getStatusbarHeight"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    goto/16 :goto_1c0

    :cond_5b
    const/16 v15, 0x1b

    goto/16 :goto_1c0

    :sswitch_5f
    const-string v9, "isFullScreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_69

    goto/16 :goto_1c0

    :cond_69
    const/16 v15, 0x1a

    goto/16 :goto_1c0

    :sswitch_6d
    const-string v9, "removeAllCookie"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    goto/16 :goto_1c0

    :cond_77
    const/16 v15, 0x19

    goto/16 :goto_1c0

    :sswitch_7b
    const-string v9, "setStatusBarBackground"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_85

    goto/16 :goto_1c0

    :cond_85
    const/16 v15, 0x18

    goto/16 :goto_1c0

    :sswitch_89
    const-string v9, "hasNotchInScreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_93

    goto/16 :goto_1c0

    :cond_93
    const/16 v15, 0x17

    goto/16 :goto_1c0

    :sswitch_97
    const-string v9, "getSignature"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a1

    goto/16 :goto_1c0

    :cond_a1
    const/16 v15, 0x16

    goto/16 :goto_1c0

    :sswitch_a5
    const-string v9, "isBackground"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_af

    goto/16 :goto_1c0

    :cond_af
    const/16 v15, 0x15

    goto/16 :goto_1c0

    :sswitch_b3
    const-string v9, "requestPermission"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bd

    goto/16 :goto_1c0

    :cond_bd
    const/16 v15, 0x14

    goto/16 :goto_1c0

    :sswitch_c1
    const-string v9, "checkPermission"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cb

    goto/16 :goto_1c0

    :cond_cb
    const/16 v15, 0x13

    goto/16 :goto_1c0

    :sswitch_cf
    const-string v9, "getUiStyle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d9

    goto/16 :goto_1c0

    :cond_d9
    const/16 v15, 0x12

    goto/16 :goto_1c0

    :sswitch_dd
    const-string v9, "setFullscreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e7

    goto/16 :goto_1c0

    :cond_e7
    const/16 v15, 0x11

    goto/16 :goto_1c0

    :sswitch_eb
    const-string v9, "createShortcut"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f5

    goto/16 :goto_1c0

    :cond_f5
    const/16 v15, 0x10

    goto/16 :goto_1c0

    :sswitch_f9
    const-string v9, "getCookie"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_103

    goto/16 :goto_1c0

    :cond_103
    const/16 v15, 0xf

    goto/16 :goto_1c0

    :sswitch_107
    const-string v9, "getUserAgent"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_111

    goto/16 :goto_1c0

    :cond_111
    const/16 v15, 0xe

    goto/16 :goto_1c0

    :sswitch_115
    const-string v9, "hasSplashscreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11f

    goto/16 :goto_1c0

    :cond_11f
    const/16 v15, 0xd

    goto/16 :goto_1c0

    :sswitch_123
    const-string v9, "setCookie"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12d

    goto/16 :goto_1c0

    :cond_12d
    const/16 v15, 0xc

    goto/16 :goto_1c0

    :sswitch_131
    const-string v9, "getStatusBarBackground"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13b

    goto/16 :goto_1c0

    :cond_13b
    const/16 v15, 0xb

    goto/16 :goto_1c0

    :sswitch_13f
    const-string v9, "isImmersedStatusbar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_149

    goto/16 :goto_1c0

    :cond_149
    const/16 v15, 0xa

    goto/16 :goto_1c0

    :sswitch_14d
    const-string v9, "removeSessionCookie"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_157

    goto/16 :goto_1c0

    :cond_157
    const/16 v15, 0x9

    goto/16 :goto_1c0

    :sswitch_15b
    const-string v9, "isSimulator"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_165

    goto/16 :goto_1c0

    :cond_165
    const/16 v15, 0x8

    goto/16 :goto_1c0

    :sswitch_169
    const-string v9, "showSystemNavigation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_172

    goto :goto_1c0

    :cond_172
    const/4 v15, 0x7

    goto :goto_1c0

    :sswitch_174
    const-string v9, "isLogs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17d

    goto :goto_1c0

    :cond_17d
    const/4 v15, 0x6

    goto :goto_1c0

    :sswitch_17f
    const-string v9, "getStatusBarStyle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_188

    goto :goto_1c0

    :cond_188
    const/4 v15, 0x5

    goto :goto_1c0

    :sswitch_18a
    const-string v9, "closeSplashscreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_193

    goto :goto_1c0

    :cond_193
    const/4 v15, 0x4

    goto :goto_1c0

    :sswitch_195
    const-string v9, "hasShortcut"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19e

    goto :goto_1c0

    :cond_19e
    const/4 v15, 0x3

    goto :goto_1c0

    :sswitch_1a0
    const-string v9, "updateSplashscreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a9

    goto :goto_1c0

    :cond_1a9
    const/4 v15, 0x2

    goto :goto_1c0

    :sswitch_1ab
    const-string v9, "hideSystemNavigation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b4

    goto :goto_1c0

    :cond_1b4
    const/4 v15, 0x1

    goto :goto_1c0

    :sswitch_1b6
    const-string v9, "getOrientation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    const/4 v15, 0x0

    :goto_1c0
    const-string v9, "h5plus"

    const-string v11, "useragent"

    const/16 v16, 0x1

    const-string v13, "funSetUA"

    const-string v10, "status_bar_mode"

    const-string v12, "Navigator-"

    const/16 v17, 0x0

    const/4 v14, 0x0

    packed-switch v15, :pswitch_data_6a8

    goto/16 :goto_2d4

    .line 262
    :pswitch_1d4
    aget-object v0, v4, v17

    .line 263
    invoke-interface {v7, v10, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarMode(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2d4

    .line 265
    :pswitch_1e6
    aget-object v0, v4, v17

    .line 266
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->setOpen(Z)V

    goto/16 :goto_2d4

    :pswitch_1f6
    const/4 v1, 0x0

    .line 267
    aget-object v0, v4, v1

    .line 268
    aget-object v1, v4, v16

    .line 270
    invoke-interface {v7, v11, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "true"

    invoke-interface {v7, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v7, v9, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "User-Agent"

    invoke-interface {v3, v1, v0}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d4

    .line 351
    :pswitch_20d
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateStatusBarHeight(Landroid/app/Activity;)V

    .line 352
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    int-to-float v0, v0

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :pswitch_221
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IAppInfo;->isFullScreen()Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 399
    :pswitch_22a
    :try_start_22a
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->removeAllCookie()V
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22d} :catch_22f

    goto/16 :goto_2d4

    :catch_22f
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2d4

    .line 547
    :pswitch_235
    aget-object v0, v4, v17

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d4

    .line 551
    :try_start_23d
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_241} :catch_242

    goto :goto_246

    .line 553
    :catch_242
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 556
    :goto_246
    aget-object v1, v4, v17

    const-string v2, "StatusBarBackground"

    invoke-interface {v7, v2, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    goto/16 :goto_2d4

    .line 606
    :pswitch_25a
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_267
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/LoadAppUtils;->getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 640
    :pswitch_274
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27d

    const/4 v13, 0x1

    goto :goto_27e

    :cond_27d
    const/4 v13, 0x0

    .line 641
    :goto_27e
    invoke-static {v13}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 642
    :pswitch_283
    aget-object v0, v4, v17

    .line 643
    aget-object v6, v4, v16

    .line 644
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v2

    .line 645
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convertNativePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    new-instance v0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v2, v1, v3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 666
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2d4

    .line 670
    :pswitch_2a8
    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 763
    :pswitch_2b1
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->getAppDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2be

    const-string v0, "dark"

    goto :goto_2c0

    :cond_2be
    const-string v0, "light"

    :goto_2c0
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2c5
    move-object v2, v7

    const/4 v1, 0x0

    .line 764
    aget-object v0, v4, v1

    .line 766
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setFullScreen(Z)V

    :cond_2d4
    :goto_2d4
    move-object/from16 v3, p0

    goto/16 :goto_629

    :pswitch_2d8
    move-object v2, v7

    .line 847
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 848
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;

    move-object v5, v2

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    move-object v3, v1

    const-string v1, "Navigator"

    const-string v2, "SHORTCUT"

    const/4 v4, 0x2

    invoke-static {v7, v1, v2, v4, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_629

    :pswitch_303
    move-object v4, v3

    move-object/from16 v3, p0

    .line 849
    aget-object v0, p3, v17

    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IWebview;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_30d
    move-object v4, v3

    move-object v0, v7

    move-object/from16 v3, p0

    .line 850
    invoke-interface {v0, v13}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 851
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v11}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_329

    .line 853
    const-string v2, ""

    :cond_329
    if-nez v1, :cond_38d

    .line 856
    const-string v1, "concatenate"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 857
    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_38d

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->isUniApp()Z

    move-result v2

    if-eqz v2, :cond_378

    const-string v2, "uni-app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_378

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uni-app"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_378
    if-eqz v0, :cond_38c

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Html5Plus/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38c
    return-object v1

    :cond_38d
    return-object v2

    :pswitch_38e
    move-object/from16 v3, p0

    move-object v0, v7

    .line 1051
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->didCloseSplash()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1052
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3a0
    move-object v4, v3

    move-object/from16 v3, p0

    .line 1053
    aget-object v0, p3, v17

    aget-object v1, p3, v16

    invoke-interface {v4, v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_629

    :pswitch_3ac
    move-object/from16 v3, p0

    move-object v0, v7

    .line 1227
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    .line 1228
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->toHexFromColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3c4
    move-object v4, v3

    move-object v0, v7

    move-object/from16 v3, p0

    .line 1229
    const-string v1, "immersed"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1230
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v0

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3e7
    move-object v4, v3

    move-object/from16 v3, p0

    .line 1231
    :try_start_3ea
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->removeSessionCookie()V
    :try_end_3ed
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3ed} :catch_3ef

    goto/16 :goto_629

    :catch_3ef
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_629

    :pswitch_3f5
    move-object v4, v3

    move-object/from16 v3, p0

    .line 1458
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getSingleInstance()Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    move-result-object v0

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->emulatorCheck(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_41c
    move-object v4, v3

    move-object v0, v7

    move-object/from16 v3, p0

    .line 1460
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1461
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x203

    .line 1463
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1464
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->setHideNavBarState(Z)V

    goto/16 :goto_629

    :pswitch_443
    move-object/from16 v3, p0

    .line 1465
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->isOpen()Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_44e
    move-object/from16 v3, p0

    move-object v0, v7

    .line 1642
    invoke-interface {v0, v10}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_45a
    move-object v4, v3

    move-object/from16 v3, p0

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " closeSplashscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Main_Path"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "closeSplashscreen appid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript webapp task begin success appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_manager"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, v3, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    const/16 v4, 0xb

    invoke-interface {v0, v1, v4, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_629

    :pswitch_4ad
    move-object v4, v3

    move-object/from16 v3, p0

    .line 1758
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 1759
    aget-object v0, p3, v17

    .line 1760
    aget-object v1, p3, v16

    .line 1763
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v2

    .line 1765
    :try_start_4d1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1766
    const-string v0, "name"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4dc
    .catch Lorg/json/JSONException; {:try_start_4d1 .. :try_end_4dc} :catch_4dd

    goto :goto_4e1

    :catch_4dd
    move-exception v0

    .line 1768
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1771
    :goto_4e1
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, v4, v1, v2}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->b(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_629

    :pswitch_4ea
    move-object v4, v3

    move-object v0, v7

    move-object/from16 v3, p0

    .line 1776
    aget-object v6, p3, v17

    .line 1778
    :try_start_4f0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1779
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "pdr"

    invoke-static {v6, v9}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1780
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1781
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    .line 1782
    const-string v10, "image"

    invoke-virtual {v7, v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1783
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_54a

    .line 1784
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1785
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_545

    .line 1786
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "splash/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1787
    invoke-static {v4, v0, v10, v11}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 1790
    :cond_545
    const-string v0, "update_splash_img_path"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1792
    :cond_54a
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_568

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__update_splash_autoclose"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1795
    :cond_568
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_586

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__update_splash_delay"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1798
    :cond_586
    invoke-static {v9}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c8

    .line 1801
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5aa

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__update_splash_autoclose_w2a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1804
    :cond_5aa
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c8

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__update_splash_delay_w2a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1808
    :cond_5c8
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5cb
    .catch Lorg/json/JSONException; {:try_start_4f0 .. :try_end_5cb} :catch_5cc

    goto :goto_629

    :catch_5cc
    move-exception v0

    .line 1811
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_629

    :pswitch_5d1
    move-object v4, v3

    move-object v0, v7

    move-object/from16 v3, p0

    .line 1882
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1883
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 1884
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    or-int/lit16 v1, v1, 0x1302

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1886
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Lio/dcloud/common/DHInterface/IApp;->setHideNavBarState(Z)V

    goto :goto_629

    :pswitch_5f7
    move-object v4, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v3, p0

    .line 1917
    :try_start_5fc
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v10, :cond_61c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_619

    const/4 v1, 0x3

    if-eq v0, v1, :cond_616

    const/4 v14, 0x0

    goto :goto_61e

    :cond_616
    const/16 v14, -0x5a

    goto :goto_61e

    :cond_619
    const/16 v14, 0xb4

    goto :goto_61e

    :cond_61c
    const/16 v14, 0x5a

    :goto_61e
    int-to-float v0, v14

    .line 1930
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v0
    :try_end_623
    .catch Ljava/lang/Exception; {:try_start_5fc .. :try_end_623} :catch_624

    return-object v0

    :catch_624
    const/4 v0, 0x0

    .line 1932
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v14

    :goto_629
    return-object v14

    :sswitch_data_62a
    .sparse-switch
        -0x7bf6c366 -> :sswitch_1b6
        -0x760ef8fb -> :sswitch_1ab
        -0x728e1704 -> :sswitch_1a0
        -0x69156700 -> :sswitch_195
        -0x4d29c055 -> :sswitch_18a
        -0x4a8dcb9a -> :sswitch_17f
        -0x465a5e07 -> :sswitch_174
        -0x318ed140 -> :sswitch_169
        -0x2fdb7a06 -> :sswitch_15b
        -0x22ca218a -> :sswitch_14d
        -0x1afe7025 -> :sswitch_13f
        -0x673d867 -> :sswitch_131
        0x78c6166 -> :sswitch_123
        0xc2e114d -> :sswitch_115
        0x11fd7f44 -> :sswitch_107
        0x14572d5a -> :sswitch_f9
        0x22932562 -> :sswitch_eb
        0x22f481bd -> :sswitch_dd
        0x22fb5747 -> :sswitch_cf
        0x28e6dcf7 -> :sswitch_c1
        0x2c7fedbe -> :sswitch_b3
        0x320351f8 -> :sswitch_a5
        0x3f6b0a02 -> :sswitch_97
        0x413c6c0f -> :sswitch_89
        0x47d0e70d -> :sswitch_7b
        0x488f6f41 -> :sswitch_6d
        0x515f64a5 -> :sswitch_5f
        0x6dc23132 -> :sswitch_51
        0x6e513fb8 -> :sswitch_43
        0x764cf531 -> :sswitch_35
        0x7d689c72 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_6a8
    .packed-switch 0x0
        :pswitch_5f7
        :pswitch_5d1
        :pswitch_4ea
        :pswitch_4ad
        :pswitch_45a
        :pswitch_44e
        :pswitch_443
        :pswitch_41c
        :pswitch_3f5
        :pswitch_3e7
        :pswitch_3c4
        :pswitch_3ac
        :pswitch_3a0
        :pswitch_38e
        :pswitch_30d
        :pswitch_303
        :pswitch_2d8
        :pswitch_2c5
        :pswitch_2b1
        :pswitch_2a8
        :pswitch_283
        :pswitch_274
        :pswitch_267
        :pswitch_25a
        :pswitch_235
        :pswitch_22a
        :pswitch_221
        :pswitch_20d
        :pswitch_1f6
        :pswitch_1e6
        :pswitch_1d4
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.a (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$a)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->b:[Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IApp;

    iput-object p6, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->b:[Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    return-void
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.b (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$b)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->f:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iput p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->a:I

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 12

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, [Ljava/lang/String;

    const/4 v3, 0x2

    .line 4
    aget-object p2, p2, v3

    check-cast p2, [I

    .line 5
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne v3, p1, :cond_57

    iget p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->a:I

    if-ne v1, p1, :cond_57

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 8
    array-length p1, p2

    if-lez p1, :cond_28

    .line 9
    aget p1, p2, v0

    goto :goto_3e

    .line 11
    :cond_28
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lio/dcloud/common/DHInterface/IApp;->checkSelfPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 13
    :goto_3e
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert5PlusValue(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->e:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "{result:\'%s\'}"

    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_57
    return v2
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.c (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$c)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCutForCommit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "short_cut_existing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5
    const-string v0, "true"

    goto :goto_15

    .line 4
    :cond_13
    const-string v0, "false"

    :goto_15
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "{sure:%s}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_21
    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->d:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v1, v3, v4, v0, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
