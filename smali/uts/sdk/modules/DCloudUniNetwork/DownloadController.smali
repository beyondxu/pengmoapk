###### Class uts.sdk.modules.DCloudUniNetwork.DownloadController (uts.sdk.modules.DCloudUniNetwork.DownloadController)
.class public Luts/sdk/modules/DCloudUniNetwork/DownloadController;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/DownloadController;",
        "",
        "<init>",
        "()V",
        "downloadExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "downloadFile",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
        "options",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;",
        "createDownloadClient",
        "Lokhttp3/OkHttpClient;",
        "option",
        "createDownloadRequest",
        "Lokhttp3/Request;",
        "Companion",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/DownloadController;


# instance fields
.field private downloadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/DownloadController;
    .registers 1

    .line 1016
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->instance:Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/DownloadController;)V
    .registers 1

    .line 1016
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->instance:Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    return-void
.end method

.method private final createDownloadClient(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;)Lokhttp3/OkHttpClient;
    .registers 5

    .line 1030
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1031
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1032
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1a

    :cond_17
    const-wide/32 v1, 0x1d4c0

    .line 1036
    :goto_1a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1037
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1038
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1039
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;-><init>()V

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 1040
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_3f

    const/16 p1, 0xa

    .line 1041
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1043
    :cond_3f
    new-instance p1, Lokhttp3/Dispatcher;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 1044
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createDownloadRequest(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Lokhttp3/Request;
    .registers 11

    .line 1047
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1049
    :try_start_8
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_8f

    .line 1063
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, v3

    .line 1065
    :goto_1b
    const-string p2, "User-Agent"

    if-eqz p1, :cond_6c

    .line 1066
    invoke-static {p1}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1067
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1068
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_4c

    .line 1069
    invoke-static {v5, p2, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    if-eqz v4, :cond_2d

    .line 1073
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-static {v4, v7}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2d

    :cond_6c
    if-nez v1, :cond_8a

    .line 1080
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSAndroid;->getWebViewInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    const-string v1, "ua"

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3, v2, v3}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1083
    :cond_8a
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :catch_8f
    move-exception p1

    .line 1051
    new-array v0, v1, [Lkotlin/Pair;

    .line 1052
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 1053
    const-string v1, "statusCode"

    const-string v4, "-1"

    invoke-virtual {v0, v1, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1055
    const-string v1, "errorMsg"

    const-string v4, "invalid URL"

    invoke-virtual {v0, v1, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1, v3, v2, v3}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1057
    new-instance v1, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v1, p1}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    const-string p1, "cause"

    invoke-virtual {v0, p1, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_c0

    .line 1059
    invoke-interface {p2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_c0
    return-object v3
.end method


# virtual methods
.method public downloadFile(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Luts/sdk/modules/DCloudUniNetwork/DownloadTask;
    .registers 5

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->createDownloadClient(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 1020
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->createDownloadRequest(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Lokhttp3/Request;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1022
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadTaskImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/DownloadTask;

    return-object p1

    .line 1024
    :cond_1d
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    const-string v1, "newCall(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_30

    const-string p1, ""

    :cond_30
    invoke-direct {v1, p2, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 1026
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadTaskImpl;

    invoke-direct {p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)V

    .line 1027
    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/DownloadTask;

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.DownloadController.Companion (uts.sdk.modules.DCloudUniNetwork.DownloadController$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/DownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadController;",
        "getInstance",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Luts/sdk/modules/DCloudUniNetwork/DownloadController;
    .registers 2

    .line 1088
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1089
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/DownloadController;)V

    .line 1091
    :cond_e
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
