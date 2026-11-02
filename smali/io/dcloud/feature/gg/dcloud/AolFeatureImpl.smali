###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl (io.dcloud.feature.gg.dcloud.AolFeatureImpl)
.class public Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;,
        Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$MyHandler;
    }
.end annotation


# static fields
.field private static volatile isRequestSuccess:Z = false

.field private static isSplashClose:Z = false

.field private static mHandler:Landroid/os/Handler;

.field private static retryCount:I

.field private static splashAd:Lio/dcloud/p/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$MyHandler;-><init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;)V

    sput-object v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    sput v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->retryCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isRequestSuccess:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isRequestSuccess:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isSplashClose:Z

    return v0
.end method

.method static synthetic access$400()Lio/dcloud/p/u;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$508()I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    const-string v0, "onAppCreate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v2, "doForFeature"

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 3
    check-cast p1, Landroid/content/Context;

    .line 4
    const-string p0, "AolFeatureImpl onAppCreate"

    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p0, "uniad"

    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f8

    .line 7
    invoke-static {p1, v1, p0, v0}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v2, "cgk"

    invoke-static {p1, v1, v2, v0}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v1, p0}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v1, v2}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f8

    .line 12
    :cond_30
    const-string v0, "pull"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "ba_pull"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_172

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto/16 :goto_172

    .line 62
    :cond_45
    const-string v0, "save"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 63
    check-cast p1, [Ljava/lang/Object;

    .line 64
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 65
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 66
    aget-object p1, p1, v5

    check-cast p1, Ljava/util/HashMap;

    .line 67
    const-string v1, "AolFeatureImpl save"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v0, p1}, Lio/dcloud/feature/gg/AolSplashUtil;->saveOperate(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_1f8

    .line 69
    :cond_65
    const-string v0, "formatUrl_wanka"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 70
    check-cast p1, [Ljava/lang/Object;

    .line 71
    aget-object p0, p1, v5

    check-cast p0, [Ljava/lang/Object;

    .line 72
    aget-object p1, p0, v7

    check-cast p1, Ljava/lang/String;

    .line 73
    aget-object p0, p0, v6

    check-cast p0, Lorg/json/JSONObject;

    .line 74
    invoke-static {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_80
    const-string v0, "handleArgs_wanka"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 76
    check-cast p1, [Ljava/lang/Object;

    .line 77
    aget-object p0, p1, v5

    check-cast p0, Lorg/json/JSONObject;

    .line 78
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getArgsJsonData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 79
    :cond_93
    const-string v0, "onWillCloseSplash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 80
    sput-boolean v6, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isSplashClose:Z

    .line 81
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isRequestSuccess:Z

    .line 82
    check-cast p1, [Ljava/lang/Object;

    .line 83
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 84
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_c5

    .line 85
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_b8

    goto :goto_c5

    .line 89
    :cond_b8
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    if-eqz p0, :cond_1f8

    .line 90
    aget-object p1, p1, v5

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/p/u;->a(Landroid/view/View;)V

    goto/16 :goto_1f8

    :cond_c5
    :goto_c5
    return-object v3

    .line 91
    :cond_c6
    const-string v0, "onCloseSplashNoAd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 92
    sput-boolean v6, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isSplashClose:Z

    .line 93
    check-cast p1, [Ljava/lang/Object;

    .line 94
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 95
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_f6

    .line 96
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f6

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_ea

    goto :goto_f6

    .line 100
    :cond_ea
    const-string p1, "AolFeatureImpl onCloseSplashNoAd"

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_f6
    :goto_f6
    return-object v3

    .line 102
    :cond_f7
    const-string v0, "onCreateAdSplash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 103
    sget-boolean p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isRequestSuccess:Z

    if-nez p0, :cond_104

    return-object v3

    .line 104
    :cond_104
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    if-nez p0, :cond_109

    return-object v3

    .line 105
    :cond_109
    sget-boolean p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isSplashClose:Z

    if-eqz p0, :cond_10e

    return-object v3

    .line 107
    :cond_10e
    check-cast p1, [Ljava/lang/Object;

    .line 108
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 109
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_14f

    .line 110
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_14f

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_128

    goto :goto_14f

    .line 114
    :cond_128
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_133

    return-object v3

    .line 115
    :cond_133
    aget-object p0, p1, v6

    check-cast p0, Lio/dcloud/common/DHInterface/ICallBack;

    .line 116
    const-string p1, "AolFeatureImpl onCreateAdSplash"

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object p1, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    if-eqz p1, :cond_1f8

    invoke-virtual {p1}, Lio/dcloud/p/b5;->l()Z

    move-result p1

    if-eqz p1, :cond_1f8

    .line 118
    sget-object p1, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    const-string v1, ""

    invoke-virtual {p1, v0, v1, p0}, Lio/dcloud/p/u;->a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_14f
    :goto_14f
    return-object v3

    .line 120
    :cond_150
    const-string p1, "onAppAttachBaseContext"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15f

    .line 121
    const-string p0, "AolFeatureImpl onAppAttachBaseContext"

    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f8

    .line 122
    :cond_15f
    const-string p1, "onSplashclosed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f8

    .line 123
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    if-eqz p0, :cond_16e

    .line 124
    invoke-virtual {p0}, Lio/dcloud/p/u;->w()V

    .line 126
    :cond_16e
    sput-object v3, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    goto/16 :goto_1f8

    .line 127
    :cond_172
    :goto_172
    check-cast p1, [Ljava/lang/Object;

    .line 128
    aget-object v0, p1, v7

    check-cast v0, Landroid/content/Context;

    .line 129
    aget-object v2, p1, v6

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18f

    .line 132
    invoke-static {}, Lio/dcloud/p/c4;->b()Z

    move-result p0

    if-eqz p0, :cond_18f

    invoke-static {v0, v2}, Lio/dcloud/p/s;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18f

    return-object v3

    .line 136
    :cond_18f
    invoke-static {v0, v1}, Lio/dcloud/p/h4;->a(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/p/h4;

    .line 137
    new-instance p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    new-instance v4, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    invoke-direct {v4, v0, p1, v2}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x3

    new-array v8, v8, [Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    aput-object p0, v8, v7

    aput-object v1, v8, v6

    aput-object v4, v8, v5

    invoke-static {v0, v2, v7, v3, v8}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    .line 138
    aget-object p0, p1, v5

    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bf

    aget-object p0, p1, v5

    const-string p1, "RETRY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f5

    :cond_1bf
    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1f5

    .line 139
    sput-object v3, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    .line 140
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isSplashClose:Z

    .line 141
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->isRequestSuccess:Z

    .line 142
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    sput v7, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->retryCount:I

    .line 144
    new-instance p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    invoke-direct {p0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;-><init>()V

    invoke-virtual {p0, v7}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->width(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v7}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->height(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->build()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object p0

    .line 145
    new-instance p1, Lio/dcloud/p/u;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p1, v1}, Lio/dcloud/p/u;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->splashAd:Lio/dcloud/p/u;

    .line 146
    new-instance v1, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v1, v7}, Lio/dcloud/p/u;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V

    .line 174
    :cond_1f5
    invoke-static {v7}, Lio/dcloud/feature/gg/AolSplashUtil;->setShowInterstitialAd(Z)V

    :cond_1f8
    :goto_1f8
    return-object v3
.end method

.method private static setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.dcloud.HBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->postSplashError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl.AnonymousClass1 (io.dcloud.feature.gg.dcloud.AolFeatureImpl$1)
.class Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSplashAOLLoad$0(Landroid/content/Context;)V
    .registers 2

    .line 1
    instance-of v0, p0, Lio/dcloud/WebAppActivity;

    if-eqz v0, :cond_d

    .line 2
    move-object v0, p0

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->initBackToFrontSplashAd()V

    :cond_d
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AolFeatureImpl load fail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doForFeature"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x1388

    if-eq p1, v0, :cond_2a

    const/16 v0, -0x1389

    if-eq p1, v0, :cond_2a

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;->val$context:Landroid/content/Context;

    const-string v0, "-8003"

    invoke-static {p1, v0, p2, p3}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_2a
    return-void
.end method

.method public onSplashAOLLoad()V
    .registers 4

    .line 1
    const-string v0, "doForFeature"

    const-string v1, "AolFeatureImpl load success"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;->val$context:Landroid/content/Context;

    new-instance v2, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl$1$$ExternalSyntheticLambda0 (io.dcloud.feature.gg.dcloud.AolFeatureImpl$1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;->lambda$onSplashAOLLoad$0(Landroid/content/Context;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl.AdReceiver (io.dcloud.feature.gg.dcloud.AolFeatureImpl$AdReceiver)
.class public Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/IAolReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AdReceiver"
.end annotation


# instance fields
.field private _args:[Ljava/lang/Object;

.field private appid:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->appid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->appid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getActivities()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 8
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_29

    aget-object v5, v1, v4

    .line 9
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 12
    :cond_29
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 16
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_4c

    .line 17
    array-length v3, v1

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_4c

    aget-object v5, v1, v4

    .line 18
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 21
    :cond_4c
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    .line 23
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 25
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_70

    .line 26
    array-length v3, v1

    const/4 v4, 0x0

    :goto_64
    if-ge v4, v3, :cond_70

    aget-object v5, v1, v4

    .line 27
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 30
    :cond_70
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 32
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_92

    .line 35
    array-length v3, v1

    :goto_86
    if-ge v2, v3, :cond_92

    aget-object v4, v1, v2

    .line 36
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8f} :catch_92

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :catch_92
    :cond_92
    return-object v0
.end method

.method synthetic lambda$onReceiver$0$io-dcloud-feature-gg-dcloud-AolFeatureImpl$AdReceiver()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_13

    .line 2
    move-object v1, v0

    check-cast v1, Lio/dcloud/WebAppActivity;

    invoke-virtual {v1, v0}, Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->initBackToFrontSplashAd()V

    :cond_13
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$102(Z)Z

    .line 2
    const-string v0, "uniad"

    const-string v1, ""

    const-string v2, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {v2, v0, v1}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "request Fail"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$500()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_52

    .line 5
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$508()I

    .line 6
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    new-instance v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;-><init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$800()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$500()I

    move-result v1

    const v2, 0xea60

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    :cond_52
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    if-nez p1, :cond_7a

    const/4 p1, -0x1

    .line 20
    :try_start_5a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_5f

    goto :goto_61

    :catch_5f
    nop

    const/4 v0, -0x1

    .line 22
    :goto_61
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    if-ne v0, p1, :cond_66

    goto :goto_74

    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "http:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_74
    const/4 p1, 0x0

    const-string v0, "-8001"

    invoke-static {v1, v0, p2, p1}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_7a
    return-void
.end method

.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v0, p0

    .line 1
    const-string v1, "al"

    const-string v2, "doForFeature"

    const-string v3, "success when request"

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$300()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    aget-object v2, v2, v3

    if-nez v2, :cond_2e

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3
    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    const-string v4, "\u5e7f\u544a\u5173\u95ed\u65f6\u672a\u8bf7\u6c42\u6210\u529f"

    const/4 v5, 0x0

    const-string v6, "-8002"

    invoke-static {v2, v6, v4, v5}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_2e
    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$102(Z)Z

    .line 8
    :try_start_32
    const-string v4, "data"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v7, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    const-string v8, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {v7, v8}, Lio/dcloud/common/adapter/util/SP;->getsOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/p/h4;

    move-result-object v7
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4c} :catch_171

    const-string v9, "uniad"

    const-string v10, "cad"

    const-string v11, ""

    if-eqz v4, :cond_11a

    .line 14
    :try_start_54
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 16
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_60

    :cond_5f
    move-object v12, v11

    .line 19
    :goto_60
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6d

    .line 20
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v1, v13}, Lio/dcloud/p/h4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6d
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 24
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_105

    .line 26
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->getActivities()Ljava/util/List;

    move-result-object v4

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 28
    :goto_81
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 29
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const/16 v16, 0x1

    .line 31
    const-string v2, "mf-a"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_99} :catch_171

    const/16 p1, 0x0

    const-string v8, "1"

    const-string v3, "r"

    if-eqz v2, :cond_c9

    .line 32
    :try_start_a1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_c9

    move-object/from16 v17, v1

    const/4 v15, 0x0

    .line 33
    :goto_aa
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v15, v1, :cond_ee

    .line 34
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ee

    :cond_c6
    add-int/lit8 v15, v15, 0x1

    goto :goto_aa

    :cond_c9
    move-object/from16 v17, v1

    .line 43
    const-string v1, "cls-a"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 44
    :goto_d2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_ee

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_dc} :catch_171

    .line 47
    :try_start_dc
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 49
    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ea} :catch_eb

    goto :goto_ee

    :catch_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    :cond_ee
    :goto_ee
    move-object/from16 v1, v17

    const/4 v2, 0x1

    const/4 v3, 0x2

    goto :goto_81

    :cond_f3
    const/16 p1, 0x0

    const/16 v16, 0x1

    .line 57
    :try_start_f7
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_101

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58
    :cond_101
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_105
    const/16 p1, 0x0

    const/16 v16, 0x1

    goto :goto_111

    :cond_10a
    const/16 p1, 0x0

    const/16 v16, 0x1

    .line 61
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_111
    invoke-virtual {v7, v9, v12}, Lio/dcloud/p/h4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "cgk"

    invoke-virtual {v7, v1, v12}, Lio/dcloud/p/h4;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    :cond_11a
    const/16 p1, 0x0

    const/16 v16, 0x1

    .line 66
    invoke-virtual {v7, v9, v11}, Lio/dcloud/p/h4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_124
    invoke-static {v5}, Lio/dcloud/feature/gg/AolSplashUtil;->saveOperate(Ljava/util/HashMap;)V

    .line 71
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_153

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v2, "rad"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v3, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    new-instance v4, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    iget-object v5, v0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    aput-object v3, v5, p1

    aput-object v4, v5, v16

    invoke-static {v2, v1, v5}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pullRad(Landroid/content/Context;Ljava/util/Map;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    .line 77
    :cond_153
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$400()Lio/dcloud/p/u;

    move-result-object v1

    if-eqz v1, :cond_171

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;->access$400()Lio/dcloud/p/u;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/p/u;->v()V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_171} :catch_171

    :catch_171
    :cond_171
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl.AdReceiver.AnonymousClass1 (io.dcloud.feature.gg.dcloud.AolFeatureImpl$AdReceiver$1)
.class Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->access$600(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->access$700(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pull"

    const-string v3, "RETRY"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/p/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0 (io.dcloud.feature.gg.dcloud.AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;->lambda$onReceiver$0$io-dcloud-feature-gg-dcloud-AolFeatureImpl$AdReceiver()V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolFeatureImpl.MyHandler (io.dcloud.feature.gg.dcloud.AolFeatureImpl$MyHandler)
.class Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$MyHandler;
.super Landroid/os/Handler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/AolFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method
