###### Class io.dcloud.feature.weex.WeexInstanceMgr (io.dcloud.feature.weex.WeexInstanceMgr)
.class public Lio/dcloud/feature/weex/WeexInstanceMgr;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/IWXStatisticsListener;
.implements Lio/dcloud/common/DHInterface/IUniInstanceMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;,
        Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;
    }
.end annotation


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "weexPlus"

.field private static instance:Lio/dcloud/feature/weex/WeexInstanceMgr;


# instance fields
.field TAG:Ljava/lang/String;

.field private callBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private complier:Ljava/lang/String;

.field private control:Ljava/lang/String;

.field private featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

.field private instanceHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private isAssetsRes:Z

.field private isJSFKFileNotFound:Z

.field private isJsFrameworkReady:Z

.field private isUniServiceCreated:Z

.field private isWeexInitEnd:Z

.field private jsSACName:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field private mHandler:Landroid/os/Handler;

.field private mPreInstanceId:Ljava/lang/String;

.field private mPreUniAppid:Ljava/lang/String;

.field private mPreUniMPCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mReladyCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

.field private mUniNViewModules:Ljava/lang/String;

.field private mVueVersion:I

.field private render:Ljava/lang/String;

.field private sb:Ljava/lang/StringBuffer;

.field private serviceWrapperMapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "WeexInstanceMgr"

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    .line 13
    const-string v1, "weex"

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    .line 14
    const-string v1, "auto"

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    .line 15
    const-string v1, "uni-app-config"

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    .line 16
    const-string v1, "uni-v3"

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const/4 v1, 0x2

    .line 20
    iput v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    .line 22
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 23
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    .line 25
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    .line 28
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    .line 920
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 932
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 933
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/WeexInstanceMgr;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/WeexInstanceMgr;)Landroid/app/Application;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;)Landroid/app/Application;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->wrapperDestroy()V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private clearHandler()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    :cond_7
    return-void
.end method

.method private forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_c

    .line 5
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V

    goto :goto_c

    .line 8
    :cond_1e
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_2a

    .line 12
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3d

    goto :goto_2a

    :cond_3c
    return-void

    :catch_3d
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forEach---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8

    const-string v0, "apps/"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    goto :goto_12

    .line 5
    :cond_10
    sput-object p2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 7
    :goto_12
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p2, :cond_1f

    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p2, 0x1

    .line 8
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/www/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    if-eqz v0, :cond_52

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v0, :cond_52

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_b9

    if-nez v0, :cond_52

    .line 11
    :try_start_44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_50} :catch_51

    goto :goto_53

    :catch_51
    nop

    :cond_52
    move-object v0, v1

    :goto_53
    if-nez v0, :cond_be

    if-eqz p2, :cond_78

    .line 19
    :try_start_57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_80

    .line 21
    :cond_78
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 23
    :goto_80
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 27
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a4} :catch_b6

    goto :goto_b3

    .line 30
    :cond_a5
    :try_start_a5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b1} :catch_b2

    goto :goto_b3

    :catch_b2
    nop

    :goto_b3
    if-eqz v1, :cond_be

    goto :goto_bd

    :catch_b6
    move-exception p1

    move-object v1, v0

    goto :goto_ba

    :catch_b9
    move-exception p1

    .line 39
    :goto_ba
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_bd
    move-object v0, v1

    :cond_be
    return-object v0
.end method

.method private getConfigParam()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    const-string v1, "__HtMl_Id__"

    const-string v2, "__uniapp_webview"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v2, "name"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v2, "vendor"

    const-string v3, "Google"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CONNECTION_TYPE"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v2, "networkinfo"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 4
    :try_start_4
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p3, :cond_13

    .line 3
    new-instance p3, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, p3

    :cond_13
    const/4 p3, 0x0

    .line 5
    new-array p3, p3, [B

    .line 7
    :try_start_16
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_1f
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    if-eqz p1, :cond_2c

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 15
    :goto_2d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 16
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :cond_38
    return-object p1
.end method

.method private initJSFramework(Landroid/content/Context;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "allowDownloadWithoutWiFi"

    const-string v3, "showTipsWithoutWifi"

    const-string v4, "timeOut"

    const-string v5, "x5"

    const-string v6, "minUserAgentVersion"

    const-string v7, "webView"

    const-string v8, "useJSProcess"

    const-string v9, "vueVersion"

    const-string v10, "nvueCompiler"

    const-string v11, "uniStatistics"

    const-string v12, "uni-app"

    const-string v13, "plus"

    const-string v14, "uniCloud"

    const-string v15, "version"

    move-object/from16 v16, v14

    const-string v14, "enable"

    move-object/from16 v17, v15

    .line 1
    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, p2

    invoke-direct {v0, v1, v14, v15}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_157

    const/4 v15, 0x1

    .line 4
    :try_start_33
    invoke-direct {v0, v14, v1, v15}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_157

    .line 6
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_157

    .line 7
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_157

    const-string v13, "renderer"

    if-eqz v1, :cond_100

    .line 8
    :try_start_4b
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_100

    .line 9
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 10
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    const-string v15, "uni-v3"

    iput-object v15, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    .line 11
    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6d

    .line 12
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    .line 14
    :cond_6d
    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 15
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    .line 18
    :cond_7d
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 19
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v10

    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    goto :goto_95

    .line 22
    :cond_8e
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v9

    const/4 v10, 0x2

    iput v10, v9, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    .line 24
    :goto_95
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 25
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    const-string v9, "false"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 29
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    goto :goto_b8

    .line 32
    :cond_b0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    .line 35
    :cond_b8
    :goto_b8
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_100

    .line 36
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_c2} :catch_157

    if-eqz v7, :cond_100

    .line 39
    :try_start_c4
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 40
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lio/dcloud/common/util/BaseInfo;->minUserAgentVersion:Ljava/lang/String;

    .line 42
    :cond_d0
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 43
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 45
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    sput v4, Lio/dcloud/common/util/BaseInfo;->timeOut:I

    .line 47
    :cond_e6
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 48
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lio/dcloud/common/util/BaseInfo;->showTipsWithoutWifi:Z

    .line 50
    :cond_f2
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 51
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_fe} :catch_ff

    goto :goto_100

    :catch_ff
    nop

    :cond_100
    :goto_100
    if-eqz v1, :cond_149

    .line 60
    :try_start_102
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 61
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_149

    .line 63
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_113} :catch_157

    move-object/from16 v4, v18

    .line 65
    :try_start_115
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 66
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_122
    move-object/from16 v4, v17

    .line 68
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 69
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_131
    move-object/from16 v4, v16

    .line 71
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 72
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 73
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_140
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/AppRuntime;->setUniStatistics(Ljava/lang/String;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_147} :catch_148

    goto :goto_149

    :catch_148
    nop

    :cond_149
    :goto_149
    if-eqz v1, :cond_157

    .line 81
    :try_start_14b
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 82
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->renderer:Ljava/lang/String;
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_157} :catch_157

    :catch_157
    :cond_157
    return-void
.end method

.method private makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 14

    .line 1
    const-string v0, "__uniapp__service"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_1d
    new-instance v1, Lio/dcloud/feature/weex/WXViewWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/weex/WXViewWrapper;-><init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz p1, :cond_40

    .line 11
    iget-object p1, p1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_40

    .line 12
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 16
    :cond_40
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private preUniControlService(Landroid/app/Application;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 3
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    invoke-direct {v1, p1}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 5
    const-string v0, "app-service.js"

    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v3, "app-config.js"

    invoke-direct {p0, p1, p2, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v3, "plus_appid"

    invoke-interface {v4, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "preload"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v3, "bundleUrl"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " plus.weexBridge.preloadReady(\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string v2, "\"use weex:vue\""

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v2, "__uniapp__service"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 15
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preUniControlService------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerReflexWeexPlugin(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_amap.AMapPluginImpl"

    const-string v5, "initPlugin"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex.map.google.GoogleMapPluginImpl"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_scroller.DCScrollerPluginImpl"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_barcode.BarcodePlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.utsplugin.UTSPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_livepusher.LivePusherPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_media.VideoPlayerPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_text.DCWXTextPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_input.DCWXInputRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.gcanvas.GCanvasRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_switch.DCWXSwitchPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "io.dcloud.feature.weex_ad.DCWXAdPlugin"

    invoke-static {p1, v5, v6, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v0, "sClassName"

    invoke-static {p1, v0, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f1

    .line 16
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_f1

    .line 17
    check-cast p1, Ljava/util/HashMap;

    .line 18
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    const-string v1, "image"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const-string v1, "web-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXView;

    const-string v1, "view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    const-string v1, "cover-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v1, "slider"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f1
    return-void
.end method

.method private reloadWeexEngine()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void
.end method

.method public static declared-synchronized self()Lio/dcloud/feature/weex/WeexInstanceMgr;
    .registers 2

    const-class v0, Lio/dcloud/feature/weex/WeexInstanceMgr;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;-><init>()V

    sput-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    .line 4
    :cond_e
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private unRegisterUniappService()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKEngine;->unRegisterService(Ljava/lang/String;)Z

    return-void
.end method

.method private wrapperDestroy()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$7;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$7;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->reloadWeexEngine()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v1, "sClassName"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 3
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public createWeexService(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .registers 6

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WXServiceWrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXServiceWrapper;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPathByWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 5
    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXBaseWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .registers 6

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex/WXBaseWrapper;

    if-eqz v2, :cond_b

    .line 10
    iget-object v3, v2, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v3, p1, :cond_b

    move-object v1, v2

    goto :goto_b

    :cond_27
    return-object v1
.end method

.method findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    .line 4
    :cond_11
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXServiceWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    .line 4
    :cond_13
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXServiceWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_12

    .line 5
    iget-object v2, v1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_12

    return-object v1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method findWXViewWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 5

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_a

    .line 11
    iget-object v2, v1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_a

    .line 12
    iget-object p1, v1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, p2

    .line 2
    :goto_8
    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "ui"

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const-string p1, "findWebview"

    const/4 p4, 0x2

    aput-object p1, p3, p4

    const/4 p1, 0x3

    aput-object p2, p3, p1

    const/16 p1, 0xa

    .line 3
    invoke-virtual {v0, v1, p1, p3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_2c

    .line 6
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebviewByInstanceId(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_a

    .line 5
    iget-object v2, v1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6
    iget-object p1, v1, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComplier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    return-object v0
.end method

.method public getControl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    return-object v0
.end method

.method public getPreInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniAppid()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniMPCallBack(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUniMPFeature()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "UniMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniNViewModules()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    return-object v0
.end method

.method public getVueVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    return v0
.end method

.method init(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method public initAppForPath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/util/AppRuntime;->isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return-void
.end method

.method public initStatisticsListener()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V

    return-void
.end method

.method public initUniappPlugin(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/weex/MoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/MoudlesLoader;->onCreate(Landroid/app/Application;)V

    return-void
.end method

.method public initWeexEnv(Landroid/app/Application;)V
    .registers 11

    const-string v0, "var plusContext = {};plusContext.getLocationHerf = function(plus){\n    return plus.weex.config.bundleUrl;\n};var param = "

    .line 3
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    const-string v2, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1c

    .line 4
    new-array v1, v5, [Ljava/lang/Class;

    const-class v6, Landroid/app/Application;

    aput-object v6, v1, v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v4

    const-string v7, "registerReloadReceiver"

    invoke-static {v2, v7, v3, v1, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1c
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setApplication(Landroid/app/Application;)V

    .line 7
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1d9

    .line 8
    new-instance v1, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 9
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v6

    invoke-direct {v6, p1, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v6

    if-nez v6, :cond_51

    .line 12
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/app/Application;

    aput-object v7, v6, v4

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v4

    const-string v8, "initDebugEnvironment"

    invoke-static {v2, v8, v3, v6, v7}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_51
    new-instance v2, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;-><init>()V

    .line 15
    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 16
    invoke-virtual {v2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getImageOkHttpClient()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v2

    invoke-static {p1, v2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpImagePipelineConfigFactory;->newBuilder(Landroid/content/Context;Ldc/squareup/okhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v2

    .line 17
    invoke-static {p1, v2}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 19
    const-string v2, "@type_ft"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->setDefaultTypeKey(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getDraweeControllerBuilderSupplier()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->initialize(Lcom/facebook/common/internal/Supplier;)V

    .line 21
    new-instance v2, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 22
    new-instance v2, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

    invoke-direct {v2, p1}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;

    .line 23
    new-instance v2, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 24
    new-instance v2, Lio/dcloud/feature/weex/adapter/DCVueBridgeAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/DCVueBridgeAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setDCVueBridgeAdapter(Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 25
    new-instance v2, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;

    .line 26
    new-instance v2, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/InitConfig$Builder;->setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 27
    invoke-virtual {v1}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v1

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;

    invoke-direct {v3}, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKManager;->setWxConfigAdapter(Lcom/taobao/weex/adapter/IWXConfigAdapter;)V

    .line 29
    invoke-static {p1, v1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 31
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initStatisticsListener()V

    .line 33
    :try_start_be
    new-instance v1, Ljava/lang/String;

    const-string v2, "io/dcloud/weexUniJs.js"

    invoke-static {v2, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 34
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    .line 35
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-direct {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getConfigParam()Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "image"

    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 43
    const-string v0, "cover-view"

    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 44
    const-string v0, "u-image"

    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 45
    const-string v0, "cover-image"

    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 46
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    new-instance v2, Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "u-scalable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 47
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "slider"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 48
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXView;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "view"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 49
    const-string v0, "u-web-view"

    const-class v1, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 50
    const-string v0, "plus"

    const-class v1, Lio/dcloud/feature/weex/extend/PlusModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 52
    const-string v0, "DCloud-Crypto"

    const-class v1, Lio/dcloud/feature/weex/extend/RandomBytesModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 53
    const-string v0, "plusstorage"

    const-class v1, Lio/dcloud/feature/weex/extend/PlusStorageModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 54
    const-string v0, "uni-tabview"

    const-class v1, Lio/dcloud/feature/weex/extend/DCTabBarModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 55
    const-string v0, "div"

    const-class v1, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v0

    if-eqz v0, :cond_18b

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_18b

    .line 57
    const-string v0, "uniMP"

    const-class v1, Lio/dcloud/feature/weex/extend/DCUniMPModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 61
    :cond_18b
    const-string v0, "event"

    const-class v1, Lio/dcloud/feature/weex/extend/WXEventModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 62
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1a6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "weexPlus"

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 66
    :cond_1a6
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 67
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerUniappService(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_1b5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/unincomponents.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 71
    const-string v1, "unincomponents"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXEnvironment;->setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 72
    const-string v0, "uni-webSocket"

    const-class v1, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 73
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingX;->register()V

    .line 74
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerReflexWeexPlugin(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, v5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setWeexInitEnd(Z)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_1d4} :catch_1d5

    return-void

    :catch_1d5
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d9
    return-void
.end method

.method public initWeexEnv(Lio/dcloud/common/DHInterface/INativeAppInfo;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getCofusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    :cond_f
    return-void
.end method

.method public isJSFKFileNotFound()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return v0
.end method

.method public isJsFrameworkReady()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return v0
.end method

.method public isUniAppAssetsRes()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return v0
.end method

.method public isUniServiceCreated(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 1
    const-string v0, "nvueLaunchMode"

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uni-v3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 3
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1

    .line 5
    :cond_23
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "v8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_31
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1
.end method

.method public isWeexInitEnd()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return v0
.end method

.method public loadWeexToAppid(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result p1

    if-eq p1, v0, :cond_11

    const/4 p3, 0x1

    .line 10
    :cond_11
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_1f

    if-eqz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setJsFrameworkReady(Z)V

    .line 12
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->restartWeex()V

    return-void
.end method

.method onActivityDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    return-void
.end method

.method onActivityDestroy(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-gtz v1, :cond_15

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_32

    :cond_15
    if-eqz p1, :cond_26

    .line 7
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$5;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    .line 14
    :cond_26
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$6;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$6;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_32
    :goto_32
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 23
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method onActivityPause()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$3;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$4;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;IILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResume()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$2;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onCreateProcess(Landroid/app/Application;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/weex/MoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/weex/MoudlesLoader;->initHooksClass(Landroid/app/Application;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onFirstScreen()V
    .registers 1

    return-void
.end method

.method public onFirstView()V
    .registers 1

    return-void
.end method

.method public onHeadersReceived()V
    .registers 1

    return-void
.end method

.method public onHttpFinish()V
    .registers 1

    return-void
.end method

.method public onHttpStart()V
    .registers 1

    return-void
.end method

.method public onJsFrameworkReady()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_10

    .line 4
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$9;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    .line 13
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;

    .line 15
    invoke-interface {v3}, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;->onJsFrameworkReady()V

    goto :goto_19

    :cond_27
    return-void
.end method

.method public onJsFrameworkStart()V
    .registers 1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$8;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;I[Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onSDKEngineInitialize()V
    .registers 1

    return-void
.end method

.method public preUniMP(Landroid/app/Application;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p3, :cond_12

    const/16 p1, -0x65

    .line 3
    const-string p2, ""

    invoke-interface {p3, p1, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_12
    if-eqz p3, :cond_19

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_19
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result p3

    if-eqz p3, :cond_28

    .line 11
    new-instance p3, Lio/dcloud/feature/weex/WeexInstanceMgr$10;

    invoke-direct {p3, p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr$10;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_28
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public registerUniappService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, "app-config-service.js"

    invoke-direct {v0, p1, p2, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_2e

    const/4 v0, 0x0

    .line 5
    :try_start_1b
    invoke-direct {p0, p2, p1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    return-void
.end method

.method public reloadWXServiceWrapper()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_12

    .line 6
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXServiceWrapper;->reload()V

    goto :goto_12

    :cond_2c
    return-void
.end method

.method public removeWeexView(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXViewWrapper;->onDestroy()V

    :cond_13
    return-void
.end method

.method public restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    if-eqz v0, :cond_22

    :cond_16
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2
    :cond_22
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    if-eqz v0, :cond_27

    goto :goto_46

    .line 5
    :cond_27
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    const-string v1, "restartWeex-------"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-lez v0, :cond_3a

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    .line 9
    :cond_3a
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$1;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_46
    :goto_46
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public setJSFKFileNotFound(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return-void
.end method

.method public setJsFrameworkReady(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return-void
.end method

.method public setUniNViewModuleReladyCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setUniNViewModules(Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/common/DHInterface/ICallBack;

    .line 4
    invoke-interface {v4, v2, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 6
    :cond_20
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_25
    return-void
.end method

.method public setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 2
    const-string p1, "fast"

    if-eqz p2, :cond_13

    .line 4
    const-string v0, "nvueLaunchMode"

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move-object p2, p1

    .line 9
    :goto_14
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uni-v3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 10
    :cond_32
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    if-eqz p1, :cond_62

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz p2, :cond_40

    .line 15
    iget-boolean v0, p2, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v0, :cond_40

    .line 17
    invoke-virtual {p2}, Lio/dcloud/feature/weex/WXViewWrapper;->getWaitServiceRenderList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    goto :goto_40

    :cond_62
    return-void
.end method

.method public setWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setWeexInitEnd(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return-void
.end method

.method public unWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public weexDebugReload()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 5
    iget-object v0, v0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    const-string v3, "snc:CID"

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass1 (io.dcloud.feature.weex.WeexInstanceMgr$1)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;Landroid/app/Application;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$000(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$202(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;)Landroid/app/Application;

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$200(Lio/dcloud/feature/weex/WeexInstanceMgr;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setJsFrameworkReady(Z)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$300(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerUniappService(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->restartWeex()V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass10 (io.dcloud.feature.weex.WeexInstanceMgr$10)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$10;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniMP(Landroid/app/Application;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Application;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$context:Landroid/app/Application;

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_c

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$context:Landroid/app/Application;

    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$appid:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$500(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass2 (io.dcloud.feature.weex.WeexInstanceMgr$2)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$2;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityResume()V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$2;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass3 (io.dcloud.feature.weex.WeexInstanceMgr$3)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$3;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityPause()V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$3;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass4 (io.dcloud.feature.weex.WeexInstanceMgr$4)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;IILandroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$requestCode:I

    iput p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$resultCode:I

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 5

    .line 2
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$requestCode:I

    iget v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$resultCode:I

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$data:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass5 (io.dcloud.feature.weex.WeexInstanceMgr$5)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$5;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$5;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass6 (io.dcloud.feature.weex.WeexInstanceMgr$6)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$6;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$6;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass7 (io.dcloud.feature.weex.WeexInstanceMgr$7)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->wrapperDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$7;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onDestroy()V

    :cond_5
    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$7;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass8 (io.dcloud.feature.weex.WeexInstanceMgr$8)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$grantResults:[I

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;I[Ljava/lang/String;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$requestCode:I

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$permissions:[Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$grantResults:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 2
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$requestCode:I

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$permissions:[Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$grantResults:[I

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/weex/WXBaseWrapper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass9 (io.dcloud.feature.weex.WeexInstanceMgr$9)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onJsFrameworkReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$100(Lio/dcloud/feature/weex/WeexInstanceMgr;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.EachListener (io.dcloud.feature.weex.WeexInstanceMgr$EachListener)
.class interface abstract Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EachListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.IWXStatisticsCallBack (io.dcloud.feature.weex.WeexInstanceMgr$IWXStatisticsCallBack)
.class public interface abstract Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWXStatisticsCallBack"
.end annotation


# virtual methods
.method public abstract onJsFrameworkReady()V
.end method
