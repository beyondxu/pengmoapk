###### Class io.dcloud.feature.audio.AudioFeatureImpl (io.dcloud.feature.audio.AudioFeatureImpl)
.class public Lio/dcloud/feature/audio/AudioFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# static fields
.field static final TAG:Ljava/lang/String; = "AudioFeatureImpl"


# instance fields
.field mAppsAudioObj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    return-void
.end method

.method private findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_f
    if-ge v1, v0, :cond_27

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 5
    instance-of v3, v2, Lio/dcloud/feature/audio/AbsAudio;

    if-eqz v3, :cond_f

    .line 6
    move-object v3, v2

    check-cast v3, Lio/dcloud/feature/audio/AbsAudio;

    iget-object v3, v3, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v2

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 3
    instance-of v3, v2, Lio/dcloud/feature/audio/AudioPlayer;

    if-eqz v3, :cond_9

    .line 4
    check-cast v2, Lio/dcloud/feature/audio/AudioPlayer;

    .line 5
    iget-object v3, v2, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    if-nez p3, :cond_24

    .line 6
    invoke-virtual {v2}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    .line 8
    :cond_24
    invoke-virtual {v2, p3}, Lio/dcloud/feature/audio/AudioPlayer;->setCanMix(Z)V

    goto :goto_9

    :cond_28
    return-void
.end method

.method private setSpeakerphoneOn(Landroid/media/AudioManager;Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    return-void

    :cond_a
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, p2, v0, v1}, Landroid/media/AudioManager;->setRouting(III)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute pJsArgs[0]="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudioFeatureImpl"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v1, "AudioSyncExecMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_104

    .line 4
    aget-object p2, p3, v2

    .line 5
    aget-object p3, p3, v5

    invoke-static {p3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_110

    :goto_44
    const/4 v3, -0x1

    goto :goto_85

    :sswitch_46
    const-string v1, "CreatePlayer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4f

    goto :goto_44

    :cond_4f
    const/4 v3, 0x5

    goto :goto_85

    :sswitch_51
    const-string v1, "getStyles"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5a

    goto :goto_44

    :cond_5a
    const/4 v3, 0x4

    goto :goto_85

    :sswitch_5c
    const-string v1, "getPaused"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_65

    goto :goto_44

    :cond_65
    const/4 v3, 0x3

    goto :goto_85

    :sswitch_67
    const-string v1, "getBuffered"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_85

    goto :goto_44

    :sswitch_70
    const-string v1, "getDuration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_79

    goto :goto_44

    :cond_79
    const/4 v3, 0x1

    goto :goto_85

    :sswitch_7b
    const-string v1, "getPosition"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_84

    goto :goto_44

    :cond_84
    const/4 v3, 0x0

    :cond_85
    :goto_85
    packed-switch v3, :pswitch_data_12a

    return-object v6

    .line 22
    :pswitch_89
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p3, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p3

    .line 24
    invoke-static {p3, p1}, Lio/dcloud/feature/audio/AudioPlayer;->createAudioPlayer(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/audio/AudioPlayer;

    move-result-object p3

    .line 25
    iput-object p2, p3, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lio/dcloud/feature/audio/AudioFeatureImpl;->putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    .line 45
    :pswitch_a7
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 48
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-le p2, v5, :cond_bb

    .line 49
    invoke-static {p3, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 50
    :cond_bb
    invoke-virtual {p1, v6}, Lio/dcloud/feature/audio/AudioPlayer;->getStyles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_c0
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 53
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->isPause()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_cf
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 60
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getBuffer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_de
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 63
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getDuration()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_f1
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 70
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_104
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v5

    aput-object p3, v0, v3

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-object v6

    :sswitch_data_110
    .sparse-switch
        -0x57932961 -> :sswitch_7b
        0x51e8b0a -> :sswitch_70
        0x2121ce55 -> :sswitch_67
        0x29c3bc24 -> :sswitch_5c
        0x2fefbbd8 -> :sswitch_51
        0x5fbecf1d -> :sswitch_46
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_de
        :pswitch_cf
        :pswitch_c0
        :pswitch_a7
        :pswitch_89
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 16

    .line 108
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 109
    aget-object v1, p1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    const/4 v2, 0x1

    .line 110
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 111
    aget-object p1, p1, v4

    check-cast p1, [Ljava/lang/String;

    .line 112
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    .line 113
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    .line 114
    aget-object v7, p1, v0

    .line 115
    aget-object p1, p1, v2

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 116
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v8

    .line 117
    const-string v9, "RecorderExecMethod"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "stop"

    const-string v11, "resume"

    const-string v12, "pause"

    if-eqz v9, :cond_cd

    .line 118
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Audio-"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    :try_start_4f
    const-string v0, "record"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 121
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    new-instance v2, Lio/dcloud/feature/audio/recorder/RecordOption;

    invoke-direct {v2, v1, p1}, Lio/dcloud/feature/audio/recorder/RecordOption;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 124
    iget-object p1, v2, Lio/dcloud/feature/audio/recorder/RecordOption;->mFileName:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto/16 :goto_21b

    .line 127
    :cond_6e
    invoke-static {v2, v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->startRecorder(Lio/dcloud/feature/audio/recorder/RecordOption;Ljava/lang/String;)Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    .line 128
    iput-object v8, p1, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    .line 129
    invoke-direct {p0, v6, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_78
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 131
    invoke-direct {p0, v6, v8}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioRecorderMgr;

    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->pause()V

    return-void

    .line 132
    :cond_88
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 133
    invoke-direct {p0, v6, v8}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioRecorderMgr;

    .line 134
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->stop()V

    .line 135
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->successCallback()V

    .line 136
    invoke-direct {p0, v6, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_9e
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 138
    invoke-direct {p0, v6, v8}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioRecorderMgr;

    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->resume()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_ad} :catch_ae

    return-void

    :catch_ae
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecorderExecMethod _methodName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; e ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_21b

    .line 144
    :cond_cd
    const-string v9, "AudioExecMethod"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    const/4 v3, 0x0

    .line 147
    :try_start_d6
    invoke-direct {p0, v6, v8}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/dcloud/feature/audio/AudioPlayer;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_dc} :catch_206

    .line 148
    :try_start_dc
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_21c

    goto/16 :goto_21b

    :sswitch_e5
    const-string v3, "setRoute"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 200
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 202
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_107

    .line 204
    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setSpeakerphoneOn(Landroid/media/AudioManager;Z)V

    return-void

    .line 206
    :cond_107
    invoke-direct {p0, v1, v2}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setSpeakerphoneOn(Landroid/media/AudioManager;Z)V

    return-void

    .line 207
    :sswitch_10b
    const-string v0, "playbackRate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 285
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_21b

    .line 286
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_11d} :catch_203

    .line 288
    :try_start_11d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21b

    .line 289
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_21b

    .line 291
    invoke-virtual {v9, p1}, Lio/dcloud/feature/audio/AudioPlayer;->playbackRate(F)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_12f} :catch_21b

    return-void

    .line 292
    :sswitch_130
    :try_start_130
    const-string v0, "setStyles"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 361
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v9, p1}, Lio/dcloud/feature/audio/AudioPlayer;->setStyle(Lorg/json/JSONObject;)V

    return-void

    .line 362
    :sswitch_140
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 371
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    return-void

    .line 372
    :sswitch_14a
    const-string p1, "close"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 400
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->destory()V

    .line 401
    invoke-direct {p0, v6, v9}, Lio/dcloud/feature/audio/AudioFeatureImpl;->removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 402
    :sswitch_159
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 426
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->stop()V

    return-void

    .line 427
    :sswitch_163
    const-string v0, "play"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 429
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix()Z

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 431
    iput-object p1, v9, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    .line 432
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->play()V

    return-void

    .line 433
    :sswitch_17c
    const-string v0, "setSessionCategory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 506
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_18e

    .line 507
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 508
    :cond_18e
    invoke-virtual {v9, v3}, Lio/dcloud/feature/audio/AudioPlayer;->setSessionCategory(Ljava/lang/String;)V

    return-void

    .line 509
    :sswitch_192
    const-string v0, "removeEventListener"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 575
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lio/dcloud/feature/audio/AudioPlayer;->removeEventListener(Ljava/lang/String;)V

    return-void

    .line 576
    :sswitch_1a2
    const-string v0, "addEventListener"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 639
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, v0, p1}, Lio/dcloud/feature/audio/AudioPlayer;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 640
    :sswitch_1b6
    const-string v0, "seekTo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_1bc} :catch_203

    if-eqz v0, :cond_21b

    .line 675
    :try_start_1be
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_21b

    mul-int/lit16 v0, v0, 0x3e8

    .line 677
    invoke-virtual {v9, v0}, Lio/dcloud/feature/audio/AudioPlayer;->seekTo(I)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1cd} :catch_1ce

    return-void

    .line 681
    :catch_1ce
    :try_start_1ce
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    if-ltz p1, :cond_21b

    .line 683
    invoke-virtual {v9, p1}, Lio/dcloud/feature/audio/AudioPlayer;->seekTo(I)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1e3} :catch_21b

    goto :goto_21b

    .line 684
    :sswitch_1e4
    :try_start_1e4
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 697
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix()Z

    move-result p1

    invoke-direct {p0, v6, v8, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    invoke-static {v5}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result p1

    if-eqz p1, :cond_1ff

    .line 699
    const-string p1, ""

    iput-object p1, v9, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    .line 700
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->play()V

    return-void

    .line 703
    :cond_1ff
    invoke-virtual {v9}, Lio/dcloud/feature/audio/AudioPlayer;->resume()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_202} :catch_203

    return-void

    :catch_203
    move-exception p1

    move-object v3, v9

    goto :goto_207

    :catch_206
    move-exception p1

    .line 777
    :goto_207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v3, :cond_21b

    .line 779
    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3, v0, p1}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 780
    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onError"

    invoke-virtual {v3, v0, p1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :catch_21b
    :cond_21b
    :goto_21b
    return-void

    :sswitch_data_21c
    .sparse-switch
        -0x37b237d3 -> :sswitch_1e4
        -0x3603e4ed -> :sswitch_1b6
        -0x254d19b3 -> :sswitch_1a2
        -0x204670b6 -> :sswitch_192
        -0x1722e70e -> :sswitch_17c
        0x348b34 -> :sswitch_163
        0x360802 -> :sswitch_159
        0x5a5ddf8 -> :sswitch_14a
        0x65825f6 -> :sswitch_140
        0x2324efe4 -> :sswitch_130
        0x50ca119b -> :sswitch_10b
        0x53a67307 -> :sswitch_e5
    .end sparse-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    return-void
.end method
