###### Class androidx.core.app.NotificationManagerCompat (androidx.core.app.NotificationManagerCompat)
.class public final Landroidx/core/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationManagerCompat$CancelTask;,
        Landroidx/core/app/NotificationManagerCompat$Task;,
        Landroidx/core/app/NotificationManagerCompat$NotifyTask;,
        Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;,
        Landroidx/core/app/NotificationManagerCompat$Api23Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api24Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api26Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api30Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api28Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api34Impl;,
        Landroidx/core/app/NotificationManagerCompat$SideChannelManager;,
        Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroidx/core/app/NotificationManagerCompat$InterruptionFilter;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/app/NotificationManager;Landroid/content/Context;)V
    .registers 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 230
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 222
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .registers 2

    .line 217
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_notification_listeners"

    .line 788
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 791
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_3e

    .line 793
    :try_start_f
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 794
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 795
    const-string v1, ":"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 796
    new-instance v2, Ljava/util/HashSet;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 797
    array-length v3, v1

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_3a

    aget-object v5, v1, v4

    .line 798
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 800
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 803
    :cond_3a
    sput-object v2, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 804
    sput-object p0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 806
    :cond_3e
    sget-object p0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_42
    move-exception p0

    .line 807
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    throw p0
.end method

.method private pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .registers 5

    .line 873
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_3
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    if-nez v1, :cond_14

    .line 875
    new-instance v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 877
    :cond_14
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 878
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .registers 2

    .line 849
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 850
    const-string v0, "android.support.useSideChannel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .registers 12

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    .line 369
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0

    .line 371
    :cond_d
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 373
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 374
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    .line 377
    :try_start_2a
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 378
    const-string v5, "checkOpNoThrow"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 380
    const-string v7, "OP_POST_NOTIFICATION"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 381
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v9

    aput-object v1, v6, v3

    aput-object v2, v6, v10

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_70} :catch_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_70} :catch_74
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a .. :try_end_70} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_70} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_70} :catch_74
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_70} :catch_74

    if-nez v0, :cond_73

    return v3

    :cond_73
    return v9

    :catch_74
    return v3
.end method

.method public canUseFullScreenIntent()Z
    .registers 4

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    return v2

    .line 837
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1b

    .line 838
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 839
    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    return v2

    :cond_19
    const/4 v0, 0x0

    return v0

    .line 842
    :cond_1b
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api34Impl;->canUseFullScreenIntent(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method

.method public cancel(I)V
    .registers 3

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 4

    .line 249
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelAll()V
    .registers 2

    .line 257
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 4

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 426
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_b
    return-void
.end method

.method public createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V
    .registers 2

    .line 451
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 4

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 465
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroup(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    :cond_b
    return-void
.end method

.method public createNotificationChannelGroup(Landroidx/core/app/NotificationChannelGroupCompat;)V
    .registers 2

    .line 479
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    return-void
.end method

.method public createNotificationChannelGroups(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 525
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public createNotificationChannelGroupsCompat(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;)V"
        }
    .end annotation

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationChannelGroupCompat;

    .line 542
    invoke-virtual {v1}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 544
    :cond_2d
    iget-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V

    :cond_32
    return-void
.end method

.method public createNotificationChannels(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 492
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public createNotificationChannelsCompat(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationChannelCompat;

    .line 509
    invoke-virtual {v1}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 511
    :cond_2d
    iget-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    :cond_32
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .registers 4

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 559
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .registers 4

    .line 570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 571
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public deleteUnlistedNotificationChannels(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 585
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_44

    .line 587
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 588
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_10

    .line 591
    :cond_29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3a

    .line 592
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api30Impl;->getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_10

    .line 595
    :cond_3a
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 596
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v2, v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    goto :goto_10

    :cond_44
    return-void
.end method

.method public getActiveNotifications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 358
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api23Impl;->getActiveNotifications(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 360
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurrentInterruptionFilter()I
    .registers 3

    .line 861
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 866
    :cond_8
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api23Impl;->getCurrentInterruptionFilter(Landroid/app/NotificationManager;)I

    move-result v0

    return v0
.end method

.method public getImportance()I
    .registers 3

    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    .line 398
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->getImportance(Landroid/app/NotificationManager;)I

    move-result v0

    return v0

    :cond_d
    const/16 v0, -0x3e8

    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 4

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 609
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 5

    .line 641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 642
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat$Api30Impl;->getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1

    .line 645
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 4

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 622
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 624
    new-instance v0, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    return-object v0

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 5

    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 660
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 662
    new-instance p2, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {p2, p1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    return-object p2

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 6

    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 676
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api28Impl;->getNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    return-object p1

    .line 677
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_35

    .line 679
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannelGroup;

    move-result-object v1

    .line 680
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v1

    :cond_35
    return-object v2
.end method

.method public getNotificationChannelGroupCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat;
    .registers 4

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_12

    .line 698
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 700
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    return-object v0

    .line 702
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_28

    .line 703
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 705
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    return-object v0

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannelGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 750
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannelGroups(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 752
    :cond_d
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationChannelGroupsCompat()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;"
        }
    .end annotation

    .line 762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4f

    .line 763
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 766
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_19

    .line 767
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1d

    .line 768
    :cond_19
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    .line 769
    :goto_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 770
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 771
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_45

    .line 772
    new-instance v5, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v5, v4}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 774
    :cond_45
    new-instance v5, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v5, v4, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4e
    return-object v3

    .line 780
    :cond_4f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationChannels()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 718
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 720
    :cond_d
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationChannelsCompat()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_35

    .line 731
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 735
    new-instance v3, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v3, v2}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_34
    return-object v1

    .line 740
    :cond_35
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    .line 284
    invoke-static {p3}, Landroidx/core/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 285
    new-instance v0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 288
    iget-object p3, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    .line 290
    :cond_1a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;",
            ">;)V"
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 307
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;

    .line 308
    iget-object v3, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mTag:Ljava/lang/String;

    iget v4, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mId:I

    iget-object v2, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v3, v4, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api23Impl (androidx.core.app.NotificationManagerCompat$Api23Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActiveNotifications(Landroid/app/NotificationManager;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 1252
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    if-nez p0, :cond_c

    .line 1254
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1256
    :cond_c
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getCurrentInterruptionFilter(Landroid/app/NotificationManager;)I
    .registers 1

    .line 1262
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p0

    return p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api24Impl (androidx.core.app.NotificationManagerCompat$Api24Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areNotificationsEnabled(Landroid/app/NotificationManager;)Z
    .registers 1

    .line 1277
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method static getImportance(Landroid/app/NotificationManager;)I
    .registers 1

    .line 1282
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getImportance()I

    move-result p0

    return p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api26Impl (androidx.core.app.NotificationManagerCompat$Api26Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .registers 2

    .line 1300
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static createNotificationChannelGroup(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V
    .registers 2

    .line 1324
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    return-void
.end method

.method static createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 1330
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    return-void
.end method

.method static createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1312
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method static deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 2

    .line 1342
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method static deleteNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 2

    .line 1348
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    return-void
.end method

.method static getId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 1354
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .registers 1

    .line 1359
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 2

    .line 1306
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannelGroups(Landroid/app/NotificationManager;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api28Impl (androidx.core.app.NotificationManagerCompat$Api28Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 2

    .line 1375
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api30Impl (androidx.core.app.NotificationManagerCompat$Api30Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 3

    .line 1396
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method static getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 1390
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.Api34Impl (androidx.core.app.NotificationManagerCompat$Api34Impl)
.class Landroidx/core/app/NotificationManagerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canUseFullScreenIntent(Landroid/app/NotificationManager;)Z
    .registers 1

    .line 1411
    invoke-virtual {p0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result p0

    return p0
.end method

###### Class androidx.core.app.NotificationManagerCompat.CancelTask (androidx.core.app.NotificationManagerCompat$CancelTask)
.class Landroidx/core/app/NotificationManagerCompat$CancelTask;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationManagerCompat$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelTask"
.end annotation


# instance fields
.field final all:Z

.field final id:I

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1206
    iput p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    const/4 p1, 0x0

    .line 1207
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1208
    iput-boolean p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    .line 1213
    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    .line 1214
    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1215
    iput-boolean p1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    iget-boolean v0, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    if-eqz v0, :cond_a

    .line 1221
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/support/v4/app/INotificationSideChannel;->cancelAll(Ljava/lang/String;)V

    return-void

    .line 1223
    :cond_a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/support/v4/app/INotificationSideChannel;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancelTask[packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    const-string v1, ", tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v1, ", all:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1235
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.NotificationManagerCompat.InterruptionFilter (androidx.core.app.NotificationManagerCompat$InterruptionFilter)
.class public interface abstract annotation Landroidx/core/app/NotificationManagerCompat$InterruptionFilter;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InterruptionFilter"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.app.NotificationManagerCompat.NotificationWithIdAndTag (androidx.core.app.NotificationManagerCompat$NotificationWithIdAndTag)
.class public Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWithIdAndTag"
.end annotation


# instance fields
.field final mId:I

.field mNotification:Landroid/app/Notification;

.field final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .registers 4

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 4

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mTag:Ljava/lang/String;

    .line 325
    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mId:I

    .line 326
    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mNotification:Landroid/app/Notification;

    return-void
.end method

###### Class androidx.core.app.NotificationManagerCompat.NotifyTask (androidx.core.app.NotificationManagerCompat$NotifyTask)
.class Landroidx/core/app/NotificationManagerCompat$NotifyTask;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationManagerCompat$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyTask"
.end annotation


# instance fields
.field final id:I

.field final notif:Landroid/app/Notification;

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .registers 5

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    .line 1176
    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    .line 1177
    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    .line 1178
    iput-object p4, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifyTask[packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    const-string v1, ", tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.NotificationManagerCompat.ServiceConnectedEvent (androidx.core.app.NotificationManagerCompat$ServiceConnectedEvent)
.class Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceConnectedEvent"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    .line 1160
    iput-object p2, p0, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    return-void
.end method

###### Class androidx.core.app.NotificationManagerCompat.SideChannelManager (androidx.core.app.NotificationManagerCompat$SideChannelManager)
.class Landroidx/core/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    }
.end annotation


# static fields
.field private static final MSG_QUEUE_TASK:I = 0x0

.field private static final MSG_RETRY_LISTENER_QUEUE:I = 0x3

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2


# instance fields
.field private mCachedEnabledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    .line 896
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 899
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    .line 900
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NotificationManagerCompat"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 901
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 902
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ensureServiceBound(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
    .registers 5

    .line 1040
    iget-boolean v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 1043
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 1046
    iget-boolean v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 1047
    iput v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    goto :goto_3f

    .line 1049
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to bind to listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1052
    :goto_3f
    iget-boolean p1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    return p1
.end method

.method private ensureServiceUnbound(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .registers 3

    .line 1059
    iget-boolean v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v0, :cond_c

    .line 1060
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1061
    iput-boolean v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    :cond_c
    const/4 v0, 0x0

    .line 1063
    iput-object v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    return-void
.end method

.method private handleQueueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .registers 5

    .line 934
    invoke-direct {p0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V

    .line 935
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 936
    iget-object v2, v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-direct {p0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method private handleRetryListenerQueue(Landroid/content/ComponentName;)V
    .registers 3

    .line 958
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    if-eqz p1, :cond_d

    .line 960
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    :cond_d
    return-void
.end method

.method private handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 942
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    if-eqz p1, :cond_16

    .line 944
    invoke-static {p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;

    move-result-object p2

    iput-object p2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    const/4 p2, 0x0

    .line 945
    iput p2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 946
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    :cond_16
    return-void
.end method

.method private handleServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 951
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    if-eqz p1, :cond_d

    .line 953
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    :cond_d
    return-void
.end method

.method private processListenerQueue(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .registers 7

    .line 1095
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 1097
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued tasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_2f
    iget-object v2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    goto/16 :goto_ae

    .line 1102
    :cond_39
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    if-nez v2, :cond_44

    goto :goto_af

    .line 1109
    :cond_44
    :goto_44
    iget-object v2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationManagerCompat$Task;

    if-nez v2, :cond_4f

    goto :goto_a3

    .line 1114
    :cond_4f
    :try_start_4f
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_69
    iget-object v3, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    invoke-interface {v2, v3}, Landroidx/core/app/NotificationManagerCompat$Task;->send(Landroid/support/v4/app/INotificationSideChannel;)V

    .line 1118
    iget-object v2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;
    :try_end_73
    .catch Landroid/os/DeadObjectException; {:try_start_4f .. :try_end_73} :catch_89
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_73} :catch_74

    goto :goto_44

    :catch_74
    move-exception v1

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteException communicating with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :catch_89
    nop

    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote service has died: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_a3
    :goto_a3
    iget-object v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 1131
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    :cond_ae
    :goto_ae
    return-void

    .line 1104
    :cond_af
    :goto_af
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    return-void
.end method

.method private scheduleListenerRetry(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .registers 7

    .line 1072
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 1075
    :cond_c
    iget v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 1076
    iget v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    const/4 v3, 0x6

    const-string v4, "NotifManCompat"

    if-le v0, v3, :cond_4f

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Giving up on delivering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object p1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void

    .line 1082
    :cond_4f
    iget v0, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1083
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling retry for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_72
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1087
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateListenerMap()V
    .registers 9

    .line 988
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 989
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_fb

    .line 993
    :cond_10
    iput-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 994
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 995
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 994
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 996
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 997
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "NotifManCompat"

    if-eqz v3, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 998
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_31

    .line 1001
    :cond_4a
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Permission present on component "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", not adding listener record."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1008
    :cond_74
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1011
    :cond_78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7c
    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1012
    iget-object v5, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1013
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Adding listener record for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_a8
    iget-object v3, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    new-instance v5, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {v5, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 1020
    :cond_b3
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    .line 1021
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1022
    :cond_bd
    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 1023
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1024
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 1025
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 1026
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing listener record for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_ee
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {p0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 1029
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_bd

    :cond_fb
    :goto_fb
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 915
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 p1, 0x0

    return p1

    .line 927
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Landroid/content/ComponentName;)V

    return v1

    .line 924
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Landroid/content/ComponentName;)V

    return v1

    .line 920
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;

    .line 921
    iget-object v0, p1, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return v1

    .line 917
    :cond_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/core/app/NotificationManagerCompat$Task;

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V

    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v0, 0x3

    .line 966
    const-string v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Connected to service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;

    invoke-direct {v1, p1, p2}, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 971
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x3

    .line 976
    const-string v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Disconnected from service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_1a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .registers 4

    .line 910
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

###### Class androidx.core.app.NotificationManagerCompat.SideChannelManager.ListenerRecord (androidx.core.app.NotificationManagerCompat$SideChannelManager$ListenerRecord)
.class Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat$SideChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field bound:Z

.field final componentName:Landroid/content/ComponentName;

.field retryCount:I

.field service:Landroid/support/v4/app/INotificationSideChannel;

.field taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/core/app/NotificationManagerCompat$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .registers 4

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1139
    iput-boolean v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 1143
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 1145
    iput v0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 1148
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    return-void
.end method

###### Class androidx.core.app.NotificationManagerCompat.Task (androidx.core.app.NotificationManagerCompat$Task)
.class interface abstract Landroidx/core/app/NotificationManagerCompat$Task;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Task"
.end annotation


# virtual methods
.method public abstract send(Landroid/support/v4/app/INotificationSideChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
