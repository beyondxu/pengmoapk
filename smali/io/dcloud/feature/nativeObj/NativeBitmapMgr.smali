###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr (io.dcloud.feature.nativeObj.NativeBitmapMgr)
.class public Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    }
.end annotation


# instance fields
.field public final SUCCESS_INFO:Ljava/lang/String;

.field private mIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNativeViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/nativeObj/NativeView;",
            ">;"
        }
    .end annotation
.end field

.field private mSnaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/INativeBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    .line 920
    const-string v0, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->SUCCESS_INFO:Ljava/lang/String;

    return-void
.end method

.method private createBitmap(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    :cond_18
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-direct {v1, p1, p3, p2, p4}, Lio/dcloud/feature/nativeObj/NativeBitmap;-><init>(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method private getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/nativeObj/NativeView;

    if-nez p2, :cond_2f

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView;

    .line 4
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_2f
    return-object p2
.end method

.method private load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move-object v5, v1

    goto :goto_1b

    :cond_15
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v5, v0

    .line 9
    :goto_1b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_27

    :cond_22
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;

    invoke-direct {v1, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_27
    move-object v2, p1

    move-object v4, p3

    move-object v6, v1

    move-object v1, p2

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeBitmap;->load(Lio/dcloud/common/DHInterface/IWebview;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_e

    .line 2
    :cond_9
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 9
    :goto_e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;

    invoke-direct {v1, p0, p1, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 10
    :goto_1a
    invoke-virtual {p2, p3, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->loadBase64Data(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    .line 2
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    .line 3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1e

    move-object v6, v0

    goto :goto_24

    :cond_1e
    new-instance p4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;

    invoke-direct {p4, p0, p1, p5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v6, p4

    .line 15
    :goto_24
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2b

    goto :goto_30

    :cond_2b
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;

    invoke-direct {v0, p0, p1, p5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_30
    move-object v1, p2

    move-object v3, p3

    move-object v7, v0

    .line 16
    invoke-virtual/range {v1 .. v7}, Lio/dcloud/feature/nativeObj/NativeBitmap;->save(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/INativeBitmap;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_51

    .line 3
    :try_start_16
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeBitmap;->clear()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    .line 5
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 8
    :cond_1f
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v1, :cond_33

    .line 14
    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V

    goto :goto_33

    .line 17
    :cond_45
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 19
    invoke-static {}, Lio/dcloud/feature/nativeObj/NativeTypefaceFactory;->clearCache()V

    .line 20
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_55
    return-void
.end method

.method public destroyNativeView(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V

    if-ne v0, p1, :cond_15

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    const-string v0, "addNativeView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 3
    aget-object p1, p2, v1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 4
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-direct {p0, p2, p2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object p2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addNativeView outter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adadad"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_180

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addNativeView inner"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Lio/dcloud/feature/nativeObj/NativeView;->attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V

    return-object v3

    .line 11
    :cond_43
    const-string v0, "removeNativeView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 12
    check-cast p2, [Ljava/lang/Object;

    .line 14
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object p1

    if-eqz p1, :cond_180

    .line 17
    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView;->removeFromViewGroup()V

    return-object v3

    .line 19
    :cond_5b
    const-string v0, "getNativeView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 21
    :try_start_63
    check-cast p2, [Ljava/lang/Object;

    .line 22
    aget-object p1, p2, v1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 23
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_72

    return-object p1

    :catch_72
    move-exception v0

    move-object p1, v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_180

    .line 28
    :cond_79
    const-string v0, "makeRichText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 29
    check-cast p2, [Ljava/lang/Object;

    .line 30
    invoke-static {p2}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText([Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1

    .line 31
    :cond_88
    const-string v0, "View"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_110

    .line 33
    :try_start_91
    check-cast p2, [Ljava/lang/Object;

    .line 34
    aget-object p1, p2, v1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 35
    aget-object p1, p2, v2

    move-object v7, p1

    check-cast v7, Lio/dcloud/common/DHInterface/IWebview;

    .line 36
    aget-object p1, p2, v4

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    const/4 p1, 0x3

    .line 37
    aget-object p1, p2, p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    const/4 p1, 0x4

    .line 38
    aget-object p1, p2, p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_b3

    .line 40
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_b3
    move-object v10, p1

    .line 43
    array-length p1, p2

    const/4 v0, 0x5

    if-le p1, v0, :cond_bd

    .line 44
    aget-object p1, p2, v0

    check-cast p1, Lorg/json/JSONArray;

    goto :goto_be

    :cond_bd
    move-object p1, v3

    .line 46
    :goto_be
    const-string v0, "nativeView"

    .line 47
    array-length v1, p2

    const/4 v2, 0x6

    if-le v1, v2, :cond_c9

    .line 48
    aget-object p2, p2, v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 50
    :cond_c9
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_180

    .line 52
    const-string p2, "ImageSlider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 53
    new-instance v5, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/NativeImageSlider;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_fe

    .line 55
    :cond_e3
    const-string p2, "TitleNView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 56
    new-instance v5, Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/TitleNView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_fe

    .line 58
    :cond_f5
    new-instance v5, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    :goto_fe
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v0, v5, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {p2, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0, v7, v5, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_108} :catch_109

    return-object v5

    :catch_109
    move-exception v0

    move-object p1, v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_180

    .line 67
    :cond_110
    const-string v0, "updateSubNViews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_180

    .line 68
    check-cast p2, [Ljava/lang/Object;

    .line 70
    aget-object p1, p2, v2

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    .line 71
    aget-object p2, p2, v4

    check-cast p2, Lorg/json/JSONArray;

    .line 72
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v5, 0x0

    .line 73
    :goto_12a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_180

    .line 75
    :try_start_130
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17d

    .line 79
    iget-object v7, v4, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_147
    if-ge v9, v8, :cond_15e

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lio/dcloud/common/DHInterface/INativeView;

    .line 80
    invoke-interface {v10}, Lio/dcloud/common/DHInterface/INativeView;->getViewId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_147

    .line 81
    check-cast v10, Lio/dcloud/feature/nativeObj/NativeView;

    goto :goto_15f

    :cond_15e
    move-object v10, v3

    :goto_15f
    if-eqz v10, :cond_17d

    .line 87
    const-string v6, "tags"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 88
    const-string v7, "styles"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v6, :cond_171

    const/4 v7, 0x1

    goto :goto_172

    :cond_171
    const/4 v7, 0x0

    .line 90
    :goto_172
    invoke-virtual {v10, v0, v7}, Lio/dcloud/feature/nativeObj/NativeView;->setStyle(Lorg/json/JSONObject;Z)V

    .line 91
    invoke-virtual {p0, p1, v10, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_178
    .catch Lorg/json/JSONException; {:try_start_130 .. :try_end_178} :catch_179

    goto :goto_17d

    :catch_179
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17d
    :goto_17d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12a

    :cond_180
    :goto_180
    return-object v3
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "color"

    const-string v4, "viewId"

    const/4 v14, 0x0

    .line 1
    :try_start_b
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    if-nez v5, :cond_16

    return-object v14

    .line 5
    :cond_16
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_638

    .line 9
    :try_start_19
    invoke-static/range {p2 .. p2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-object v6, v14

    .line 14
    :goto_1f
    :try_start_1f
    sget-object v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_638

    const-string v7, "false"

    const-string v9, "ImageSlider"

    const-string v10, "null"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x1

    const/16 p2, 0x5

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_648

    :goto_37
    goto/16 :goto_267

    .line 566
    :pswitch_39
    :try_start_39
    aget-object v0, v3, v8

    .line 567
    aget-object v2, v3, v15

    .line 568
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 569
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    .line 570
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 571
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->getCurrentImageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_266

    .line 572
    :pswitch_59
    aget-object v0, v3, v8

    .line 573
    aget-object v4, v3, v15

    .line 574
    aget-object v3, v3, v13

    .line 575
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 576
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_267

    if-eqz v0, :cond_267

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_267

    .line 577
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 578
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 579
    invoke-virtual {v0, v2, v4}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->addImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto/16 :goto_267

    .line 580
    :pswitch_81
    aget-object v0, v3, v8

    .line 581
    aget-object v4, v3, v15

    .line 582
    aget-object v3, v3, v13

    .line 583
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 584
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_267

    if-eqz v0, :cond_267

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_267

    .line 585
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 586
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    .line 587
    invoke-virtual {v0, v2, v4}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->setImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto/16 :goto_267

    .line 588
    :pswitch_a9
    aget-object v0, v3, v8

    .line 589
    aget-object v4, v3, v15

    .line 590
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_b1} :catch_638

    if-eqz v0, :cond_267

    .line 593
    :try_start_b3
    new-instance v4, Lorg/json/JSONArray;

    aget-object v3, v3, v13

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1, v2, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_bd} :catch_267
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bd} :catch_638

    goto/16 :goto_267

    .line 595
    :pswitch_bf
    :try_start_bf
    aget-object v0, v3, v8

    .line 596
    aget-object v4, v3, v15

    .line 597
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 599
    aget-object v4, v3, v13

    .line 601
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_de

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_de

    .line 602
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    goto :goto_df

    :cond_de
    move-object v8, v14

    .line 604
    :goto_df
    aget-object v10, v3, v12

    .line 605
    const-string v11, "clear"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v2, v0

    invoke-virtual/range {v2 .. v13}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_4e5

    .line 606
    :pswitch_f1
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v2

    if-nez v2, :cond_102

    .line 608
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    .line 610
    :cond_102
    aget-object v2, v3, v8

    .line 611
    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->clearSwitchAnimation(Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_107} :catch_638

    goto/16 :goto_267

    .line 612
    :pswitch_109
    :try_start_109
    aget-object v0, v3, v8

    .line 613
    aget-object v2, v3, v15

    .line 614
    array-length v6, v3

    if-le v6, v13, :cond_113

    aget-object v6, v3, v13

    goto :goto_114

    :cond_113
    move-object v6, v14

    .line 615
    :goto_114
    array-length v7, v3

    if-le v7, v12, :cond_11b

    aget-object v3, v3, v12

    move-object v9, v3

    goto :goto_11c

    :cond_11b
    move-object v9, v14

    .line 616
    :goto_11c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v3, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_129} :catch_267

    const-string v8, "uuid"

    const-string v11, "texts"

    if-nez v7, :cond_14c

    .line 621
    :try_start_12f
    iget-object v3, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 622
    iget-object v3, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 623
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView;

    iput-boolean v15, v2, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    move-object v2, v14

    goto :goto_158

    :cond_149
    move-object v2, v14

    move-object v3, v2

    goto :goto_158

    .line 626
    :cond_14c
    invoke-virtual {v3, v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v3, v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-virtual {v1, v3}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v3

    .line 633
    :goto_158
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_195

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_195

    .line 634
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v7, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_186

    .line 637
    iget-object v6, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 638
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/nativeObj/NativeView;

    iput-boolean v15, v4, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    move-object v7, v6

    move-object v8, v14

    goto :goto_197

    .line 640
    :cond_186
    invoke-virtual {v7, v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-virtual {v7, v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 642
    invoke-virtual {v1, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v6

    move-object v8, v4

    move-object v7, v6

    goto :goto_197

    :cond_195
    move-object v7, v14

    move-object v8, v7

    .line 646
    :goto_197
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v4

    .line 647
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v5

    if-nez v5, :cond_1a8

    .line 648
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    :cond_1a8
    move-object v6, v2

    move-object v5, v3

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v0

    .line 650
    invoke-virtual/range {v2 .. v9}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->startAnimation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_1b1} :catch_267

    goto/16 :goto_267

    .line 651
    :pswitch_1b3
    :try_start_1b3
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_1c1

    .line 653
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toBase64Data()Ljava/lang/String;

    move-result-object v14

    .line 654
    :cond_1c1
    invoke-static {v14, v15}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_266

    .line 655
    :pswitch_1c7
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 656
    aget-object v2, v3, v15

    .line 657
    new-instance v4, Lorg/json/JSONObject;

    aget-object v6, v3, v13

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 658
    aget-object v6, v3, v12

    .line 659
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_267

    move-object v3, v0

    move-object v5, v4

    move-object v4, v2

    move-object/from16 v2, p1

    .line 661
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_267

    .line 662
    :pswitch_1ee
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 663
    aget-object v4, v3, v15

    .line 664
    aget-object v3, v3, v13

    if-eqz v0, :cond_267

    .line 666
    invoke-direct {v1, v2, v0, v4, v3}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    .line 667
    :pswitch_200
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 668
    aget-object v4, v3, v15

    .line 669
    aget-object v3, v3, v13

    if-eqz v0, :cond_267

    .line 671
    invoke-direct {v1, v2, v0, v4, v3}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    .line 672
    :pswitch_212
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_267

    .line 674
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle()V

    goto :goto_267

    .line 675
    :pswitch_220
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 676
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 677
    iget-object v3, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->clear()V

    goto :goto_267

    .line 681
    :pswitch_246
    aget-object v0, v3, v8

    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_255

    .line 682
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toJsString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 683
    :cond_255
    invoke-static {v14, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_266

    .line 684
    :pswitch_25a
    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getItems()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    .line 685
    invoke-static {v14, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_266
    move-object v14, v0

    :catch_267
    :cond_267
    :goto_267
    move-object v6, v1

    goto/16 :goto_646

    .line 686
    :pswitch_26a
    array-length v0, v3

    if-le v0, v13, :cond_28b

    .line 687
    aget-object v0, v3, v13

    .line 688
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_276

    goto :goto_28c

    .line 690
    :cond_276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28b

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28b

    .line 691
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28c

    :cond_28b
    move-object v0, v14

    .line 696
    :goto_28c
    aget-object v2, v3, v8

    aget-object v3, v3, v15

    invoke-direct {v1, v5, v2, v3, v0}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->createBitmap(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    .line 697
    :pswitch_294
    aget-object v0, v3, v8

    .line 698
    aget-object v2, v3, v15

    .line 699
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_2b5

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2b5

    .line 701
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2ab

    goto :goto_2ac

    :cond_2ab
    const/4 v15, 0x0

    :goto_2ac
    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_266

    .line 703
    :cond_2b5
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_2bd} :catch_638

    goto :goto_266

    .line 704
    :pswitch_2be
    :try_start_2be
    aget-object v4, v3, v8

    .line 705
    aget-object v5, v3, v15

    .line 706
    invoke-direct {v1, v4, v5}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v4

    if-eqz v4, :cond_267

    .line 708
    const-string v5, "#FFFFFF"

    .line 710
    aget-object v6, v3, v13

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2d0} :catch_328

    if-nez v6, :cond_2ef

    .line 712
    :try_start_2d2
    new-instance v6, Lorg/json/JSONObject;

    aget-object v8, v3, v13

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2d9
    .catch Lorg/json/JSONException; {:try_start_2d2 .. :try_end_2d9} :catch_2e6
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d9} :catch_638

    .line 713
    :try_start_2d9
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2ed

    .line 714
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2e3
    .catch Lorg/json/JSONException; {:try_start_2d9 .. :try_end_2e3} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_2e3} :catch_638

    goto :goto_2ed

    :catch_2e4
    move-exception v0

    goto :goto_2e8

    :catch_2e6
    move-exception v0

    move-object v6, v14

    .line 717
    :goto_2e8
    :try_start_2e8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 718
    aget-object v5, v3, v13
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_2ed} :catch_638

    :cond_2ed
    :goto_2ed
    move-object v8, v6

    goto :goto_2f0

    :cond_2ef
    move-object v8, v14

    .line 721
    :goto_2f0
    :try_start_2f0
    aget-object v0, v3, v12

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2f6} :catch_328

    if-nez v6, :cond_304

    :try_start_2f8
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_304

    .line 724
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_303} :catch_638

    goto :goto_305

    :cond_304
    move-object v6, v14

    .line 726
    :goto_305
    :try_start_305
    aget-object v9, v3, v11
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_307} :catch_328

    .line 729
    :try_start_307
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_30b} :catch_30d

    :goto_30b
    move v5, v0

    goto :goto_312

    .line 731
    :catch_30d
    :try_start_30d
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_30b

    .line 733
    :goto_312
    aget-object v0, v3, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v11, v0, 0x1

    .line 734
    const-string v10, "rect"
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_31c} :catch_328

    const/4 v3, 0x0

    move-object v1, v4

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v12, p0

    :try_start_323
    invoke-virtual/range {v1 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_4e5

    :catch_328
    move-exception v0

    move-object v12, v1

    goto :goto_34c

    :pswitch_32b
    move-object v12, v1

    .line 735
    aget-object v0, v3, v8

    .line 736
    aget-object v1, v3, v15

    .line 737
    invoke-direct {v12, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_348

    .line 739
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->clearAnimate()V

    goto :goto_348

    :pswitch_33a
    move-object v12, v1

    .line 740
    aget-object v0, v3, v8

    .line 741
    aget-object v1, v3, v15

    .line 742
    invoke-direct {v12, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_348

    .line 744
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->resetNativeView()V
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_348} :catch_34b

    :cond_348
    :goto_348
    move-object v6, v12

    goto/16 :goto_646

    :catch_34b
    move-exception v0

    :goto_34c
    move-object v6, v12

    goto/16 :goto_63a

    .line 745
    :pswitch_34f
    :try_start_34f
    aget-object v0, v3, v8

    .line 746
    aget-object v4, v3, v15

    .line 747
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 749
    aget-object v4, v3, v13

    .line 750
    aget-object v3, v3, v12

    .line 751
    invoke-virtual {v0, v2, v4, v3}, Lio/dcloud/feature/nativeObj/NativeView;->StartAnimate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_267

    .line 752
    :pswitch_362
    aget-object v0, v3, v8

    .line 753
    aget-object v2, v3, v15

    .line 754
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 756
    iget-object v3, v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->removeFromViewGroup()V

    goto/16 :goto_267

    .line 758
    :pswitch_376
    aget-object v0, v3, v8

    .line 759
    aget-object v2, v3, v15

    .line 760
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 762
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_267

    .line 764
    instance-of v2, v0, Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v2, :cond_267

    .line 765
    check-cast v0, Lio/dcloud/common/adapter/ui/DHImageView;

    .line 766
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 767
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_267

    .line 768
    :pswitch_399
    aget-object v0, v3, v8

    .line 769
    aget-object v3, v3, v15

    .line 770
    invoke-direct {v1, v0, v3}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 772
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 773
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3c0

    goto/16 :goto_37

    .line 782
    :cond_3c0
    iput-boolean v15, v0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    .line 783
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_3c6
    if-ge v8, v3, :cond_3d5

    .line 786
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 787
    instance-of v4, v4, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v4, :cond_3d2

    move v3, v8

    goto :goto_3d5

    :cond_3d2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c6

    .line 792
    :cond_3d5
    :goto_3d5
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_267

    .line 793
    :pswitch_3da
    aget-object v0, v3, v8

    .line 794
    aget-object v2, v3, v15

    .line 795
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_3e2} :catch_638

    .line 797
    :try_start_3e2
    aget-object v2, v3, v13

    .line 799
    array-length v4, v3

    if-gt v11, v4, :cond_3f1

    .line 800
    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_3f1
    if-eqz v0, :cond_267

    .line 803
    invoke-virtual {v0, v2, v8}, Lio/dcloud/feature/nativeObj/NativeView;->setInputFocusById(Ljava/lang/String;Z)V
    :try_end_3f6
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_3f6} :catch_267

    goto/16 :goto_267

    .line 804
    :pswitch_3f8
    :try_start_3f8
    aget-object v0, v3, v8

    .line 805
    aget-object v2, v3, v15

    .line 806
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_400} :catch_638

    .line 808
    :try_start_400
    aget-object v2, v3, v13

    if-eqz v0, :cond_267

    .line 810
    invoke-virtual {v0, v2}, Lio/dcloud/feature/nativeObj/NativeView;->getInputFocusById(Ljava/lang/String;)Z

    move-result v0

    .line 811
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_400 .. :try_end_410} :catch_267

    goto/16 :goto_266

    .line 812
    :pswitch_412
    :try_start_412
    aget-object v0, v3, v8

    .line 813
    aget-object v2, v3, v15

    .line 814
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_41a} :catch_638

    .line 816
    :try_start_41a
    aget-object v2, v3, v13

    if-eqz v0, :cond_267

    .line 818
    invoke-virtual {v0, v2}, Lio/dcloud/feature/nativeObj/NativeView;->getInputValueById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_41a .. :try_end_426} :catch_267

    goto/16 :goto_266

    .line 820
    :pswitch_428
    :try_start_428
    aget-object v0, v3, v8

    .line 821
    aget-object v4, v3, v15

    .line 822
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0
    :try_end_430
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_430} :catch_4e9

    if-eqz v0, :cond_4e5

    .line 826
    :try_start_432
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, v3, v13

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_439
    .catch Lorg/json/JSONException; {:try_start_432 .. :try_end_439} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_439} :catch_638

    :goto_439
    move-object v6, v4

    goto :goto_441

    .line 828
    :catch_43b
    :try_start_43b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_43b .. :try_end_440} :catch_4e9

    goto :goto_439

    .line 832
    :goto_441
    :try_start_441
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, v3, v12

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_448
    .catch Lorg/json/JSONException; {:try_start_441 .. :try_end_448} :catch_44a
    .catch Ljava/lang/Exception; {:try_start_441 .. :try_end_448} :catch_638

    :goto_448
    move-object v7, v4

    goto :goto_450

    .line 834
    :catch_44a
    :try_start_44a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_44f
    .catch Ljava/lang/Exception; {:try_start_44a .. :try_end_44f} :catch_4e9

    goto :goto_448

    .line 838
    :goto_450
    :try_start_450
    aget-object v3, v3, v11
    :try_end_452
    .catch Ljava/lang/Exception; {:try_start_450 .. :try_end_452} :catch_454

    move-object v8, v3

    goto :goto_455

    :catch_454
    move-object v8, v14

    .line 840
    :goto_455
    :try_start_455
    const-string v9, "input"

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto/16 :goto_4e5

    .line 841
    :pswitch_463
    aget-object v0, v3, v8

    .line 842
    aget-object v2, v3, v15

    .line 843
    invoke-direct {v1, v0, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    .line 844
    aget-object v3, p3, v13
    :try_end_46d
    .catch Ljava/lang/Exception; {:try_start_455 .. :try_end_46d} :catch_4e9

    if-eqz v0, :cond_4e5

    if-eqz v3, :cond_4e5

    .line 848
    :try_start_471
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, p3, v12

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_478
    .catch Lorg/json/JSONException; {:try_start_471 .. :try_end_478} :catch_47a
    .catch Ljava/lang/Exception; {:try_start_471 .. :try_end_478} :catch_638

    :goto_478
    move-object v6, v4

    goto :goto_480

    .line 850
    :catch_47a
    :try_start_47a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_47f
    .catch Ljava/lang/Exception; {:try_start_47a .. :try_end_47f} :catch_4e9

    goto :goto_478

    .line 854
    :goto_480
    :try_start_480
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, p3, v11

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_487
    .catch Lorg/json/JSONException; {:try_start_480 .. :try_end_487} :catch_488
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_487} :catch_638

    goto :goto_48d

    .line 856
    :catch_488
    :try_start_488
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 858
    :goto_48d
    aget-object v8, p3, p2

    const/4 v5, 0x6

    .line 859
    aget-object v2, p3, v5

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    .line 860
    const-string v9, "font"

    const/4 v2, 0x0

    move-object v7, v4

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_4e5

    :pswitch_4a4
    move-object v3, v2

    .line 861
    aget-object v0, p3, v8

    .line 862
    aget-object v4, p3, v15

    .line 863
    invoke-direct {v1, v0, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_4e5

    .line 865
    aget-object v4, p3, v13

    invoke-virtual {v1, v3, v5, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;

    move-result-object v4

    if-eqz v4, :cond_4e5

    .line 866
    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_4bb
    .catch Ljava/lang/Exception; {:try_start_488 .. :try_end_4bb} :catch_4e9

    if-eqz v5, :cond_4e5

    .line 869
    :try_start_4bd
    new-instance v5, Lorg/json/JSONObject;

    aget-object v6, p3, v12

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4c4
    .catch Lorg/json/JSONException; {:try_start_4bd .. :try_end_4c4} :catch_4c5
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4c4} :catch_638

    goto :goto_4ca

    .line 871
    :catch_4c5
    :try_start_4c5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_4ca
    .catch Ljava/lang/Exception; {:try_start_4c5 .. :try_end_4ca} :catch_4e9

    .line 875
    :goto_4ca
    :try_start_4ca
    new-instance v6, Lorg/json/JSONObject;

    aget-object v7, p3, v11

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4d1
    .catch Lorg/json/JSONException; {:try_start_4ca .. :try_end_4d1} :catch_4d2
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_4d1} :catch_638

    goto :goto_4d7

    .line 877
    :catch_4d2
    :try_start_4d2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 879
    :goto_4d7
    aget-object v8, p3, p2

    .line 880
    const-string v9, "img"

    const/4 v10, 0x1

    const/4 v3, 0x0

    move-object v2, v4

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;
    :try_end_4e5
    .catch Ljava/lang/Exception; {:try_start_4d2 .. :try_end_4e5} :catch_4e9

    :cond_4e5
    :goto_4e5
    move-object/from16 v6, p0

    goto/16 :goto_646

    :catch_4e9
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_63a

    :pswitch_4ee
    move-object v6, v1

    .line 881
    :try_start_4ef
    aget-object v0, p3, v8

    .line 882
    aget-object v1, p3, v15

    .line 883
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    move-object/from16 v3, p3

    .line 884
    aget-object v2, v3, v13

    if-eqz v0, :cond_646

    .line 885
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4ef .. :try_end_501} :catch_636

    if-nez v1, :cond_646

    .line 888
    :try_start_503
    new-instance v1, Lorg/json/JSONObject;

    aget-object v4, v3, v12

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_50a
    .catch Lorg/json/JSONException; {:try_start_503 .. :try_end_50a} :catch_50b
    .catch Ljava/lang/Exception; {:try_start_503 .. :try_end_50a} :catch_636

    goto :goto_510

    .line 890
    :catch_50b
    :try_start_50b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_50b .. :try_end_510} :catch_636

    .line 894
    :goto_510
    :try_start_510
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, v3, v11

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_517
    .catch Lorg/json/JSONException; {:try_start_510 .. :try_end_517} :catch_518
    .catch Ljava/lang/Exception; {:try_start_510 .. :try_end_517} :catch_636

    goto :goto_51d

    .line 896
    :catch_518
    :try_start_518
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 898
    :goto_51d
    aget-object v5, v3, p2

    move-object v3, v1

    move-object/from16 v1, p1

    .line 899
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/NativeView;->makeRichText(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_646

    :pswitch_527
    move-object v6, v1

    .line 900
    aget-object v0, v3, v8

    .line 901
    aget-object v0, v3, v15

    .line 903
    aget-object v0, v3, v13

    .line 904
    aget-object v1, v3, v12

    .line 905
    aget-object v3, v3, v11

    .line 906
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v4

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v8

    aput-object v0, v9, v15

    aput-object v1, v9, v13

    aput-object v3, v9, v12

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v7, v0, v8

    const-string v1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object v1, v0, v15

    const-string v1, "evalWeexJS"

    aput-object v1, v0, v13

    aput-object v9, v0, v12

    const/16 v1, 0xa

    invoke-interface {v4, v5, v1, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_646

    :pswitch_55f
    move-object v6, v1

    .line 907
    aget-object v0, v3, v8

    .line 908
    array-length v1, v3

    if-le v1, v15, :cond_568

    aget-object v1, v3, v15

    goto :goto_569

    :cond_568
    move-object v1, v14

    .line 909
    :goto_569
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_646

    .line 911
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_646

    :pswitch_57a
    move-object v6, v1

    .line 912
    aget-object v0, v3, v8

    .line 913
    aget-object v1, v3, v15

    .line 914
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_646

    .line 916
    aget-object v1, v3, v13

    .line 917
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_646

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_646

    .line 918
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->setTouchEventRect(Ljava/lang/String;)V

    goto/16 :goto_646

    :pswitch_598
    move-object v6, v1

    .line 919
    aget-object v0, v3, v8

    .line 920
    aget-object v1, v3, v15

    .line 921
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_646

    .line 923
    aget-object v1, v3, v13

    .line 924
    invoke-static {v1, v15, v8}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->interceptTouchEvent(Z)V

    goto/16 :goto_646

    :pswitch_5ae
    move-object v6, v1

    .line 925
    aget-object v0, v3, v8

    .line 926
    aget-object v1, v3, v15

    .line 927
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_646

    .line 929
    aget-object v1, v3, v13

    .line 930
    aget-object v3, v3, v12

    .line 931
    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/nativeObj/NativeView;->addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_646

    :pswitch_5c2
    move-object v6, v1

    .line 932
    aget-object v0, v3, v8

    .line 933
    aget-object v1, v3, v15
    :try_end_5c7
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_5c7} :catch_636

    .line 936
    :try_start_5c7
    new-instance v2, Lorg/json/JSONObject;

    aget-object v3, v3, v13

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5ce
    .catch Lorg/json/JSONException; {:try_start_5c7 .. :try_end_5ce} :catch_5cf
    .catch Ljava/lang/Exception; {:try_start_5c7 .. :try_end_5ce} :catch_636

    goto :goto_5d4

    .line 938
    :catch_5cf
    :try_start_5cf
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 940
    :goto_5d4
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getNativeView(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeView;

    move-result-object v0

    if-eqz v0, :cond_646

    .line 942
    invoke-virtual {v0, v2, v15}, Lio/dcloud/feature/nativeObj/NativeView;->setStyle(Lorg/json/JSONObject;Z)V

    goto/16 :goto_646

    :pswitch_5df
    move-object v6, v1

    .line 943
    aget-object v4, v3, v8

    .line 944
    aget-object v0, v3, v15

    .line 947
    const-string v1, "nativeView"

    .line 948
    array-length v5, v3

    if-le v5, v11, :cond_5eb

    .line 949
    aget-object v1, v3, v11
    :try_end_5eb
    .catch Ljava/lang/Exception; {:try_start_5cf .. :try_end_5eb} :catch_636

    .line 952
    :cond_5eb
    :try_start_5eb
    new-instance v5, Lorg/json/JSONObject;

    aget-object v7, v3, v13

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5f2
    .catch Lorg/json/JSONException; {:try_start_5eb .. :try_end_5f2} :catch_5f3
    .catch Ljava/lang/Exception; {:try_start_5eb .. :try_end_5f2} :catch_636

    goto :goto_5f8

    .line 954
    :catch_5f3
    :try_start_5f3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 956
    :goto_5f8
    array-length v7, v3
    :try_end_5f9
    .catch Ljava/lang/Exception; {:try_start_5f3 .. :try_end_5f9} :catch_636

    if-le v7, v12, :cond_603

    .line 958
    :try_start_5fb
    new-instance v7, Lorg/json/JSONArray;

    aget-object v3, v3, v12

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_602
    .catch Lorg/json/JSONException; {:try_start_5fb .. :try_end_602} :catch_603
    .catch Ljava/lang/Exception; {:try_start_5fb .. :try_end_602} :catch_636

    goto :goto_604

    :catch_603
    :cond_603
    move-object v7, v14

    .line 963
    :goto_604
    :try_start_604
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_646

    .line 965
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61f

    move-object v3, v0

    .line 966
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/NativeImageSlider;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v2, p1

    goto :goto_62b

    :cond_61f
    move-object v3, v0

    .line 968
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 970
    :goto_62b
    invoke-virtual {v6, v2, v0, v7}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V

    .line 971
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mNativeViews:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_635
    .catch Ljava/lang/Exception; {:try_start_604 .. :try_end_635} :catch_636

    goto :goto_646

    :catch_636
    move-exception v0

    goto :goto_63a

    :catch_638
    move-exception v0

    move-object v6, v1

    .line 1505
    :goto_63a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeBitmapMgr"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_646
    :goto_646
    return-object v14

    nop

    :pswitch_data_648
    .packed-switch 0x1
        :pswitch_5df
        :pswitch_5c2
        :pswitch_5ae
        :pswitch_598
        :pswitch_57a
        :pswitch_55f
        :pswitch_527
        :pswitch_4ee
        :pswitch_4a4
        :pswitch_463
        :pswitch_428
        :pswitch_412
        :pswitch_3f8
        :pswitch_3da
        :pswitch_399
        :pswitch_376
        :pswitch_362
        :pswitch_34f
        :pswitch_33a
        :pswitch_32b
        :pswitch_2be
        :pswitch_294
        :pswitch_26a
        :pswitch_25a
        :pswitch_246
        :pswitch_220
        :pswitch_212
        :pswitch_200
        :pswitch_1ee
        :pswitch_1c7
        :pswitch_1b3
        :pswitch_109
        :pswitch_f1
        :pswitch_bf
        :pswitch_a9
        :pswitch_81
        :pswitch_59
        :pswitch_39
    .end packed-switch
.end method

.method public getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapByUuid(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/INativeBitmap;

    return-object p1
.end method

.method public getItems()Lorg/json/JSONArray;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->mSnaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    :try_start_1b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->toJsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_f

    :catch_2e
    nop

    goto :goto_f

    :cond_30
    return-object v0
.end method

.method public getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_9

    :catch_7
    nop

    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_19

    .line 6
    const-string p1, "id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getBitmapById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    goto :goto_5a

    .line 10
    :cond_19
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_38

    .line 12
    :cond_20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "null"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_38

    :cond_37
    move-object p3, v0

    .line 15
    :goto_38
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-direct {v0, p2, p1, p1, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;-><init>(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method protected initViewDrawItme(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONArray;)V
    .registers 21

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    const-string v13, "richTextStyles"

    const-string v14, "rectStyles"

    const-string v15, "id"

    const-string v0, "color"

    if-eqz v12, :cond_1b9

    if-eqz p2, :cond_1b9

    const/4 v2, 0x0

    .line 1
    :goto_11
    :try_start_11
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1ae

    .line 2
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_28

    .line 5
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_29

    :cond_28
    move-object v8, v5

    .line 7
    :goto_29
    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v6, "img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_1b5

    const-string v7, "position"

    if-eqz v6, :cond_7d

    .line 9
    :try_start_39
    const-string v4, "src"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v1, v5, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->getSrcNativeBitmap(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmap;

    move-result-object v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_49} :catch_1b5

    .line 13
    :try_start_49
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "sprite"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_1b5

    goto :goto_5a

    .line 15
    :catch_55
    :try_start_55
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_1b5

    .line 19
    :goto_5a
    :try_start_5a
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_1b5

    goto :goto_69

    .line 21
    :catch_64
    :try_start_64
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :goto_69
    const-string v3, "img"

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v9

    move-object v9, v3

    const/4 v3, 0x0

    move v7, v2

    move-object v2, v4

    const/4 v4, -0x1

    move/from16 v16, v7

    const/4 v7, 0x0

    move-object v12, v0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_c1

    :cond_7d
    move-object v12, v0

    move/from16 v16, v2

    .line 24
    const-string v0, "font"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_86} :catch_1b5

    const-string v1, "text"

    if-eqz v0, :cond_c7

    .line 25
    :try_start_8a
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8e} :catch_1b5

    if-eqz v0, :cond_c1

    .line 29
    :try_start_90
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_99} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_1b5

    goto :goto_9f

    .line 31
    :catch_9a
    :try_start_9a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_1b5

    :goto_9f
    move-object v6, v1

    .line 35
    :try_start_a0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "textStyles"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ab} :catch_1b5

    goto :goto_b1

    .line 37
    :catch_ac
    :try_start_ac
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_b1
    move-object v7, v1

    .line 39
    const-string v9, "font"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v3, v0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    :cond_c1
    :goto_c1
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    goto/16 :goto_1a7

    .line 41
    :cond_c7
    const-string v0, "rect"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_cd} :catch_1b5

    const-string v2, "null"

    if-eqz v0, :cond_124

    .line 42
    :try_start_d1
    const-string v0, "#FFFFFF"

    .line 43
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 44
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_dd
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_f5

    :cond_f4
    move-object v6, v5

    .line 54
    :goto_f5
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 55
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 57
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_109} :catch_1b5

    :cond_109
    move-object v7, v5

    .line 61
    :try_start_10a
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10e} :catch_110

    :goto_10e
    move v4, v0

    goto :goto_115

    .line 63
    :catch_110
    :try_start_110
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_10e

    .line 65
    :goto_115
    const-string v9, "rect"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_c1

    .line 66
    :cond_124
    const-string v0, "richtext"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 67
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_146

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_147

    :cond_146
    move-object v2, v5

    .line 74
    :goto_147
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 75
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_151
    move-object/from16 v1, p1

    move-object v3, v2

    move-object v4, v5

    move-object v5, v8

    move-object v2, v0

    move-object/from16 v0, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/NativeView;->makeRichText(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_c1

    .line 78
    :cond_15e
    const-string v0, "input"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_164} :catch_1b5

    if-eqz v0, :cond_198

    .line 81
    :try_start_166
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_166 .. :try_end_16f} :catch_170
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16f} :catch_1b5

    goto :goto_175

    .line 83
    :catch_170
    :try_start_170
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_175} :catch_1b5

    :goto_175
    move-object v6, v0

    .line 87
    :try_start_176
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "inputStyles"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_181
    .catch Lorg/json/JSONException; {:try_start_176 .. :try_end_181} :catch_182
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_181} :catch_1b5

    goto :goto_187

    .line 89
    :catch_182
    :try_start_182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_187
    move-object v7, v0

    .line 91
    const-string v9, "input"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    goto :goto_1a7

    :cond_198
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 92
    const-string v2, "weex"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 93
    invoke-virtual {v0, v1, v3, v8}, Lio/dcloud/feature/nativeObj/NativeView;->makeWeexView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1a7
    :goto_1a7
    add-int/lit8 v2, v16, 0x1

    move-object v0, v12

    move-object/from16 v12, p3

    goto/16 :goto_11

    :cond_1ae
    move-object/from16 v0, p2

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->nativeInvalidate(Z)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1b4} :catch_1b5

    goto :goto_1b9

    :catch_1b5
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b9
    :goto_1b9
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeBitmapMgr$1)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$1;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeBitmapMgr$2)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->load(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    if-nez p2, :cond_f

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$string;->dcloud_native_obj_load_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$2;->val$_callbackID:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "{\"code\":-100,\"message\":\""

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass3 (io.dcloud.feature.nativeObj.NativeBitmapMgr$3)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$3;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass4 (io.dcloud.feature.nativeObj.NativeBitmapMgr$4)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->loadBase64Data(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$_callbackID:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{\"code\":-100,\"message\":\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    .line 2
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lio/dcloud/base/R$string;->dcloud_native_obj_load_failed:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass5 (io.dcloud.feature.nativeObj.NativeBitmapMgr$5)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 p1, 0x0

    if-eqz p2, :cond_34

    .line 1
    instance-of v0, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    if-eqz v0, :cond_34

    .line 2
    check-cast p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    .line 3
    iget-object v0, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->path:Ljava/lang/String;

    iget v1, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const-string p2, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    invoke-static {p2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_35

    :cond_34
    move-object v2, p1

    .line 5
    :goto_35
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$5;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass6 (io.dcloud.feature.nativeObj.NativeBitmapMgr$6)
.class Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;->save(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

.field final synthetic val$_callbackID:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmapMgr;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmapMgr;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$_callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$6;->val$_callbackID:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "{\"code\":-100,\"message\":\"\"+webview.getContext().getString(R.string.dcloud_native_obj_load_failed)+\"\"}"

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.AnonymousClass7 (io.dcloud.feature.nativeObj.NativeBitmapMgr$7)
.class synthetic Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    :catch_174
    :try_start_174
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    :catch_180
    :try_start_180
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    :catch_18c
    :try_start_18c
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    :catch_198
    :try_start_198
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    :try_start_1a4
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :try_start_1b0
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :try_start_1bc
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$7;->$SwitchMap$io$dcloud$feature$nativeObj$NativeBitmapMgr$Action:[I

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1c8

    :catch_1c8
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmapMgr.Action (io.dcloud.feature.nativeObj.NativeBitmapMgr$Action)
.class public final enum Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;


# direct methods
.method private static synthetic $values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .registers 3

    const/16 v0, 0x26

    .line 1
    new-array v0, v0, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "Bitmap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "getItems"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "getBitmapById"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "clear"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "load"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "loadBase64Data"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "save"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "toBase64Data"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 2
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "View"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "startAnimation"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "clearAnimation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "getViewById"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "drawBitmap"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "drawText"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "evalWeexJS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "drawRichText"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "show"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "hide"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "setImages"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "addImages"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 3
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_animate"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_reset"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_restore"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_drawRect"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "isVisible"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "addEventListener"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "interceptTouchEvent"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 4
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "setTouchEventRect"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "bitmapRecycle"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "setStyle"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_clearRect"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_draw"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "view_close"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "currentImageIndex"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 5
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "drawInput"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "getInputValueById"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "getInputFocusById"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "setInputFocusById"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 6
    invoke-static {}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object v0
.end method
