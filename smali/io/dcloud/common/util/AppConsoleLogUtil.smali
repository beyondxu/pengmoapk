###### Class io.dcloud.common.util.AppConsoleLogUtil (io.dcloud.common.util.AppConsoleLogUtil)
.class public Lio/dcloud/common/util/AppConsoleLogUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;
    }
.end annotation


# static fields
.field private static LOG_MAXLENGTH:I = 0x3e8

.field private static TAG:Ljava/lang/String; = "console"

.field private static mWatcher:Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized DCLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "[___Connect_"

    const-string v1, "[___Connect_"

    const-string v2, "["

    const-class v3, Lio/dcloud/common/util/AppConsoleLogUtil;

    monitor-enter v3

    .line 1
    :try_start_9
    sget-boolean v4, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v4, :cond_f

    goto/16 :goto_c8

    .line 4
    :cond_f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5
    sget-object p1, Lio/dcloud/common/util/AppConsoleLogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_e3

    monitor-exit v3

    return-void

    .line 8
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    sget v2, Lio/dcloud/common/util/AppConsoleLogUtil;->LOG_MAXLENGTH:I

    if-le v4, v2, :cond_ca

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "___]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "___END]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_5c
    if-ge v2, v4, :cond_c8

    sub-int v5, v4, v2

    .line 18
    sget v6, Lio/dcloud/common/util/AppConsoleLogUtil;->LOG_MAXLENGTH:I

    if-lt v5, v6, :cond_66

    add-int/2addr v6, v2

    goto :goto_67

    :cond_66
    move v6, v4

    .line 23
    :goto_67
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-ne v6, v4, :cond_9d

    .line 25
    sget-object v5, Lio/dcloud/common/util/AppConsoleLogUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/dcloud/common/util/AppConsoleLogUtil;->notifyLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 28
    :cond_9d
    sget-object v5, Lio/dcloud/common/util/AppConsoleLogUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/dcloud/common/util/AppConsoleLogUtil;->notifyLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_1c .. :try_end_c6} :catchall_e3

    :goto_c6
    move v2, v6

    goto :goto_5c

    :cond_c8
    :goto_c8
    monitor-exit v3

    return-void

    .line 33
    :cond_ca
    :try_start_ca
    sget-object v0, Lio/dcloud/common/util/AppConsoleLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p1, p0}, Lio/dcloud/common/util/AppConsoleLogUtil;->notifyLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_ca .. :try_end_e1} :catchall_e3

    monitor-exit v3

    return-void

    :catchall_e3
    move-exception p0

    :try_start_e4
    monitor-exit v3
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/AppConsoleLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static notifyLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/AppConsoleLogUtil;->mWatcher:Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-interface {v0, p0, p1}, Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWatcher(Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/util/AppConsoleLogUtil;->mWatcher:Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;

    return-void
.end method

###### Class io.dcloud.common.util.AppConsoleLogUtil.DCAPPLogWatcher (io.dcloud.common.util.AppConsoleLogUtil$DCAPPLogWatcher)
.class public interface abstract Lio/dcloud/common/util/AppConsoleLogUtil$DCAPPLogWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/AppConsoleLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DCAPPLogWatcher"
.end annotation


# virtual methods
.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method
