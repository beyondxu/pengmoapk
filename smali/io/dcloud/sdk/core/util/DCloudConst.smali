###### Class io.dcloud.sdk.core.util.DCloudConst (io.dcloud.sdk.core.util.DCloudConst)
.class public Lio/dcloud/sdk/core/util/DCloudConst;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/util/DCloudConst$Orientation;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.DCloudConst.Orientation (io.dcloud.sdk.core.util.DCloudConst$Orientation)
.class public interface abstract annotation Lio/dcloud/sdk/core/util/DCloudConst$Orientation;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/DCloudConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Orientation"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
