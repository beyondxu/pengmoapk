###### Class io.dcloud.feature.device.DeviceFeatureImpl (io.dcloud.feature.device.DeviceFeatureImpl)
.class public Lio/dcloud/feature/device/DeviceFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field static e:I = 0xff


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Z

.field private c:Landroid/content/Context;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    const-string v1, "config_screenBrightnessSettingMaximum"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    return-void

    :catch_17
    const/16 v0, 0xff

    .line 7
    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Z

    const/4 v0, -0x1

    .line 376
    iput v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:I

    return-void
.end method

.method private a(F)I
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    goto :goto_13

    .line 88
    :cond_c
    iget v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/app/Activity;)I
    .registers 9

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4b

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x7d

    .line 56
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_screenBrightnessSettingMaximum"

    const-string v5, "integer"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 58
    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xff

    if-le p1, v3, :cond_43

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_4a

    .line 63
    sget p1, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3e} :catch_46

    :goto_3e
    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1

    :cond_43
    if-ltz v0, :cond_4a

    return v0

    :catch_46
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4a
    return v2

    .line 73
    :cond_4b
    sget p1, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    goto :goto_3e
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_f
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v2, "height"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v2, "resolutionWidth"

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 10
    const-string v0, "resolutionHeight"

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 8

    .line 74
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1c

    cmpl-float v4, p2, v2

    if-lez v4, :cond_1c

    .line 77
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1e

    .line 79
    :cond_1c
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_1e
    cmpl-float v4, p2, v3

    if-nez v4, :cond_28

    .line 83
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_28
    if-gtz v1, :cond_33

    cmpl-float v1, p2, v2

    if-lez v1, :cond_33

    .line 86
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_33
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string/jumbo v0, "{\'vaid\':\'"

    const-string/jumbo v1, "{\'oaid\':\'"

    const-string/jumbo v2, "{\'aaid\':\'"

    .line 15
    const-string v3, "\\|"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 17
    :try_start_f
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_9f

    const v4, -0x483826f

    const-string v5, "\'}"

    const-string v6, ""

    const/4 v7, 0x0

    if-eq v3, v4, :cond_77

    const v2, -0x47d253d

    if-eq v3, v2, :cond_50

    const v1, -0x479f6a4

    if-eq v3, v1, :cond_28

    goto :goto_9e

    :cond_28
    :try_start_28
    const-string v1, "getVAID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 23
    array-length p2, p4

    const/4 v1, 0x1

    if-le p2, v1, :cond_36

    aget-object v6, p4, v1

    .line 25
    :cond_36
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void

    .line 26
    :cond_50
    const-string v0, "getOAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 28
    array-length p2, p4

    if-lez p2, :cond_5d

    aget-object v6, p4, v7

    .line 30
    :cond_5d
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void

    .line 31
    :cond_77
    const-string v0, "getAAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 41
    array-length p2, p4

    const/4 v0, 0x2

    if-le p2, v0, :cond_85

    aget-object v6, p4, v0

    .line 43
    :cond_85
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_9e} :catch_9f

    :cond_9e
    :goto_9e
    return-void

    :catch_9f
    move-exception v0

    move-object p2, v0

    .line 47
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x191

    invoke-static {p4, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;F)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 5

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/device/DeviceFeatureImpl$d;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl$d;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Z)V
    .registers 6

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p3, :cond_17

    .line 92
    const-string p3, "android.intent.action.CALL"

    goto :goto_19

    .line 90
    :cond_17
    const-string p3, "android.intent.action.DIAL"

    .line 94
    :goto_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v3, :sswitch_data_442

    goto/16 :goto_173

    :sswitch_1e
    const-string v3, "lockOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_173

    :cond_28
    const/16 v11, 0x19

    goto/16 :goto_173

    :sswitch_2c
    const-string v3, "s.resolutionWidth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_173

    :cond_36
    const/16 v11, 0x18

    goto/16 :goto_173

    :sswitch_3a
    const-string v3, "setBrightness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_173

    :cond_44
    const/16 v11, 0x17

    goto/16 :goto_173

    :sswitch_48
    const-string v3, "getVolume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto/16 :goto_173

    :cond_52
    const/16 v11, 0x16

    goto/16 :goto_173

    :sswitch_56
    const-string v3, "setVolume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto/16 :goto_173

    :cond_60
    const/16 v11, 0x15

    goto/16 :goto_173

    :sswitch_64
    const-string v3, "isSetProxy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_173

    :cond_6e
    const/16 v11, 0x14

    goto/16 :goto_173

    :sswitch_72
    const-string/jumbo v3, "unlockOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_173

    :cond_7d
    const/16 v11, 0x13

    goto/16 :goto_173

    :sswitch_81
    const-string v3, "d.resolutionHeight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto/16 :goto_173

    :cond_8b
    const/16 v11, 0x12

    goto/16 :goto_173

    :sswitch_8f
    const-string/jumbo v3, "vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto/16 :goto_173

    :cond_9a
    const/16 v11, 0x11

    goto/16 :goto_173

    :sswitch_9e
    const-string v3, "__isWakelockNative__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    goto/16 :goto_173

    :cond_a8
    const/16 v11, 0x10

    goto/16 :goto_173

    :sswitch_ac
    const-string v3, "getBrightness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    goto/16 :goto_173

    :cond_b6
    const/16 v11, 0xf

    goto/16 :goto_173

    :sswitch_ba
    const-string v3, "dial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    goto/16 :goto_173

    :cond_c4
    const/16 v11, 0xe

    goto/16 :goto_173

    :sswitch_c8
    const-string v3, "beep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    goto/16 :goto_173

    :cond_d2
    const/16 v11, 0xd

    goto/16 :goto_173

    :sswitch_d6
    const-string v3, "getCurrentType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    goto/16 :goto_173

    :cond_e0
    const/16 v11, 0xc

    goto/16 :goto_173

    :sswitch_e4
    const-string v3, "getCurrentSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    goto/16 :goto_173

    :cond_ee
    const/16 v11, 0xb

    goto/16 :goto_173

    :sswitch_f2
    const-string v3, "getVAID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    goto/16 :goto_173

    :cond_fc
    const/16 v11, 0xa

    goto/16 :goto_173

    :sswitch_100
    const-string v3, "getOAID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10a

    goto/16 :goto_173

    :cond_10a
    const/16 v11, 0x9

    goto/16 :goto_173

    :sswitch_10e
    const-string v3, "getInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    goto/16 :goto_173

    :cond_118
    const/16 v11, 0x8

    goto/16 :goto_173

    :sswitch_11c
    const-string v3, "getAAID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    goto :goto_173

    :cond_125
    const/4 v11, 0x7

    goto :goto_173

    :sswitch_127
    const-string v3, "isWakelock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    goto :goto_173

    :cond_130
    const/4 v11, 0x6

    goto :goto_173

    :sswitch_132
    const-string v3, "getDeviceId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13b

    goto :goto_173

    :cond_13b
    const/4 v11, 0x5

    goto :goto_173

    :sswitch_13d
    const-string v3, "getCurrentAPN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    goto :goto_173

    :cond_146
    const/4 v11, 0x4

    goto :goto_173

    :sswitch_148
    const-string v3, "s.resolutionHeight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_151

    goto :goto_173

    :cond_151
    const/4 v11, 0x3

    goto :goto_173

    :sswitch_153
    const-string v3, "getDCloudID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15c

    goto :goto_173

    :cond_15c
    const/4 v11, 0x2

    goto :goto_173

    :sswitch_15e
    const-string v3, "d.resolutionWidth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_167

    goto :goto_173

    :cond_167
    const/4 v11, 0x1

    goto :goto_173

    :sswitch_169
    const-string v3, "setWakelock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_172

    goto :goto_173

    :cond_172
    const/4 v11, 0x0

    :goto_173
    const-string v3, "audio"

    const-string v12, "Device"

    const-string v14, "Device-"

    const-wide/16 v15, 0x1f4

    const/4 v13, 0x0

    packed-switch v11, :pswitch_data_4ac

    goto/16 :goto_207

    .line 13
    :pswitch_181
    aget-object v2, p3, v10

    .line 14
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto/16 :goto_207

    .line 112
    :pswitch_18c
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    .line 113
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 114
    invoke-interface {v2, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 115
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_1a3
    aget-object v2, p3, v10

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 131
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;F)V

    goto :goto_207

    .line 132
    :pswitch_1ad
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 133
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    .line 134
    iget v2, v1, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_1c9
    aget-object v2, p3, v10

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 136
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 137
    invoke-direct {v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(F)I

    move-result v2

    .line 138
    invoke-virtual {v0, v4, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 139
    invoke-virtual {v0, v8, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {v0, v6, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    invoke-virtual {v0, v5, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 142
    invoke-virtual {v0, v7, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 143
    invoke-virtual {v0, v9, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 144
    invoke-virtual {v0, v10, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_207

    .line 145
    :pswitch_1f3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->isWifiProxy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_200
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v13}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    :goto_207
    move-object v8, v1

    goto/16 :goto_441

    .line 257
    :pswitch_20a
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    .line 258
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 259
    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 260
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_221
    :try_start_221
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_227
    .catch Ljava/lang/NumberFormatException; {:try_start_221 .. :try_end_227} :catch_22e

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_233

    goto :goto_232

    :catch_22e
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_232
    move-wide v2, v15

    .line 268
    :cond_233
    iget-object v0, v1, Lio/dcloud/feature/device/DeviceFeatureImpl;->c:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 269
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_207

    .line 270
    :pswitch_242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_25a
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 336
    sget v2, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_270
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    aget-object v2, p3, v9

    invoke-static {v2, v9, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v5

    .line 339
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/device/DeviceFeatureImpl$a;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Z)V

    move-object v8, v1

    const-string v1, "PHONE"

    invoke-static {v6, v12, v1, v7, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_441

    :pswitch_2a2
    move-object v8, v1

    .line 355
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v0, 0x64

    invoke-direct {v1, v5, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 358
    :try_start_2aa
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2b0
    .catch Ljava/lang/NumberFormatException; {:try_start_2aa .. :try_end_2b0} :catch_2b5

    if-gtz v0, :cond_2b3

    goto :goto_2b9

    :cond_2b3
    move v9, v0

    goto :goto_2b9

    :catch_2b5
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b9
    if-ge v10, v9, :cond_441

    const/16 v0, 0x58

    .line 366
    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 368
    :try_start_2c0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c3
    .catch Ljava/lang/InterruptedException; {:try_start_2c0 .. :try_end_2c3} :catch_2c4

    goto :goto_2c8

    :catch_2c4
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b9

    :pswitch_2cb
    move-object v8, v1

    .line 371
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2d5
    move-object v8, v1

    .line 508
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    invoke-direct {v8, v1, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2e7
    move-object v8, v1

    .line 528
    aget-object v1, p3, v10

    .line 529
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/device/DeviceFeatureImpl$b;

    invoke-direct {v3, v8, v0, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl$b;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v12, v0, v7, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_441

    :pswitch_30d
    move-object v8, v1

    .line 552
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    aget-object v1, p3, v10

    .line 555
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    const-string v4, "not support"

    const/16 v5, 0x191

    if-eqz v3, :cond_342

    sget-object v3, Lio/dcloud/feature/internal/sdk/SDK;->customOAID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_342

    .line 558
    invoke-static {v5, v4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_441

    .line 562
    :cond_342
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    if-eqz v3, :cond_357

    const-string/jumbo v6, "||"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_350

    goto :goto_357

    .line 587
    :cond_350
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    invoke-direct {v8, v0, v2, v1, v3}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_441

    .line 588
    :cond_357
    :goto_357
    :try_start_357
    const-string v3, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 589
    const-string v6, "InitEntry"

    new-array v7, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_37b

    .line 591
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 592
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v3, v13, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_379
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_379} :catch_37a

    goto :goto_37b

    :catch_37a
    nop

    .line 595
    :cond_37b
    :goto_37b
    new-instance v3, Lio/dcloud/p/f3;

    new-instance v6, Lio/dcloud/feature/device/DeviceFeatureImpl$c;

    invoke-direct {v6, v8, v0, v2, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl$c;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lio/dcloud/p/f3;-><init>(Lio/dcloud/p/f3$b;)V

    .line 605
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/dcloud/p/f3;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_441

    .line 607
    invoke-static {v5, v4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_441

    :pswitch_39c
    move-object v8, v1

    .line 608
    iget-object v0, v8, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 609
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3ac
    move-object v8, v1

    .line 685
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getCurrentAPN()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b8

    return-object v13

    .line 689
    :cond_3b8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    :try_start_3cd
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_3d6
    .catch Lorg/json/JSONException; {:try_start_3cd .. :try_end_3d6} :catch_3d7

    return-object v0

    :catch_3d7
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v13

    :pswitch_3dc
    move-object v8, v1

    .line 697
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 698
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    .line 699
    invoke-interface {v0, v7}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 700
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3f4
    move-object v8, v1

    .line 816
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_415
    move-object v8, v1

    .line 818
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 819
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    .line 820
    invoke-interface {v0, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 821
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_42d
    move-object v8, v1

    .line 822
    aget-object v0, p3, v10

    invoke-static {v0, v10, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_43c

    .line 824
    iget-object v0, v8, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_441

    .line 826
    :cond_43c
    iget-object v0, v8, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_441
    :goto_441
    return-object v13

    :sswitch_data_442
    .sparse-switch
        -0x782c7caf -> :sswitch_169
        -0x69691910 -> :sswitch_15e
        -0x5950757e -> :sswitch_153
        -0x58fcc2f2 -> :sswitch_148
        -0x52a82624 -> :sswitch_13d
        -0x4208d879 -> :sswitch_132
        -0x1e0773e7 -> :sswitch_127
        -0x483826f -> :sswitch_11c
        -0x47f32dc -> :sswitch_10e
        -0x47d253d -> :sswitch_100
        -0x479f6a4 -> :sswitch_f2
        -0x2540c1c -> :sswitch_e4
        -0x2535ce3 -> :sswitch_d6
        0x2e142e -> :sswitch_c8
        0x2f0b70 -> :sswitch_ba
        0x14e2e447 -> :sswitch_ac
        0x166d4d50 -> :sswitch_9e
        0x1ae6756f -> :sswitch_8f
        0x2276fd3d -> :sswitch_81
        0x23934bec -> :sswitch_72
        0x24433276 -> :sswitch_64
        0x27f73e1c -> :sswitch_56
        0x34c20a10 -> :sswitch_48
        0x43073253 -> :sswitch_3a
        0x508ae8ff -> :sswitch_2c
        0x59437fa5 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_4ac
    .packed-switch 0x0
        :pswitch_42d
        :pswitch_415
        :pswitch_3f4
        :pswitch_3dc
        :pswitch_3ac
        :pswitch_3f4
        :pswitch_39c
        :pswitch_30d
        :pswitch_2e7
        :pswitch_30d
        :pswitch_30d
        :pswitch_2d5
        :pswitch_2cb
        :pswitch_2a2
        :pswitch_270
        :pswitch_25a
        :pswitch_242
        :pswitch_221
        :pswitch_20a
        :pswitch_200
        :pswitch_1f3
        :pswitch_1c9
        :pswitch_1ad
        :pswitch_1a3
        :pswitch_18c
        :pswitch_181
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->c:Landroid/content/Context;

    .line 3
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/16 v0, 0xa

    .line 4
    const-string v1, "My Lock"

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 8
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 9
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:I

    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.a (io.dcloud.feature.device.DeviceFeatureImpl$a)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->b:[Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->c:Z

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Z)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.b (io.dcloud.feature.device.DeviceFeatureImpl$b)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->c:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{\'imei\':\'\',\'imsi\':[],\'uuid\':\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateIMEI()V

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getUpdateIMSI()Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string/jumbo p1, "{\'imei\':\'%s\',\'imsi\':[\'%s\'],\'uuid\':\'%s\'}"

    invoke-static {p1, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.c (io.dcloud.feature.device.DeviceFeatureImpl$c)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/f3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 12

    if-eqz p2, :cond_e

    .line 1
    iget-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, p1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_e
    iget-object v3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    const/16 p1, 0x191

    const-string p2, "not support"

    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.d (io.dcloud.feature.device.DeviceFeatureImpl$d)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:F

.field final synthetic c:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->c:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->c:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->b:F

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V

    return-void
.end method
