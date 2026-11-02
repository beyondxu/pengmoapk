###### Class io.dcloud.feature.gg.dcloud.ADResult (io.dcloud.feature.gg.dcloud.ADResult)
.class public Lio/dcloud/feature/gg/dcloud/ADResult;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private handler:Lio/dcloud/p/u3;

.field private receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;


# direct methods
.method public varargs constructor <init>([Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    .line 3
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/p/r0;->a()Lio/dcloud/p/t1;

    move-result-object p1

    check-cast p1, Lio/dcloud/p/u3;

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    return-void
.end method

.method private gd()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {}, Lio/dcloud/EntryProxy;->getInstnace()Lio/dcloud/EntryProxy;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_59

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    invoke-virtual {v3, v1}, Lio/dcloud/p/u3;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->d:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v3, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    invoke-direct {v3, v1}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    aput-object v7, v6, v5

    const-string v4, ""

    const/4 v5, 0x2

    aput-object v4, v6, v5

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v6, v0}, Lio/dcloud/feature/gg/dcloud/AolFeatureImpl$AdReceiver;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v5

    .line 9
    :cond_59
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cad(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    if-eqz v0, :cond_65

    const/4 v0, 0x0

    .line 3
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p1, "ret"

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_29

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_65

    aget-object v4, p1, v3

    .line 7
    instance-of v5, v4, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-nez v5, :cond_23

    instance-of v5, v4, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    if-eqz v5, :cond_26

    .line 8
    :cond_23
    invoke-interface {v4, v1}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onReceiver(Lorg/json/JSONObject;)V

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 11
    :cond_29
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_65

    aget-object v5, v2, v4

    .line 12
    instance-of v6, v5, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-nez v6, :cond_39

    instance-of v6, v5, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    if-eqz v6, :cond_46

    .line 13
    :cond_39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "desc"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_46} :catch_49

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :catch_49
    move-exception p1

    .line 16
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v2, v1

    :goto_4d
    if-ge v0, v2, :cond_65

    aget-object v3, v1, v0

    .line 17
    instance-of v4, v3, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-nez v4, :cond_59

    instance-of v4, v3, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    if-eqz v4, :cond_62

    .line 18
    :cond_59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception"

    invoke-interface {v3, v5, v4}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_65
    return-void
.end method

.method public dc(Ljava/lang/String;II)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    if-eqz v0, :cond_e0

    const-string v1, "NotFountDataError"

    const/16 v2, -0x138f

    const/4 v3, 0x0

    if-eqz p2, :cond_25

    .line 3
    array-length p1, v0

    :goto_c
    const-string p2, "network error"

    if-ge v3, p1, :cond_1d

    aget-object p3, v0, v3

    .line 4
    instance-of v4, p3, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-eqz v4, :cond_17

    goto :goto_1a

    .line 6
    :cond_17
    invoke-interface {p3, v1, p2}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 8
    :cond_1d
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    if-eqz p1, :cond_e0

    .line 9
    invoke-virtual {p1, v2, p2}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    return-void

    :cond_25
    const/16 p2, 0xc8

    if-eq p3, p2, :cond_49

    .line 12
    array-length p1, v0

    :goto_2a
    if-ge v3, p1, :cond_3d

    aget-object p2, v0, v3

    .line 13
    instance-of v4, p2, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-eqz v4, :cond_33

    goto :goto_3a

    .line 15
    :cond_33
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 17
    :cond_3d
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    if-eqz p1, :cond_e0

    .line 18
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    return-void

    .line 22
    :cond_49
    :try_start_49
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string p1, "ret"

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_7b

    .line 25
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length p3, p1

    const/4 v0, 0x0

    :goto_5b
    if-ge v0, p3, :cond_73

    aget-object v1, p1, v0

    .line 26
    instance-of v4, v1, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-eqz v4, :cond_64

    goto :goto_70

    .line 28
    :cond_64
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/feature/gg/AolSplashUtil;->decodeChannel(Lorg/json/JSONObject;)V

    .line 29
    invoke-interface {v1, p2}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onReceiver(Lorg/json/JSONObject;)V

    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 31
    :cond_73
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    if-eqz p1, :cond_e0

    .line 32
    invoke-virtual {p1, p2}, Lio/dcloud/p/u3;->a(Lorg/json/JSONObject;)V

    return-void

    .line 35
    :cond_7b
    iget-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v0, p3
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7e} :catch_bc

    const/4 v1, 0x0

    :goto_7f
    const-string v4, "desc"

    if-ge v1, v0, :cond_98

    :try_start_83
    aget-object v5, p3, v1

    .line 36
    instance-of v6, v5, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-eqz v6, :cond_8a

    goto :goto_95

    .line 38
    :cond_8a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 40
    :cond_98
    iget-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    if-eqz p3, :cond_e0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_bb} :catch_bc

    return-void

    :catch_bc
    move-exception p1

    .line 45
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->receivers:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length p3, p2

    :goto_c0
    if-ge v3, p3, :cond_d5

    aget-object v0, p2, v3

    .line 46
    instance-of v1, v0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    if-eqz v1, :cond_c9

    goto :goto_d2

    .line 48
    :cond_c9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception"

    invoke-interface {v0, v4, v1}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    .line 50
    :cond_d5
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADResult;->handler:Lio/dcloud/p/u3;

    if-eqz p2, :cond_e0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    :cond_e0
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADResult.CADReceiver (io.dcloud.feature.gg.dcloud.ADResult$CADReceiver)
.class public Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/IAolReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CADReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkPromptData(Lorg/json/JSONArray;)V
    .registers 11

    const-string v0, "action"

    .line 1
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_f4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_f4

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f0

    .line 4
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_f0

    .line 5
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "prompt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_f4

    const-string v5, "message"

    if-eqz v4, :cond_65

    .line 6
    :try_start_2a
    const-string v4, "onclose"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "title"

    .line 8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 9
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;

    invoke-direct {v5, p0, v4}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;-><init>(Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;Ljava/lang/String;)V

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_f0

    .line 22
    :cond_65
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "toast"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 23
    new-instance v4, Lio/dcloud/p/g0;

    iget-object v6, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    const-string v7, ""

    invoke-direct {v4, v6, v7}, Lio/dcloud/p/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 25
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 26
    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 27
    iget-object v8, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    invoke-static {v8}, Lio/dcloud/p/a4;->a(Landroid/content/Context;)Lio/dcloud/p/a4;

    move-result-object v8

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/dcloud/p/a4;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    invoke-virtual {v4, v3, v6}, Lio/dcloud/p/g0;->a(Landroid/view/View;Landroid/widget/TextView;)V

    .line 31
    invoke-virtual {v4, v7}, Lio/dcloud/p/g0;->setDuration(I)V

    .line 32
    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/Toast;->getYOffset()I

    move-result v7

    const/16 v8, 0x50

    invoke-virtual {v4, v8, v5, v7}, Lio/dcloud/p/g0;->setGravity(III)V

    .line 33
    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v5, v7}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 34
    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 35
    invoke-virtual {v3, v5, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v7, v7

    .line 37
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 38
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v7, -0x4e000000

    .line 39
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x11

    .line 41
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-virtual {v4}, Lio/dcloud/p/g0;->show()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_f0} :catch_f4

    :cond_f0
    :goto_f0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :catch_f4
    :cond_f4
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;-><init>(Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADResult.CADReceiver.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADResult$CADReceiver$1)
.class Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->onReceiver(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

.field final synthetic val$array:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;Lorg/json/JSONArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;->val$array:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$1;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->checkPromptData(Lorg/json/JSONArray;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADResult.CADReceiver.AnonymousClass2 (io.dcloud.feature.gg.dcloud.ADResult$CADReceiver$2)
.class Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;->checkPromptData(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

.field final synthetic val$oncancel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;->val$oncancel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver$2;->val$oncancel:Ljava/lang/String;

    const-string v0, "exit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 4
    :cond_12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
