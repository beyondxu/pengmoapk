###### Class com.taobao.weex.utils.WXLogUtils (com.taobao.weex.utils.WXLogUtils)
.class public Lcom/taobao/weex/utils/WXLogUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;,
        Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;
    }
.end annotation


# static fields
.field private static final CLAZZ_NAME_LOG_UTIL:Ljava/lang/String; = "com.taobao.weex.devtools.common.LogUtil"

.field public static final WEEX_PERF_TAG:Ljava/lang/String; = "weex_perf"

.field public static final WEEX_TAG:Ljava/lang/String; = "weex"

.field private static builder:Ljava/lang/StringBuilder;

.field private static clazzMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static isDebug:Z

.field private static jsLogWatcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/taobao/weex/utils/WXLogUtils;->isDebug:Z

    .line 16
    const-string v1, "com.taobao.weex.devtools.common.LogUtil"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 4
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    .line 6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 7
    const-string v0, "jsLog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_82

    sget-object p0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    if-eqz p0, :cond_82

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_82

    .line 8
    sget-object p0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;

    .line 9
    const-string v1, "__DEBUG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x3

    if-eqz v2, :cond_4e

    .line 10
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_2f

    .line 11
    :cond_4e
    const-string v1, "__INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 12
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_2f

    .line 13
    :cond_5e
    const-string v1, "__WARN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 14
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_2f

    .line 15
    :cond_6e
    const-string v1, "__ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 16
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_2f

    .line 18
    :cond_7e
    invoke-interface {v0, v4, p1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_2f

    :cond_82
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 19
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static d(Ljava/lang/String;[B)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;[B)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private static getLogLevel(Ljava/lang/String;)Lcom/taobao/weex/utils/LogLevel;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5e

    goto :goto_49

    :sswitch_13
    const-string v0, "__ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_49

    :cond_1c
    const/4 v1, 0x4

    goto :goto_49

    :sswitch_1e
    const-string v0, "__DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_49

    :cond_27
    const/4 v1, 0x3

    goto :goto_49

    :sswitch_29
    const-string v0, "__LOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_49

    :cond_32
    const/4 v1, 0x2

    goto :goto_49

    :sswitch_34
    const-string v0, "__WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 v1, 0x1

    goto :goto_49

    :sswitch_3f
    const-string v0, "__INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    packed-switch v1, :pswitch_data_74

    .line 13
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    .line 14
    :pswitch_4f
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    .line 22
    :pswitch_52
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    .line 23
    :pswitch_55
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    .line 24
    :pswitch_58
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    .line 26
    :pswitch_5b
    sget-object p0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    return-object p0

    :sswitch_data_5e
    .sparse-switch
        -0x58868772 -> :sswitch_3f
        -0x5880599a -> :sswitch_34
        0x5670f44 -> :sswitch_29
        0x476afe53 -> :sswitch_1e
        0x477f3a08 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
    .end packed-switch
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 1
    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :try_start_6
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2f

    .line 7
    :try_start_b
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_2b

    .line 8
    :try_start_10
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 10
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_29

    .line 14
    :try_start_19
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :goto_21
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_29
    move-exception p0

    goto :goto_2d

    :catchall_2b
    move-exception p0

    move-object v2, v0

    :goto_2d
    move-object v0, v1

    goto :goto_31

    :catchall_2f
    move-exception p0

    move-object v2, v0

    :goto_31
    if-eqz v0, :cond_3b

    .line 24
    :try_start_33
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_40

    .line 30
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 32
    :cond_40
    throw p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->info(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static i(Ljava/lang/String;[B)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_a

    .line 3
    :try_start_4
    sget-object v1, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    return-object v0

    :catch_a
    const/4 v0, 0x0

    :catch_b
    return-object v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    if-eqz p2, :cond_89

    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    sget-boolean v0, Lcom/taobao/weex/utils/WXLogUtils;->isDebug:Z

    if-nez v0, :cond_1d

    goto :goto_89

    .line 4
    :cond_1d
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    if-ne p2, v0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "IPCException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    const-string v1, "ipc"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/performance/WXStateRecord;->recordIPCException(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_38
    invoke-static {p0, p1, p2}, Lio/dcloud/weex/ConsoleLogUtils;->consoleLog(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    .line 9
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    if-eqz v0, :cond_46

    .line 10
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;->onLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_46
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 14
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v1}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_89

    .line 15
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getPriority()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_68
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/weex/utils/LogLevel;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_89

    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v1}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_89

    .line 21
    invoke-interface {p2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getPriority()I

    move-result p2

    invoke-static {p2, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex_perf"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->p(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static performance(Ljava/lang/String;[B)V
    .registers 2

    return-void
.end method

.method public static renderPerformanceLog(Ljava/lang/String;J)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    :cond_9
    return-void
.end method

.method public static setIsDebug(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/taobao/weex/utils/WXLogUtils;->isDebug:Z

    return-void
.end method

.method public static setJsLogWatcher(Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static setLogWatcher(Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/taobao/weex/utils/WXLogUtils;->sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;[B)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3
    :try_start_6
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    const-string v1, "com.taobao.weex.devtools.common.LogUtil"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_35

    .line 5
    const-string v1, "log"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    return-void

    .line 9
    :catch_2d
    const-string/jumbo p0, "weex"

    const-string p1, "LogUtil not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->WTF:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->wtf(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

###### Class com.taobao.weex.utils.WXLogUtils.JsLogWatcher (com.taobao.weex.utils.WXLogUtils$JsLogWatcher)
.class public interface abstract Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JsLogWatcher"
.end annotation


# virtual methods
.method public abstract onJsLog(ILjava/lang/String;)V
.end method

###### Class com.taobao.weex.utils.WXLogUtils.LogWatcher (com.taobao.weex.utils.WXLogUtils$LogWatcher)
.class public interface abstract Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogWatcher"
.end annotation


# virtual methods
.method public abstract onLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
