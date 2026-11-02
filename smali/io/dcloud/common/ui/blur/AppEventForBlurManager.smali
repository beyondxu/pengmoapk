###### Class io.dcloud.common.ui.blur.AppEventForBlurManager (io.dcloud.common.ui.blur.AppEventForBlurManager)
.class public Lio/dcloud/common/ui/blur/AppEventForBlurManager;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppScrollManager"

.field private static callBacks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;",
            ">;"
        }
    .end annotation
.end field

.field public static final isBlur:Z = true

.field private static mLoop:Z = false

.field private static sLastChangedTime:J = 0x0L

.field private static sScrollStart:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sScrollStart:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sScrollStart:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->mLoop:Z

    return p0
.end method

.method static synthetic access$200()J
    .registers 2

    .line 1
    sget-wide v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sLastChangedTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .registers 2

    .line 1
    sput-wide p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sLastChangedTime:J

    return-wide p0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollEnd()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized addEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V
    .registers 3

    const-class v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2
    sget-object v1, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    monitor-exit v0

    return-void

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static onScrollChanged(II)V
    .registers 2

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sScrollStart:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->sLastChangedTime:J

    .line 3
    sget-boolean p0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->mLoop:Z

    if-nez p0, :cond_10

    .line 4
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollStart()V

    .line 6
    :cond_10
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->startLoop()V

    return-void
.end method

.method private static onScrollEnd()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager$3;

    invoke-direct {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$3;-><init>()V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onScrollStart()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager$2;

    invoke-direct {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$2;-><init>()V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onSplashclosed()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager$4;

    invoke-direct {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$4;-><init>()V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V
    .registers 3

    const-class v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2
    sget-object v1, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    monitor-exit v0

    return-void

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private static startLoop()V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->mLoop:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->mLoop:Z

    .line 3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/ui/blur/AppEventForBlurManager$1;

    invoke-direct {v2}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$1;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.common.ui.blur.AppEventForBlurManager.AnonymousClass1 (io.dcloud.common.ui.blur.AppEventForBlurManager$1)
.class Lio/dcloud/common/ui/blur/AppEventForBlurManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/blur/AppEventForBlurManager;->startLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :goto_0
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$102(Z)Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$200()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$002(Z)Z

    .line 5
    invoke-static {v0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$102(Z)Z

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$202(J)J

    .line 7
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$300()V

    goto :goto_0

    :cond_29
    const-wide/16 v0, 0xc8

    .line 11
    :try_start_2b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_0

    :catch_2f
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_34
    return-void
.end method

###### Class io.dcloud.common.ui.blur.AppEventForBlurManager.AnonymousClass2 (io.dcloud.common.ui.blur.AppEventForBlurManager$2)
.class Lio/dcloud/common/ui/blur/AppEventForBlurManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;

    .line 2
    invoke-interface {v3}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;->onContentScrollStart()V

    goto :goto_9

    :cond_17
    return-void
.end method

###### Class io.dcloud.common.ui.blur.AppEventForBlurManager.AnonymousClass3 (io.dcloud.common.ui.blur.AppEventForBlurManager$3)
.class Lio/dcloud/common/ui/blur/AppEventForBlurManager$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;

    .line 2
    invoke-interface {v3}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;->onContentScrollEnd()V

    goto :goto_9

    :cond_17
    return-void
.end method

###### Class io.dcloud.common.ui.blur.AppEventForBlurManager.AnonymousClass4 (io.dcloud.common.ui.blur.AppEventForBlurManager$4)
.class Lio/dcloud/common/ui/blur/AppEventForBlurManager$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onSplashclosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;

    .line 2
    invoke-interface {v3}, Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;->onSplashclosed()V

    goto :goto_9

    :cond_17
    return-void
.end method

###### Class io.dcloud.common.ui.blur.AppEventForBlurManager.OnAppChangedCallBack (io.dcloud.common.ui.blur.AppEventForBlurManager$OnAppChangedCallBack)
.class public interface abstract Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/AppEventForBlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppChangedCallBack"
.end annotation


# virtual methods
.method public abstract onContentScrollEnd()V
.end method

.method public abstract onContentScrollStart()V
.end method

.method public abstract onSplashclosed()V
.end method
