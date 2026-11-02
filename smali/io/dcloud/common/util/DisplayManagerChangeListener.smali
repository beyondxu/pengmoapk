###### Class io.dcloud.common.util.DisplayManagerChangeListener (io.dcloud.common.util.DisplayManagerChangeListener)
.class public Lio/dcloud/common/util/DisplayManagerChangeListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private final mEntryProxy:Lio/dcloud/EntryProxy;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/Activity;Lio/dcloud/EntryProxy;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->activity:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->mEntryProxy:Lio/dcloud/EntryProxy;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    if-nez p1, :cond_1f

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 3
    :cond_16
    iget-object v0, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->mEntryProxy:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1f

    .line 4
    iget-object v1, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/EntryProxy;->onConfigurationChanged(Landroid/app/Activity;I)V

    :cond_1f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public register()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_10

    sget v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-lt v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_10
    return-void
.end method

.method public unregister()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_f

    sget v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-lt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/DisplayManagerChangeListener;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_f
    return-void
.end method
