###### Class io.dcloud.c (io.dcloud.c)
.class Lio/dcloud/c;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

.field b:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/c;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    .line 3
    iput-object p2, p0, Lio/dcloud/c;->b:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/c;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/dcloud/c;->b:Landroid/content/IntentFilter;

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lio/dcloud/c;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    invoke-interface {v0, p1, p2}, Lio/dcloud/feature/internal/reflect/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_17
    return-void
.end method
