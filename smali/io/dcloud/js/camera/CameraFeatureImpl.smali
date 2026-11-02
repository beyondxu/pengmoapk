###### Class io.dcloud.js.camera.CameraFeatureImpl (io.dcloud.js.camera.CameraFeatureImpl)
.class public Lio/dcloud/js/camera/CameraFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field private b:Z

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/camera/CameraFeatureImpl;)Ljava/util/List;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 4
    :try_start_2
    const-string p1, ".temp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method static synthetic a(Lio/dcloud/js/camera/CameraFeatureImpl;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    return p1
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 17

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    aget-object v4, p3, v1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_32

    .line 6
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 7
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 9
    :cond_32
    const-string v1, "captureImage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x2

    const-string v9, "camera"

    const-string v10, "android.permission.CAMERA"

    const-string v11, "CAMERA"

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_9d

    .line 10
    aget-object v0, p3, v3

    invoke-static {v0, v3}, Lio/dcloud/js/camera/a;->a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;

    move-result-object v6

    .line 11
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v5}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_75

    .line 13
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    const/4 v1, -0x5

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v12

    .line 17
    :cond_75
    new-instance v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;

    move-object v7, v2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lio/dcloud/js/camera/CameraFeatureImpl$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Lio/dcloud/common/DHInterface/IApp;)V

    .line 189
    iget-boolean v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    if-eqz v3, :cond_87

    .line 190
    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v12

    .line 191
    :cond_87
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_95

    .line 192
    invoke-virtual {v0, v11}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-object v12

    .line 194
    :cond_95
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v9, v11, v8, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-object v12

    .line 196
    :cond_9d
    const-string v5, "startVideoCapture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 197
    new-instance v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;

    move-object v6, v4

    move-object v4, v2

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lio/dcloud/js/camera/CameraFeatureImpl$b;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 319
    iget-boolean v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    if-eqz v3, :cond_ba

    .line 320
    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v12

    .line 321
    :cond_ba
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c8

    .line 322
    invoke-virtual {v0, v11}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-object v12

    .line 324
    :cond_c8
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v9, v11, v8, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-object v12

    .line 326
    :cond_d0
    const-string v4, "getCamera"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 327
    aget-object v0, p3, v3

    invoke-static {v0, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 328
    new-instance v4, Lio/dcloud/js/camera/a;

    invoke-direct {v4, v0}, Lio/dcloud/js/camera/a;-><init>(I)V

    .line 329
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f5

    .line 330
    invoke-virtual {v4}, Lio/dcloud/js/camera/a;->b()V

    .line 331
    invoke-virtual {v4}, Lio/dcloud/js/camera/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_f5
    iget-boolean v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    if-eqz v0, :cond_fa

    goto :goto_10d

    .line 338
    :cond_fa
    iput-boolean v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->b:Z

    .line 339
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lio/dcloud/js/camera/CameraFeatureImpl$c;

    move-object v1, p0

    move-object v5, p1

    move-object v3, v4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lio/dcloud/js/camera/CameraFeatureImpl$c;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/js/camera/a;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-static {v6, v9, v11, v8, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_10d
    :goto_10d
    return-object v12
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a (io.dcloud.js.camera.CameraFeatureImpl$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/camera/a$a;

.field final synthetic e:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic f:Lio/dcloud/js/camera/CameraFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->f:Lio/dcloud/js/camera/CameraFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iput-object p7, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xb

    .line 1
    const-string v0, "No Permission"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 2
    const-string p1, "IO Error"

    const/4 v0, -0x5

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 6
    :cond_1f
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    invoke-virtual {v2}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2, v0}, Lio/dcloud/common/util/FileUtil;->getShareImageUri(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/content/Intent;)Lio/dcloud/common/util/DCFileUriData;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    invoke-direct {v2, p0, p1}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a;Lio/dcloud/common/util/DCFileUriData;)V

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 155
    const-string v1, "output"

    iget-object p1, p1, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lio/dcloud/js/camera/a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception v0

    move-object p1, v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a (io.dcloud.js.camera.CameraFeatureImpl$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/DCFileUriData;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a;Lio/dcloud/common/util/DCFileUriData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v2, :cond_48

    .line 5
    sget v2, Lio/dcloud/js/camera/a;->e:I

    if-ne v1, v2, :cond_48

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    .line 7
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p2

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a;)V

    invoke-virtual {p2, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_41

    :cond_2c
    const/16 p2, 0xb

    .line 129
    const-string v1, "resultCode is wrong"

    invoke-static {p2, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 132
    :goto_41
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_48
    return v0
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;


# direct methods
.method public static synthetic $r8$lambda$1tDsGvGwv4jB-hOMsUxaMPLlEYY(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFn44rRR2Z2DJ26UZDdxIJAj5qg(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 5
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private static synthetic a(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-boolean p0, p0, Lio/dcloud/js/camera/a$a;->h:Z

    if-eqz p0, :cond_c

    .line 2
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, p0}, Lio/dcloud/common/util/CompressUtil;->compressImage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    .line 4
    :cond_c
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p4, p5}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-boolean v2, v0, Lio/dcloud/common/util/DCFileUriData;->isReplace:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 2
    iget-object v2, v0, Lio/dcloud/common/util/DCFileUriData;->fileReplacePath:Ljava/lang/String;

    iget-object v0, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v0, v4, v3}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    if-eq v0, v4, :cond_29

    .line 3
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;

    invoke-direct {v2, v1}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_29
    :try_start_29
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v0, v0, Lio/dcloud/common/util/DCFileUriData;->fileReplacePath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_37
    :goto_37
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v4, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-boolean v4, v4, Lio/dcloud/js/camera/a$a;->e:Z

    if-eqz v4, :cond_6d

    .line 21
    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v0, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/js/camera/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 23
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;

    invoke-direct {v2, v1}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 32
    :cond_62
    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    .line 35
    :cond_6d
    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v0, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v0, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    :goto_7d
    move-object v6, v0

    move-object v10, v2

    .line 40
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/a$a;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_149

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/a$a;->g:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v2, v2, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v11, Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v12, v2, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v17, 0x1

    const/16 v19, -0x3e9

    const-string v13, ""

    const/16 v16, 0x1

    invoke-direct/range {v11 .. v20}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    const-string v4, "IMAGE_URI"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    iget v2, v11, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const-string v4, "IMAGE_MEDIA_ID"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v2, "IMAGE_INDEX"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/a$a;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IMAGE_CROP"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v2, v11, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    const-string v4, "IMAGE_SAVE_PATH"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    new-instance v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    invoke-direct {v4, v1, v10}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;Ljava/lang/String;)V

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v2, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 102
    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-virtual {v2}, Lio/dcloud/common/util/DCFileUriData;->clear()V

    .line 103
    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lio/dcloud/js/camera/a;->g:I

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_168

    .line 108
    :cond_149
    iget-object v0, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-virtual {v0}, Lio/dcloud/common/util/DCFileUriData;->clear()V

    .line 109
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v5, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v7, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-object v8, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v9, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    new-instance v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;

    invoke-direct/range {v4 .. v10}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :goto_168
    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a.RunnableC0062a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, -0x5

    .line 1
    const-string v1, "IO Error"

    invoke-static {v0, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a.b (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$b)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, -0x5

    .line 1
    const-string v1, "IO Error"

    invoke-static {v0, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a.c (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5
    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v2, :cond_50

    .line 6
    sget v2, Lio/dcloud/js/camera/a;->g:I

    if-ne v1, v2, :cond_50

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    .line 9
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p2

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;)V

    invoke-virtual {p2, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_2c
    const/16 p2, 0xb

    .line 24
    const-string v1, "resultCode is wrong"

    invoke-static {p2, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 27
    :goto_45
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_50
    return v0
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a.c.RunnableC0063a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0060a.RunnableC0061a.c.RunnableC0063a.RunnableC0064a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->a:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0 (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->$r8$lambda$eFn44rRR2Z2DJ26UZDdxIJAj5qg(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1 (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/js/camera/a$a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/dcloud/common/DHInterface/IApp;

.field public final synthetic f$3:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/js/camera/a$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$2:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$3:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/js/camera/a$a;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$2:Lio/dcloud/common/DHInterface/IApp;

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$3:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->$r8$lambda$1tDsGvGwv4jB-hOMsUxaMPLlEYY(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b (io.dcloud.js.camera.CameraFeatureImpl$b)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/js/camera/CameraFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->a:[Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xb

    .line 1
    const-string v0, "No Permission"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/js/camera/a;->a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4
    const-string p1, "IO Error"

    const/4 v0, -0x5

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 9
    :cond_37
    iget-boolean v1, p1, Lio/dcloud/js/camera/a$a;->h:Z

    if-eqz v1, :cond_4d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    move-object v1, v0

    .line 11
    :goto_4e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_60

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 17
    :cond_60
    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    new-instance v4, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    invoke-direct {v4, p0, v1, p1, v0}, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$b;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->b()I

    move-result v1

    if-eqz v1, :cond_82

    .line 94
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->b()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    :cond_82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_b2

    .line 103
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 104
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    :cond_b2
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lio/dcloud/js/camera/a;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bd} :catch_be

    return-void

    :catch_be
    move-exception v0

    move-object p1, v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b.a (io.dcloud.js.camera.CameraFeatureImpl$b$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$b;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/js/camera/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/camera/CameraFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$b;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 12

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    sget-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v4, :cond_e4

    .line 5
    sget v4, Lio/dcloud/js/camera/a;->f:I

    if-ne v0, v4, :cond_e4

    const/4 v0, -0x1

    if-ne v3, v0, :cond_cf

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_5f

    .line 9
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    aget-object p2, p2, v3

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eq p2, v2, :cond_5f

    .line 12
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 13
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return v1

    :cond_5f
    const/4 p2, 0x0

    .line 19
    :try_start_60
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v0, v0, Lio/dcloud/js/camera/a$a;->h:Z

    if-eqz v0, :cond_8c

    .line 20
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/js/camera/b;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 23
    invoke-static {}, Landroidtranscoder/MediaTranscoder;->getInstance()Landroidtranscoder/MediaTranscoder;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v5, v6}, Landroidtranscoder/format/MediaFormatStrategyPresets;->createAndroid720pStrategy(ID)Landroidtranscoder/format/MediaFormatStrategy;

    move-result-object v3

    new-instance v5, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;

    invoke-direct {v5, p0, p2}, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$b$a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2, v4, v3, v5}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    goto :goto_dd

    .line 54
    :cond_8c
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_a3} :catch_a4

    goto :goto_dd

    :catch_a4
    move-exception v0

    if-eqz p2, :cond_aa

    .line 59
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 60
    :cond_aa
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->h:Z

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x63

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_dd

    .line 65
    :cond_cf
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 67
    :goto_dd
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_e4
    return v1
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b.a.C0065a (io.dcloud.js.camera.CameraFeatureImpl$b$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroidtranscoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$b$a;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->h:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeCompleted()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->h:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->h:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x63

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object p1, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.c (io.dcloud.js.camera.CameraFeatureImpl$c)
.class Lio/dcloud/js/camera/CameraFeatureImpl$c;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/a;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Lio/dcloud/js/camera/CameraFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/js/camera/a;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->b:[Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    invoke-static {v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 3
    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    goto :goto_10

    .line 5
    :cond_20
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    invoke-virtual {v0}, Lio/dcloud/js/camera/a;->b()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;Z)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    invoke-static {v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 4
    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_15

    .line 6
    :cond_25
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->d:Lio/dcloud/js/camera/CameraFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->b:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_46

    .line 8
    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v0, 0x2

    aget-object v3, p1, v0

    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    invoke-virtual {p1}, Lio/dcloud/js/camera/a;->a()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_46
    return-void
.end method
