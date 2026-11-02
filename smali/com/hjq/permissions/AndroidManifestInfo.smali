###### Class com.hjq.permissions.AndroidManifestInfo (com.hjq.permissions.AndroidManifestInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;,
        Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;,
        Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;,
        Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;,
        Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;
    }
.end annotation


# instance fields
.field final activityInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field applicationInfo:Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

.field packageName:Ljava/lang/String;

.field final permissionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final serviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    return-void
.end method

###### Class com.hjq.permissions.AndroidManifestInfo.ActivityInfo (com.hjq.permissions.AndroidManifestInfo$ActivityInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field supportsPictureInPicture:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.hjq.permissions.AndroidManifestInfo.ApplicationInfo (com.hjq.permissions.AndroidManifestInfo$ApplicationInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field requestLegacyExternalStorage:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.hjq.permissions.AndroidManifestInfo.PermissionInfo (com.hjq.permissions.AndroidManifestInfo$PermissionInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionInfo"
.end annotation


# static fields
.field private static final REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I


# instance fields
.field maxSdkVersion:I

.field name:Ljava/lang/String;

.field usesPermissionFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid12()Z

    move-result v0

    const/high16 v1, 0x10000

    if-eqz v0, :cond_b

    .line 53
    sput v1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    return-void

    .line 55
    :cond_b
    sput v1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method neverForLocation()Z
    .registers 3

    .line 70
    iget v0, p0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->usesPermissionFlags:I

    sget v1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

###### Class com.hjq.permissions.AndroidManifestInfo.ServiceInfo (com.hjq.permissions.AndroidManifestInfo$ServiceInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field permission:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.hjq.permissions.AndroidManifestInfo.UsesSdkInfo (com.hjq.permissions.AndroidManifestInfo$UsesSdkInfo)
.class final Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsesSdkInfo"
.end annotation


# instance fields
.field minSdkVersion:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
