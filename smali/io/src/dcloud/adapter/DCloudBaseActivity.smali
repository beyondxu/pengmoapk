###### Class io.src.dcloud.adapter.DCloudBaseActivity (io.src.dcloud.adapter.DCloudBaseActivity)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;,
        Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;,
        Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;
    }
.end annotation


# static fields
.field public static loadDexDirectInfo:Ljava/lang/String;


# instance fields
.field private loadingSecond:I

.field private mDebugDialog:Landroid/app/AlertDialog;

.field private mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

.field private mLoadingPD:Landroid/app/Dialog;

.field private mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

.field private preDebuggingInfoForWeexDebugging2:Ljava/lang/String;

.field public that:Landroid/app/Activity;

.field private weexDebugStartReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    iput-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return-void
.end method

.method private a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    .line 7
    const-string v0, "socketSuccess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 9
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a()V

    .line 10
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_12

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    return-void

    :cond_13
    const-string p1, "\n"

    if-eqz p2, :cond_2d

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_debug_break_off_reason:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 19
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_debug_cannot_connect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    :goto_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lio/dcloud/base/R$string;->dcloud_debug_possible_causes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {v0, p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity$b;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .registers 4

    if-eqz p3, :cond_5

    .line 4
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a()V

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lio/src/dcloud/adapter/DCloudBaseActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return p0
.end method

.method static synthetic access$202(Lio/src/dcloud/adapter/DCloudBaseActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return p1
.end method

.method static synthetic access$208(Lio/src/dcloud/adapter/DCloudBaseActivity;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return v0
.end method

.method static synthetic access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->preDebuggingInfoForWeexDebugging2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->preDebuggingInfoForWeexDebugging2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->e()V

    return-void
.end method

.method static synthetic access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->a()V

    return-void
.end method

.method static synthetic access$700(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$702(Lio/src/dcloud/adapter/DCloudBaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lio/src/dcloud/adapter/DCloudBaseActivity;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->b()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->f()V

    return-void
.end method

.method private b()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method private c()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_28

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_28
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/apps/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/www/__nvue_debug__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private d()V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 6
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$layout;->dcloud_weex_debug_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    sget v1, Lio/dcloud/base/R$id;->debugTV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    const-string v3, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string v4, "getCurrentPingIP"

    invoke-static {v3, v4, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lio/dcloud/base/R$string;->dcloud_debug_connecting:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_78
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/src/dcloud/adapter/DCloudBaseActivity$a;

    invoke-direct {v1, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$a;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private e()V
    .registers 5

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    invoke-direct {v0, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    .line 5
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "io.dcloud.debug.SOCKET_STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    new-instance v0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    invoke-direct {v0, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    .line 7
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "io.dcloud.debug.ping"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->d()V

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v0, :cond_5

    goto :goto_20

    .line 5
    :cond_5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    if-eqz v0, :cond_20

    .line 6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    .line 10
    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz p1, :cond_41

    .line 4
    new-instance p1, Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;

    invoke-direct {p1, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->weexDebugStartReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;

    .line 5
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->weexDebugStartReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "WEEX_DEBUG_START_WAITING_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "load_dex_direct_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->c()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 10
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->e()V

    .line 13
    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->loadDex(Landroid/app/Application;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initWeex(Landroid/app/Application;)V

    :cond_41
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    if-eqz v0, :cond_10

    .line 3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_10
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    if-eqz v0, :cond_1d

    .line 7
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    :cond_1d
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->weexDebugStartReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;

    if-eqz v0, :cond_2a

    .line 11
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->weexDebugStartReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2a
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onNewIntentImpl(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.DebugSocketStatusReceiver (io.src.dcloud.adapter.DCloudBaseActivity$DebugSocketStatusReceiver)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugSocketStatusReceiver"
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method public constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    const-string p1, "socketStatus"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$000(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;Z)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.SocketCheckReceiver (io.src.dcloud.adapter.DCloudBaseActivity$SocketCheckReceiver)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketCheckReceiver"
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method public constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    const-string v0, "pingIP"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$202(Lio/src/dcloud/adapter/DCloudBaseActivity;I)I

    .line 5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$id;->debugTV:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/dcloud/base/R$string;->dcloud_debug_connecting:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.WeexDebugStartReceiver (io.src.dcloud.adapter.DCloudBaseActivity$WeexDebugStartReceiver)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeexDebugStartReceiver"
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method public constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    const-string v0, "debugging_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$302(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$WeexDebugStartReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$400(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.a (io.src.dcloud.adapter.DCloudBaseActivity$a)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    const-string v0, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string v1, "getDebugSocketStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_b
    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 3
    iget-object v5, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v5}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$200(Lio/src/dcloud/adapter/DCloudBaseActivity;)I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_19

    const/4 v0, 0x1

    goto :goto_2b

    :cond_19
    const-wide/16 v3, 0x3e8

    .line 7
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v3}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$208(Lio/src/dcloud/adapter/DCloudBaseActivity;)I

    .line 9
    invoke-static {v0, v1, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_b

    :cond_2a
    const/4 v0, 0x0

    .line 11
    :goto_2b
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v1, v3, v4, v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b (io.src.dcloud.adapter.DCloudBaseActivity$b)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    iput-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$600(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$700(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_45

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_debug_reconnection_service:I

    new-instance v3, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;

    invoke-direct {v3, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    new-instance v3, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;

    invoke-direct {v3, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$702(Lio/src/dcloud/adapter/DCloudBaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void

    .line 106
    :cond_45
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$700(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 107
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$700(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$700(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_65
    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b.a (io.src.dcloud.adapter.DCloudBaseActivity$b$a)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Android/data/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/apps/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/www/__nvue_debug__"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 7
    :cond_42
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b.DialogInterfaceOnClickListenerC0077b (io.src.dcloud.adapter.DCloudBaseActivity$b$b)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 1
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$800(Lio/src/dcloud/adapter/DCloudBaseActivity;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_72

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    goto :goto_1e

    .line 12
    :cond_10
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :goto_1e
    return-void

    .line 15
    :cond_1f
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$900(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-string v2, "WEEX_DEBUG_START_WAITING_CONNECT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v2, v2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debugging_info"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v2, v2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 19
    new-array p1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    aput-object v2, p1, p2

    const-class v2, Ljava/lang/String;

    aput-object v2, p1, v0

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v2, v2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v3, v3, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v3}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, p2

    aput-object v3, v1, v0

    .line 22
    const-string p2, "initDebugEnvironment"

    const/4 v0, 0x0

    const-string v2, "io.dcloud.feature.weex.WeexDevtoolImpl"

    invoke-static {v2, p2, v0, p1, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_72
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v0, v0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object v0, v0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method
