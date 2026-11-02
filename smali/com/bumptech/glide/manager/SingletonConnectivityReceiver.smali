###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver (com.bumptech.glide.manager.SingletonConnectivityReceiver)
.class final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"

.field private static volatile instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;


# instance fields
.field private final frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

.field private isRegistered:Z

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V

    .line 63
    invoke-static {v0}, Lcom/bumptech/glide/util/GlideSuppliers;->memorize(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;)V

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_24

    .line 87
    new-instance p1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    goto :goto_2a

    .line 88
    :cond_24
    new-instance v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {v2, p1, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;-><init>(Landroid/content/Context;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    move-object p1, v2

    :goto_2a
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
    .registers 3

    .line 46
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    if-nez v0, :cond_1b

    .line 47
    const-class v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    if-nez v1, :cond_16

    .line 49
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 51
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 53
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    return-object p0
.end method

.method private maybeRegisterReceiver()V
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->register()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    :cond_15
    :goto_15
    return-void
.end method

.method private maybeUnregisterReceiver()V
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 122
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->unregister()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    :cond_15
    :goto_15
    return-void
.end method

.method static reset()V
    .registers 1

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    return-void
.end method


# virtual methods
.method declared-synchronized register(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 3

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeRegisterReceiver()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 95
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized unregister(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeUnregisterReceiver()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 106
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.AnonymousClass1 (com.bumptech.glide.manager.SingletonConnectivityReceiver$1)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    iput-object p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/net/ConnectivityManager;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->val$context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.AnonymousClass2 (com.bumptech.glide.manager.SingletonConnectivityReceiver$2)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .registers 5

    .line 74
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    monitor-enter v0

    .line 77
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    iget-object v2, v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_25

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 80
    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    .line 78
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitor)
.class interface abstract Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FrameworkConnectivityMonitor"
.end annotation


# virtual methods
.method public abstract register()Z
.end method

.method public abstract unregister()V
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24)
.class final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameworkConnectivityMonitorPostApi24"
.end annotation


# instance fields
.field private final connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field isConnected:Z

.field final listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 181
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 182
    iput-object p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    return-void
.end method


# virtual methods
.method public register()Z
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    .line 191
    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v0, v3}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_22} :catch_23

    return v1

    :catch_23
    move-exception v0

    const/4 v1, 0x5

    .line 196
    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 197
    const-string v1, "Failed to register callback"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return v2
.end method

.method public unregister()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24.AnonymousClass1 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private postOnConnectivityChange(Z)V
    .registers 3

    .line 157
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;Z)V

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    const/4 p1, 0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->postOnConnectivityChange(Z)V

    return-void
.end method

.method onConnectivityChange(Z)V
    .registers 4

    .line 169
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    .line 172
    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    iput-boolean p1, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    if-eq v0, p1, :cond_14

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    iget-object v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    :cond_14
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->postOnConnectivityChange(Z)V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24.AnonymousClass1.RunnableC00071 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->postOnConnectivityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;

.field final synthetic val$newState:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;->this$1:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;->val$newState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;->this$1:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1;->val$newState:Z

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;->onConnectivityChange(Z)V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24)
.class final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameworkConnectivityMonitorPreApi24"
.end annotation


# static fields
.field static final EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field final connectivityReceiver:Landroid/content/BroadcastReceiver;

.field final context:Landroid/content/Context;

.field volatile isConnected:Z

.field volatile isRegistered:Z

.field final listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 227
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->context:Landroid/content/Context;

    .line 250
    iput-object p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 251
    iput-object p3, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    return-void
.end method


# virtual methods
.method isConnected()Z
    .registers 5

    const/4 v0, 0x1

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v1}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_d} :catch_18

    if-eqz v1, :cond_16

    .line 364
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0

    :catch_18
    move-exception v1

    const/4 v2, 0x5

    .line 358
    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 359
    const-string v2, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    return v0
.end method

.method notifyChangeOnUiThread(Z)V
    .registers 3

    .line 337
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;Z)V

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onConnectivityChange()V
    .registers 3

    .line 316
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register()Z
    .registers 3

    .line 256
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public unregister()V
    .registers 3

    .line 301
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.AnonymousClass1 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1;
.super Landroid/content/BroadcastReceiver;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 241
    iget-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-virtual {p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->onConnectivityChange()V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.AnonymousClass2 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    .line 279
    :try_start_8
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v1, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    const/4 v1, 0x5

    .line 285
    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 286
    const-string v1, "Failed to register"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :cond_2f
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.AnonymousClass3 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->unregister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z

    if-nez v0, :cond_7

    return-void

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$3;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v1, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.AnonymousClass4 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->onConnectivityChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    .line 321
    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    .line 322
    iget-object v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    if-eq v0, v1, :cond_37

    const/4 v0, 0x3

    .line 323
    const-string v1, "ConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "connectivity changed, isConnected: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-boolean v2, v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_30
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$4;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->notifyChangeOnUiThread(Z)V

    :cond_37
    return-void
.end method

###### Class com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.AnonymousClass5 (com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5)
.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->notifyChangeOnUiThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$5;->val$isConnected:Z

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    return-void
.end method
