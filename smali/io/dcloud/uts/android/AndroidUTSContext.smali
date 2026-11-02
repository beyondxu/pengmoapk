###### Class io.dcloud.uts.android.AndroidUTSContext (io.dcloud.uts.android.AndroidUTSContext)
.class public final Lio/dcloud/uts/android/AndroidUTSContext;
.super Ljava/lang/Object;
.source "AndroidUTSContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010J\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010K\u001a\u00020\u001aJ\u001c\u0010L\u001a\u00020\u001a2\u0006\u0010M\u001a\u0002012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020100R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fRg\u0010\u0010\u001aO\u0012K\u0012I\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001a0\u00120\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR&\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR&\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001c\"\u0004\u0008%\u0010\u001eR&\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001c\"\u0004\u0008(\u0010\u001eR&\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001c\"\u0004\u0008+\u0010\u001eR&\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001c\"\u0004\u0008.\u0010\u001eRq\u0010/\u001aY\u0012U\u0012S\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020100\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(2\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020300\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(4\u0012\u0004\u0012\u00020\u001a0\u00120\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001c\"\u0004\u00086\u0010\u001eR;\u00107\u001a#\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020\u001a080\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001c\"\u0004\u0008;\u0010\u001eR;\u0010<\u001a#\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110=\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(>\u0012\u0004\u0012\u00020\u001a080\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001c\"\u0004\u0008@\u0010\u001eR&\u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0 0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u001c\"\u0004\u0008C\u0010\u001eR)\u0010D\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020100\u0012\u0004\u0012\u00020\u001a080\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u001cR)\u0010F\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020100\u0012\u0004\u0012\u00020\u001a080\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\u001cR)\u0010H\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020100\u0012\u0004\u0012\u00020\u001a080\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010\u001c\u00a8\u0006N"
    }
    d2 = {
        "Lio/dcloud/uts/android/AndroidUTSContext;",
        "",
        "<init>",
        "()V",
        "hostAppContext",
        "Landroid/content/Context;",
        "getHostAppContext",
        "()Landroid/content/Context;",
        "setHostAppContext",
        "(Landroid/content/Context;)V",
        "instance",
        "Lio/dcloud/feature/uniapp/AbsSDKInstance;",
        "getInstance",
        "()Lio/dcloud/feature/uniapp/AbsSDKInstance;",
        "setInstance",
        "(Lio/dcloud/feature/uniapp/AbsSDKInstance;)V",
        "onActivityResultListenFunc",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "",
        "getOnActivityResultListenFunc",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "setOnActivityResultListenFunc",
        "(Ljava/util/concurrent/CopyOnWriteArrayList;)V",
        "destroyListenFunc",
        "Lkotlin/Function0;",
        "getDestroyListenFunc",
        "setDestroyListenFunc",
        "pauseListenFunc",
        "getPauseListenFunc",
        "setPauseListenFunc",
        "resumeListenFunc",
        "getResumeListenFunc",
        "setResumeListenFunc",
        "stopListenFunc",
        "getStopListenFunc",
        "setStopListenFunc",
        "backListenFunc",
        "getBackListenFunc",
        "setBackListenFunc",
        "permissionsResultListenFunc",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "permissions",
        "",
        "grantResults",
        "getPermissionsResultListenFunc",
        "setPermissionsResultListenFunc",
        "onTrimMemoryListenFunc",
        "Lkotlin/Function1;",
        "level",
        "getOnTrimMemoryListenFunc",
        "setOnTrimMemoryListenFunc",
        "onConfigChangedListenFunc",
        "Lio/dcloud/uts/UTSJSONObject;",
        "config",
        "getOnConfigChangedListenFunc",
        "setOnConfigChangedListenFunc",
        "onCreateListenFunc",
        "getOnCreateListenFunc",
        "setOnCreateListenFunc",
        "permissionRequestFunc",
        "getPermissionRequestFunc",
        "permissionConfirmFunc",
        "getPermissionConfirmFunc",
        "permissionRequestFinishedFunc",
        "getPermissionRequestFinishedFunc",
        "initContext",
        "initApp",
        "permission",
        "type",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

.field private static backListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static destroyListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static hostAppContext:Landroid/content/Context;

.field private static instance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

.field private static onActivityResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onConfigChangedListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onCreateListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onTrimMemoryListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static pauseListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final permissionConfirmFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final permissionRequestFinishedFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final permissionRequestFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static permissionsResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static resumeListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static stopListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-direct {v0}, Lio/dcloud/uts/android/AndroidUTSContext;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    .line 227
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onActivityResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 228
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->destroyListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->pauseListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 230
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->resumeListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 231
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->stopListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 232
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->backListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionsResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 238
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onTrimMemoryListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 239
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onConfigChangedListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 240
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onCreateListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 242
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionConfirmFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 244
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFinishedFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 232
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->backListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getDestroyListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 228
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->destroyListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getHostAppContext()Landroid/content/Context;
    .registers 2

    .line 224
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->hostAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getInstance()Lio/dcloud/feature/uniapp/AbsSDKInstance;
    .registers 2

    .line 225
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->instance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-object v0
.end method

.method public final getOnActivityResultListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 227
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onActivityResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getOnConfigChangedListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 239
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onConfigChangedListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getOnCreateListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 240
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onCreateListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getOnTrimMemoryListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 238
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->onTrimMemoryListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getPauseListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 229
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->pauseListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getPermissionConfirmFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 243
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionConfirmFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getPermissionRequestFinishedFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 244
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFinishedFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getPermissionRequestFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 242
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getPermissionsResultListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 233
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->permissionsResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getResumeListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 230
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->resumeListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getStopListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 231
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->stopListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final initApp()V
    .registers 4

    .line 257
    invoke-static {}, Lio/dcloud/common/DHInterface/message/ActionBus;->getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;

    move-result-object v0

    new-instance v1, Lio/dcloud/uts/android/AndroidUTSContext$initApp$2;

    invoke-direct {v1}, Lio/dcloud/uts/android/AndroidUTSContext$initApp$2;-><init>()V

    new-instance v2, Lio/dcloud/uts/android/AndroidUTSContext$initApp$1;

    invoke-direct {v2, v1}, Lio/dcloud/uts/android/AndroidUTSContext$initApp$1;-><init>(Lio/dcloud/uts/android/AndroidUTSContext$initApp$2;)V

    check-cast v2, Lio/dcloud/common/DHInterface/message/AbsActionObserver;

    invoke-virtual {v0, v2}, Lio/dcloud/common/DHInterface/message/ActionBus;->observeAction(Lio/dcloud/common/DHInterface/message/AbsActionObserver;)Z

    return-void
.end method

.method public final initContext(Lio/dcloud/feature/uniapp/AbsSDKInstance;)V
    .registers 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-interface {p1}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->hostAppContext:Landroid/content/Context;

    .line 250
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->instance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-void
.end method

.method public final permission(Ljava/lang/String;Lio/dcloud/uts/UTSArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "iterator(...)"

    if-eqz v0, :cond_2d

    .line 328
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 329
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 333
    :cond_2d
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_CONFIRM:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 334
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->permissionConfirmFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 335
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 339
    :cond_4e
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 340
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->permissionRequestFinishedFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 341
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_6f
    return-void
.end method

.method public final setBackListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->backListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setDestroyListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->destroyListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setHostAppContext(Landroid/content/Context;)V
    .registers 2

    .line 224
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->hostAppContext:Landroid/content/Context;

    return-void
.end method

.method public final setInstance(Lio/dcloud/feature/uniapp/AbsSDKInstance;)V
    .registers 2

    .line 225
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->instance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-void
.end method

.method public final setOnActivityResultListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->onActivityResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setOnConfigChangedListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->onConfigChangedListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setOnCreateListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->onCreateListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setOnTrimMemoryListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->onTrimMemoryListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setPauseListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->pauseListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setPermissionsResultListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->permissionsResultListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setResumeListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->resumeListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setStopListenFunc(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sput-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->stopListenFunc:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

###### Class io.dcloud.uts.android.AndroidUTSContext.AnonymousClass1 (io.dcloud.uts.android.AndroidUTSContext$initApp$1)
.class public final Lio/dcloud/uts/android/AndroidUTSContext$initApp$1;
.super Lio/dcloud/common/DHInterface/message/AbsActionObserver;
.source "AndroidUTSContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/android/AndroidUTSContext;->initApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "io/dcloud/uts/android/AndroidUTSContext$initApp$1",
        "Lio/dcloud/common/DHInterface/message/AbsActionObserver;",
        "handleMessage",
        "",
        "t",
        "Lio/dcloud/common/DHInterface/message/action/IAction;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/uts/android/AndroidUTSContext$initApp$2;)V
    .registers 2

    .line 257
    check-cast p1, Lio/dcloud/common/DHInterface/message/IObserveAble;

    invoke-direct {p0, p1}, Lio/dcloud/common/DHInterface/message/AbsActionObserver;-><init>(Lio/dcloud/common/DHInterface/message/IObserveAble;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lio/dcloud/common/DHInterface/message/action/IAction;)Z
    .registers 8

    .line 265
    instance-of v0, p1, Lio/dcloud/common/DHInterface/message/action/AppOnTrimMemoryAction;

    const/4 v1, 0x1

    const-string v2, "iterator(...)"

    if-eqz v0, :cond_30

    .line 267
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getOnTrimMemoryListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 268
    move-object v3, p1

    check-cast v3, Lio/dcloud/common/DHInterface/message/action/AppOnTrimMemoryAction;

    invoke-virtual {v3}, Lio/dcloud/common/DHInterface/message/action/AppOnTrimMemoryAction;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_2f
    return v1

    .line 273
    :cond_30
    instance-of v0, p1, Lio/dcloud/common/DHInterface/message/action/AppOnConfigChangedAction;

    if-eqz v0, :cond_6e

    .line 275
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getOnConfigChangedListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 276
    new-instance v3, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v3}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 277
    move-object v4, p1

    check-cast v4, Lio/dcloud/common/DHInterface/message/action/AppOnConfigChangedAction;

    invoke-virtual {v4}, Lio/dcloud/common/DHInterface/message/action/AppOnConfigChangedAction;->getConfig()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "parseObject(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lio/dcloud/uts/UTSJSONObject;->fillJSON(Ljava/lang/Object;)V

    .line 278
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_6d
    return v1

    .line 283
    :cond_6e
    instance-of v0, p1, Lio/dcloud/common/DHInterface/message/action/WebActivityOnDestroyAction;

    if-eqz v0, :cond_fc

    .line 286
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getDestroyListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 287
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_7f

    .line 290
    :cond_8f
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getDestroyListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 291
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getPauseListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 292
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getResumeListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 293
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getStopListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 294
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getBackListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 295
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getPermissionsResultListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 296
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getOnTrimMemoryListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 297
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getOnConfigChangedListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 298
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getPermissionRequestFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 299
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getPermissionConfirmFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 300
    sget-object p1, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p1}, Lio/dcloud/uts/android/AndroidUTSContext;->getPermissionRequestFinishedFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 302
    invoke-static {}, Lio/dcloud/common/DHInterface/message/ActionBus;->getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;

    move-result-object p1

    sget-object v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->FEATURE_UTS:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    invoke-virtual {p1, v0}, Lio/dcloud/common/DHInterface/message/ActionBus;->stopObserve(Lio/dcloud/common/DHInterface/message/EnumUniqueID;)V

    return v1

    .line 306
    :cond_fc
    instance-of v0, p1, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;

    if-eqz v0, :cond_121

    .line 307
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    check-cast p1, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lio/dcloud/uts/UTSArray;->Companion:Lio/dcloud/uts/UTSArray$Companion;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->getPermissions()[Ljava/lang/String;

    move-result-object p1

    const-string v3, "getPermissions(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lio/dcloud/uts/UTSArray$Companion;->fromNative([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/uts/android/AndroidUTSContext;->permission(Ljava/lang/String;Lio/dcloud/uts/UTSArray;)V

    :cond_121
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.uts.android.AndroidUTSContext.AnonymousClass2 (io.dcloud.uts.android.AndroidUTSContext$initApp$2)
.class public final Lio/dcloud/uts/android/AndroidUTSContext$initApp$2;
.super Ljava/lang/Object;
.source "AndroidUTSContext.kt"

# interfaces
.implements Lio/dcloud/common/DHInterface/message/IObserveAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/android/AndroidUTSContext;->initApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/dcloud/uts/android/AndroidUTSContext$initApp$2",
        "Lio/dcloud/common/DHInterface/message/IObserveAble;",
        "getActionObserverID",
        "Lio/dcloud/common/DHInterface/message/EnumUniqueID;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionObserverID()Lio/dcloud/common/DHInterface/message/EnumUniqueID;
    .registers 2

    .line 259
    sget-object v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->FEATURE_UTS:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    return-object v0
.end method
