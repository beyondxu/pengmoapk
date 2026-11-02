###### Class io.dcloud.feature.ui.a (io.dcloud.feature.ui.a)
.class public Lio/dcloud/feature/ui/a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/a$a;
    }
.end annotation


# instance fields
.field a:Lio/dcloud/common/DHInterface/IWebview;

.field b:Ljava/util/List;

.field c:Ljava/util/List;

.field d:Lio/dcloud/common/DHInterface/AbsMgr;

.field e:Ljava/util/HashMap;

.field f:Lio/dcloud/common/DHInterface/IApp;

.field g:Lio/dcloud/common/DHInterface/IActivityHandler;

.field h:Z

.field i:Z

.field j:Z

.field k:Landroid/content/SharedPreferences;

.field private l:Lio/dcloud/feature/ui/c;

.field private m:Ljava/util/List;

.field n:Z

.field o:Ljava/util/ArrayList;

.field private p:Lio/dcloud/feature/ui/a$a;

.field q:Ljava/lang/StringBuffer;

.field r:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    .line 13
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 14
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->h:Z

    .line 22
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->i:Z

    .line 26
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->j:Z

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/ui/a;->m:Ljava/util/List;

    .line 31
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->n:Z

    .line 286
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->o:Ljava/util/ArrayList;

    .line 542
    new-instance v0, Lio/dcloud/feature/ui/a$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/ui/a$a;-><init>(Lio/dcloud/feature/ui/a;)V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    .line 644
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->q:Ljava/lang/StringBuffer;

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->r:Ljava/util/HashMap;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new AppWidgetMgr   "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "appid=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAN"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 651
    iput-object p2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 653
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 655
    const-string v0, "pdr"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/a;->k:Landroid/content/SharedPreferences;

    .line 657
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 659
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 661
    :cond_89
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 662
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 663
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 664
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z
    .registers 14

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-string v0, "{keyType:\'%s\',keyCode:%d}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    if-eqz v1, :cond_b9

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncExecBaseEvent windowCount = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppWidgetMgr"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v1, v3

    move v4, v1

    :goto_30
    if-ltz v4, :cond_b9

    .line 38
    iget-object v5, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/feature/ui/c;

    if-eqz v5, :cond_b5

    .line 39
    iget-object v6, v5, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-nez v6, :cond_b5

    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v6

    if-nez v6, :cond_4a

    iget-boolean v6, v5, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v6, :cond_b5

    :cond_4a
    iget-object v6, v5, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_b5

    const-string v6, "back"

    if-ne v1, v4, :cond_64

    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 42
    invoke-virtual {v5, p1, v0, p5}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_64

    return v3

    .line 46
    :cond_64
    invoke-virtual {v5, p1, v0, p5}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6b

    return v3

    .line 50
    :cond_6b
    sget-boolean v7, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v7, :cond_b5

    if-eqz p3, :cond_b5

    .line 52
    invoke-virtual {v5, p3}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b4

    sget-object v7, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, v7, :cond_b5

    .line 54
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    const/4 v6, 0x4

    if-eq p4, v6, :cond_b4

    .line 55
    :cond_84
    const-string v6, "menu"

    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    const/16 v6, 0x52

    if-eq p4, v6, :cond_b4

    .line 56
    :cond_90
    const-string v6, "volumedown"

    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    const/16 v6, 0x19

    if-eq p4, v6, :cond_b4

    .line 57
    :cond_9c
    const-string v6, "volumeup"

    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    const/16 v6, 0x18

    if-eq p4, v6, :cond_b4

    .line 58
    :cond_a8
    const-string v6, "search"

    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const/16 v5, 0x54

    if-ne p4, v5, :cond_b5

    :cond_b4
    return v3

    :cond_b5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_30

    :cond_b9
    return v2
.end method

.method private f()V
    .registers 2

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->l:Lio/dcloud/feature/ui/c;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->d(Lio/dcloud/feature/ui/c;)V

    return-void
.end method

.method private h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/c;

    .line 2
    iget-boolean v2, v1, Lio/dcloud/feature/ui/c;->D:Z

    if-eqz v2, :cond_6

    .line 3
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->D:Z

    goto :goto_6

    :cond_25
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/ui/b;

    return-object p1
.end method

.method a(I)Lio/dcloud/feature/ui/c;
    .registers 6

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 18
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 19
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    if-ne v3, p1, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;
    .registers 6

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 22
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 23
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;
    .registers 9

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_43

    .line 26
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 27
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->m()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {p1, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v2, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    .line 30
    invoke-static {p2, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 31
    invoke-static {p3, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 32
    :cond_34
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_46

    if-nez v3, :cond_40

    monitor-exit p0

    return-object v2

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_43
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 67
    const-string v0, "plusrequire"

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 68
    const-string v0, "_www/__wap2app.js"

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    .line 69
    const-string v0, "_www/__wap2appconfig.js"

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    .line 71
    :cond_21
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_www/server_index_append.js"

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 72
    invoke-interface {p2, v0, v2}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    .line 73
    const-string v0, "_www/server_index_append.css"

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 76
    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_44
    const-string v0, "_www/__wap2app.css"

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 81
    invoke-interface {p2, p1, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V
    .registers 5

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    if-nez p1, :cond_10

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    .line 7
    :cond_10
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    :cond_1d
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object p2, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object p2, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;)Z
    .registers 5

    .line 14
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 15
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v2

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    return v2
.end method

.method a(Lio/dcloud/feature/ui/c;)Z
    .registers 5

    .line 59
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 60
    iput-boolean v1, p1, Lio/dcloud/feature/ui/c;->D:Z

    .line 62
    :cond_f
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->D:Z

    if-eqz v0, :cond_26

    iget-object v0, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 63
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v2, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 64
    iput-boolean v1, p1, Lio/dcloud/feature/ui/c;->D:Z

    .line 66
    :cond_26
    iget-boolean p1, p1, Lio/dcloud/feature/ui/c;->D:Z

    return p1
.end method

.method declared-synchronized b()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/ui/c;

    .line 7
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v5

    if-nez v5, :cond_f

    .line 8
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_f

    :cond_3b
    if-eqz v2, :cond_49

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 14
    :cond_49
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    monitor-exit p0

    return-object v0

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public b(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Lio/dcloud/feature/ui/c;)V
    .registers 3

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_82

    if-eqz p1, :cond_82

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 20
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 23
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x7

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_3a
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v2, "_www"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_55
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v2, v0}, Lio/dcloud/common/util/BaseInfo;->containsInTemplate(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_69

    const/4 v1, 0x0

    .line 35
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasFile = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";filePath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :cond_82
    return v1
.end method

.method c(Lio/dcloud/feature/ui/c;)I
    .registers 6

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_1e

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 7
    iget v2, v2, Lio/dcloud/feature/ui/c;->E:I

    .line 8
    iget v3, p1, Lio/dcloud/feature/ui/c;->E:I

    if-gt v2, v3, :cond_1b

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1e
    return v0
.end method

.method c()Lio/dcloud/feature/ui/c;
    .registers 2

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method c(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method c(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method d()Lio/dcloud/feature/ui/c;
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0

    return-object v0
.end method

.method d(Lio/dcloud/feature/ui/c;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_2b

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidgetMgr.hideMaskLayer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v3, 0x1e

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method declared-synchronized e()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/ui/c;

    .line 7
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->o()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v5

    if-nez v5, :cond_f

    .line 8
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_f

    :cond_37
    if-eqz v2, :cond_45

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 14
    :cond_45
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    monitor-exit p0

    return-object v0

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method e(Lio/dcloud/feature/ui/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method f(Lio/dcloud/feature/ui/c;)V
    .registers 5

    .line 1
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    if-nez v0, :cond_35

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidgetMgr.showMaskLayer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->o:Ljava/util/ArrayList;

    :cond_22
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v2, 0x1d

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method g()V
    .registers 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method g(Lio/dcloud/feature/ui/c;)V
    .registers 5

    .line 1
    const-string v0, "Map_Path"

    const-string v1, "sortNWindowByZIndex beign"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method i()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v3, 0x2c

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_24

    if-eq v1, v3, :cond_24

    if-eq v1, v2, :cond_24

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/dcloud/common/DHInterface/IApp;->setNeedRefreshApp(Z)V

    return-void

    .line 7
    :cond_24
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->setNeedRefreshApp(Z)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sub-int/2addr v0, v4

    :goto_38
    if-ltz v0, :cond_6f

    .line 11
    iget-object v6, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/feature/ui/c;

    .line 12
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v7

    if-ne v7, v5, :cond_5a

    .line 14
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    iget-object v6, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_6c

    :cond_5a
    if-eq v7, v3, :cond_69

    if-ne v7, v2, :cond_5f

    goto :goto_69

    .line 18
    :cond_5f
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v6}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto :goto_6c

    .line 19
    :cond_69
    :goto_69
    invoke-virtual {v6, v6, v4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Z)V

    :goto_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_6f
    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 14

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3
    :cond_6
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_45

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p1, v3, :cond_45

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_14

    goto :goto_45

    .line 78
    :cond_14
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_3a

    .line 79
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/ui/c;

    .line 80
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 81
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_1e

    :cond_39
    return v1

    .line 84
    :cond_3a
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_44

    .line 86
    invoke-direct {p0}, Lio/dcloud/feature/ui/a;->f()V

    .line 87
    invoke-direct {p0}, Lio/dcloud/feature/ui/a;->h()V

    :cond_44
    return v2

    .line 88
    :cond_45
    :goto_45
    check-cast p2, [Ljava/lang/Object;

    .line 89
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v9, 0x19

    const/16 v10, 0x18

    if-ne p1, v0, :cond_115

    const/4 v3, 0x4

    if-ne v7, v3, :cond_117

    .line 93
    invoke-virtual {p0}, Lio/dcloud/feature/ui/a;->d()Lio/dcloud/feature/ui/c;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8c

    .line 96
    iget-object v5, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    .line 97
    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "back"

    aput-object v8, v6, v2

    aput-object p2, v6, v1

    const-string p2, "{keyType:\'%s\',keyCode:%d}"

    invoke-static {p2, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {v3, v8, p2, v2}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8a

    .line 99
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_8a

    .line 100
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v6, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v8, 0x14

    invoke-interface {p2, v2, v8, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_9b

    :cond_8a
    move v2, p2

    goto :goto_9b

    .line 104
    :cond_8c
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v6, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v8, 0x2b

    invoke-interface {p2, v5, v8, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lio/dcloud/common/DHInterface/IFrameView;

    :goto_9b
    if-nez v2, :cond_107

    if-eqz v5, :cond_107

    .line 107
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    .line 108
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_af

    const/4 v2, -0x1

    .line 109
    invoke-interface {p2, v2}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    const/4 v2, 0x1

    goto :goto_b7

    :cond_af
    if-eqz v3, :cond_b7

    .line 112
    invoke-virtual {p0, v3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 113
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->e()V

    :cond_b7
    :goto_b7
    if-nez v2, :cond_107

    .line 116
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object v2, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object v2, p0, Lio/dcloud/feature/ui/a;->p:Lio/dcloud/feature/ui/a$a;

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v3

    const/16 v6, 0x1a

    invoke-interface {p2, v2, v6, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object p2, v5

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    .line 122
    const-string v3, "0"

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ee

    .line 123
    iget v6, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v3, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_f2

    .line 125
    :cond_ee
    iget v3, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v3, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 127
    :goto_f2
    iput-byte v1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 129
    const-string v3, "none"

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fe

    const-string v3, "auto"

    :cond_fe
    invoke-virtual {p2, v3}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-interface {p2, v2, v4, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_107
    if-nez v2, :cond_115

    .line 138
    const-string v6, "back"

    const/4 v8, 0x0

    const-string v4, "back"

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_14f

    :cond_115
    move-object v5, p1

    goto :goto_14f

    :cond_117
    move-object v5, p1

    const/16 p1, 0x52

    if-ne v7, p1, :cond_127

    .line 141
    const-string v6, "menu"

    const/4 v8, 0x0

    const-string v4, "menu"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_14f

    :cond_127
    if-ne v7, v10, :cond_134

    .line 143
    const-string v6, "volumeup"

    const/4 v8, 0x0

    const-string v4, "volumeup"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_14f

    :cond_134
    if-ne v7, v9, :cond_141

    .line 145
    const-string v6, "volumedown"

    const/4 v8, 0x0

    const-string v4, "volumedown"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_14f

    :cond_141
    const/16 p1, 0x54

    if-ne v7, p1, :cond_14f

    .line 147
    const-string v6, "search"

    const/4 v8, 0x0

    const-string v4, "search"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    :cond_14f
    :goto_14f
    if-ne v5, v0, :cond_155

    .line 150
    const-string p1, "keyup"

    :goto_153
    move-object v4, p1

    goto :goto_165

    .line 151
    :cond_155
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne v5, p1, :cond_15c

    const-string p1, "keydown"

    goto :goto_153

    .line 152
    :cond_15c
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne v5, p1, :cond_163

    const-string p1, "longpressed"

    goto :goto_153

    :cond_163
    const/4 p1, 0x0

    goto :goto_153

    .line 154
    :goto_165
    sget-boolean p1, Lio/dcloud/common/adapter/util/DeviceInfo;->isVolumeButtonEnabled:Z

    if-nez p1, :cond_16e

    if-eq v7, v10, :cond_16f

    if-ne v7, v9, :cond_16e

    goto :goto_16f

    :cond_16e
    move v1, v2

    :cond_16f
    :goto_16f
    const/4 v8, 0x0

    move-object v6, v4

    move-object v3, p0

    .line 160
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

###### Class io.dcloud.feature.ui.a.C0045a (io.dcloud.feature.ui.a$a)
.class Lio/dcloud/feature/ui/a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/a$a;->a:Lio/dcloud/feature/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I
    .registers 6

    .line 1
    iget v0, p1, Lio/dcloud/feature/ui/c;->E:I

    iget v1, p2, Lio/dcloud/feature/ui/c;->E:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 3
    iget-wide v0, p1, Lio/dcloud/feature/ui/c;->u:J

    iget-wide p1, p2, Lio/dcloud/feature/ui/c;->u:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, -0x1

    return p1

    :cond_13
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/ui/c;

    check-cast p2, Lio/dcloud/feature/ui/c;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/a$a;->a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I

    move-result p1

    return p1
.end method
