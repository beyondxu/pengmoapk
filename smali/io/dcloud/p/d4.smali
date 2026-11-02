###### Class io.dcloud.p.d4 (io.dcloud.p.d4)
.class Lio/dcloud/p/d4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/d4$c;
    }
.end annotation


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Ljava/util/concurrent/ConcurrentHashMap;

.field c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/d4;->c:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    const-string v1, "snc:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_23
    :goto_23
    if-ge v4, v1, :cond_56

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v1, :cond_41

    .line 14
    invoke-virtual {p0, v6}, Lio/dcloud/p/d4;->b(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_41

    .line 15
    :cond_3b
    invoke-virtual {p0, v6}, Lio/dcloud/p/d4;->a(C)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 16
    :cond_41
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 17
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 19
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v4

    goto :goto_23

    .line 23
    :cond_56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5a
    if-ge v3, p1, :cond_79

    .line 25
    new-instance v1, Lio/dcloud/p/d4$c;

    invoke-direct {v1, p0}, Lio/dcloud/p/d4$c;-><init>(Lio/dcloud/p/d4;)V

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lio/dcloud/p/d4$c;->a:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .line 27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lio/dcloud/p/d4$c;->b:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x2

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_79
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/dcloud/p/d4;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 8
    iget-object v0, p0, Lio/dcloud/p/d4;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/d4$c;

    if-eqz v0, :cond_2a

    .line 10
    iget-object v1, p0, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "runing"

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/p/d4;->a(Lio/dcloud/p/d4$c;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2c

    monitor-exit p0

    return-void

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public a(Lio/dcloud/p/d4$c;)V
    .registers 3

    .line 12
    new-instance v0, Lio/dcloud/p/d4$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/p/d4$a;-><init>(Lio/dcloud/p/d4;Lio/dcloud/p/d4$c;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1}, Lio/dcloud/p/d4;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lio/dcloud/p/d4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_12
    invoke-virtual {p0}, Lio/dcloud/p/d4;->a()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 13

    monitor-enter p0

    .line 13
    :try_start_1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_94

    if-nez v0, :cond_91

    const/4 v1, 0x0

    .line 17
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_13
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_97

    :catch_13
    move-exception v0

    move-object p1, v0

    .line 19
    :try_start_15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_94

    move-object v0, v1

    :goto_19
    const/4 p1, -0x1

    if-nez v0, :cond_2a

    .line 22
    :try_start_1c
    const-string v0, "console"

    const-string v2, "nativeApp pull fail"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_91

    .line 24
    invoke-interface {p2, p1, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_e

    goto/16 :goto_91

    .line 28
    :cond_2a
    :try_start_2a
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "filePath"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_82

    .line 37
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/www"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 40
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v4, Lio/dcloud/p/d4$b;
    :try_end_6a
    .catchall {:try_start_2a .. :try_end_6a} :catchall_94

    move-object v5, p0

    move-object v9, p2

    :try_start_6c
    invoke-direct/range {v4 .. v9}, Lio/dcloud/p/d4$b;-><init>(Lio/dcloud/p/d4;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {p1, v4}, Lio/dcloud/common/util/ThreadPool;->addSingleThreadTask(Ljava/lang/Runnable;)V

    goto :goto_92

    :cond_73
    move-object v5, p0

    move-object v9, p2

    .line 59
    const-string p2, "console"

    const-string v0, "nativeApp pull fail"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_92

    .line 61
    invoke-interface {v9, p1, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_82
    :goto_82
    move-object v5, p0

    move-object v9, p2

    .line 62
    const-string p2, "console"

    const-string v0, "nativeApp pull fail"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_92

    .line 64
    invoke-interface {v9, p1, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_6c .. :try_end_90} :catchall_99

    goto :goto_92

    :cond_91
    :goto_91
    move-object v5, p0

    :cond_92
    :goto_92
    monitor-exit p0

    return-void

    :catchall_94
    move-exception v0

    move-object v5, p0

    :goto_96
    move-object p1, v0

    :goto_97
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_99

    throw p1

    :catchall_99
    move-exception v0

    goto :goto_96
.end method

.method a(C)Z
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method b(C)Z
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.p.d4.a (io.dcloud.p.d4$a)
.class Lio/dcloud/p/d4$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d4;->a(Lio/dcloud/p/d4$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d4$c;

.field final synthetic b:Lio/dcloud/p/d4;


# direct methods
.method constructor <init>(Lio/dcloud/p/d4;Lio/dcloud/p/d4$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iput-object p2, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    iget-object p1, p1, Lio/dcloud/p/d4$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_146

    goto :goto_40

    :sswitch_15
    const-string v0, "pull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_40

    :cond_1e
    const/4 v3, 0x3

    goto :goto_40

    :sswitch_20
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_40

    :cond_29
    const/4 v3, 0x2

    goto :goto_40

    :sswitch_2b
    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_40

    :cond_34
    const/4 v3, 0x1

    goto :goto_40

    :sswitch_36
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    const/4 p1, 0x0

    packed-switch v3, :pswitch_data_158

    goto :goto_59

    .line 35
    :pswitch_45
    iget-object p1, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    iget-object p1, p1, Lio/dcloud/p/d4$c;->b:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 37
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    new-instance v1, Lio/dcloud/p/d4$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/p/d4$a$a;-><init>(Lio/dcloud/p/d4$a;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/p/d4;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_59
    :goto_59
    return-void

    .line 38
    :pswitch_5a
    iget-object v0, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    iget-object v0, v0, Lio/dcloud/p/d4$c;->b:Ljava/lang/String;

    .line 39
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 40
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 41
    :cond_72
    const-string v1, "current"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 42
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 44
    :cond_86
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xe

    invoke-interface {p1, v1, v2, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_91
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 47
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    invoke-virtual {p1}, Lio/dcloud/p/d4;->a()V

    return-void

    .line 51
    :pswitch_9e
    iget-object v0, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    iget-object v0, v0, Lio/dcloud/p/d4$c;->b:Ljava/lang/String;

    .line 52
    const-string v3, "restart"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 53
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v2, "snc:CID"

    invoke-interface {p1, v0, v1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    .line 55
    :cond_b6
    const-string v1, "debugRefresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 56
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x1b

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    .line 57
    :cond_ca
    const-string p1, "restartAndRun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 58
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->exit(I)V

    .line 65
    :cond_108
    :goto_108
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    invoke-virtual {p1}, Lio/dcloud/p/d4;->a()V

    return-void

    .line 94
    :pswitch_115
    iget-object p1, p0, Lio/dcloud/p/d4$a;->a:Lio/dcloud/p/d4$c;

    iget-object p1, p1, Lio/dcloud/p/d4$c;->b:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 98
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/d4$a$b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/d4$a$b;-><init>(Lio/dcloud/p/d4$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addSingleThreadTask(Ljava/lang/Runnable;)V

    return-void

    .line 111
    :cond_131
    const-string p1, "console"

    const-string v0, "rm file fail"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 113
    iget-object p1, p0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    invoke-virtual {p1}, Lio/dcloud/p/d4;->a()V

    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        -0x4f997a55 -> :sswitch_36
        -0x361a2f35 -> :sswitch_2b
        -0x31ffc737 -> :sswitch_20
        0x34ae45 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_115
        :pswitch_9e
        :pswitch_5a
        :pswitch_45
    .end packed-switch
.end method

###### Class io.dcloud.p.d4.a.C0070a (io.dcloud.p.d4$a$a)
.class Lio/dcloud/p/d4$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d4$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d4$a;


# direct methods
.method constructor <init>(Lio/dcloud/p/d4$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d4$a$a;->a:Lio/dcloud/p/d4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p2, -0x1

    const-string v0, "console"

    if-eq p1, p2, :cond_f

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    goto :goto_14

    .line 1
    :cond_9
    const-string p1, "nativeApp pull success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 5
    :cond_f
    const-string p1, "nativeApp pull fail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_14
    iget-object p1, p0, Lio/dcloud/p/d4$a$a;->a:Lio/dcloud/p/d4$a;

    iget-object p1, p1, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object p1, p1, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 10
    iget-object p1, p0, Lio/dcloud/p/d4$a$a;->a:Lio/dcloud/p/d4$a;

    iget-object p1, p1, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    invoke-virtual {p1}, Lio/dcloud/p/d4;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.p.d4.a.b (io.dcloud.p.d4$a$b)
.class Lio/dcloud/p/d4$a$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d4$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/p/d4$a;


# direct methods
.method constructor <init>(Lio/dcloud/p/d4$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d4$a$b;->b:Lio/dcloud/p/d4$a;

    iput-object p2, p0, Lio/dcloud/p/d4$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d4$a$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "console"

    if-eqz v0, :cond_10

    .line 2
    const-string v0, "rm file success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 4
    :cond_10
    const-string v0, "rm file fail"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_15
    iget-object v0, p0, Lio/dcloud/p/d4$a$b;->b:Lio/dcloud/p/d4$a;

    iget-object v0, v0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    iget-object v0, v0, Lio/dcloud/p/d4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 7
    iget-object v0, p0, Lio/dcloud/p/d4$a$b;->b:Lio/dcloud/p/d4$a;

    iget-object v0, v0, Lio/dcloud/p/d4$a;->b:Lio/dcloud/p/d4;

    invoke-virtual {v0}, Lio/dcloud/p/d4;->a()V

    return-void
.end method

###### Class io.dcloud.p.d4.b (io.dcloud.p.d4$b)
.class Lio/dcloud/p/d4$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d4;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic e:Lio/dcloud/p/d4;


# direct methods
.method constructor <init>(Lio/dcloud/p/d4;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d4$b;->e:Lio/dcloud/p/d4;

    iput-object p2, p0, Lio/dcloud/p/d4$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/p/d4$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/p/d4$b;->c:Ljava/io/File;

    iput-object p5, p0, Lio/dcloud/p/d4$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d4$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/p/d4$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/p/d4$b;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 5
    iget-object v0, p0, Lio/dcloud/p/d4$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_25

    .line 6
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_1d
    iget-object v0, p0, Lio/dcloud/p/d4$b;->d:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_25

    const/4 v2, -0x1

    .line 10
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

###### Class io.dcloud.p.d4.c (io.dcloud.p.d4$c)
.class Lio/dcloud/p/d4$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/p/d4;


# direct methods
.method constructor <init>(Lio/dcloud/p/d4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d4$c;->c:Lio/dcloud/p/d4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
