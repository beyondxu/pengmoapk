###### Class com.taobao.weex.common.WXCompatModule (com.taobao.weex.common.WXCompatModule)
.class public abstract Lcom/taobao/weex/common/WXCompatModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
    }
.end annotation


# instance fields
.field private mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 2
    new-instance v0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;-><init>(Lcom/taobao/weex/common/WXCompatModule;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionActivityResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionRequestPermissionsResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.common.WXCompatModule.ModuleReceive (com.taobao.weex.common.WXCompatModule$ModuleReceive)
.class Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXCompatModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleReceive"
.end annotation


# instance fields
.field private mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/common/WXCompatModule;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "actionActivityResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "requestCode"

    const/4 v2, -0x1

    if-nez v0, :cond_31

    const-string v0, "actionRequestPermissionsResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    return-void

    .line 9
    :cond_1b
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 10
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "grantResults"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    .line 12
    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v1, p1, v0, p2}, Lcom/taobao/weex/common/WXCompatModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 13
    :cond_31
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 14
    const-string v0, "resultCode"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v1, p1, v0, p2}, Lcom/taobao/weex/common/WXCompatModule;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
