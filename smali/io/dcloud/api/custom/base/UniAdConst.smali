###### Class io.dcloud.api.custom.base.UniAdConst (io.dcloud.api.custom.base.UniAdConst)
.class public Lio/dcloud/api/custom/base/UniAdConst;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/api/custom/base/UniAdConst$CustomBidType;,
        Lio/dcloud/api/custom/base/UniAdConst$BidType;,
        Lio/dcloud/api/custom/base/UniAdConst$CustomAdType;,
        Lio/dcloud/api/custom/base/UniAdConst$AdType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.api.custom.base.UniAdConst.AdType (io.dcloud.api.custom.base.UniAdConst$AdType)
.class public Lio/dcloud/api/custom/base/UniAdConst$AdType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/api/custom/base/UniAdConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdType"
.end annotation


# static fields
.field public static final TYPE_CONTENT:I = 0xe

.field public static final TYPE_DRAW:I = 0xa

.field public static final TYPE_FLOW:I = 0x4

.field public static final TYPE_FULLSCREEN:I = 0x7

.field public static final TYPE_INTERSTITIAL:I = 0xf

.field public static final TYPE_NATIVE:I = 0x4

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_REWARD:I = 0x9

.field public static final TYPE_SPLASH:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.api.custom.base.UniAdConst.BidType (io.dcloud.api.custom.base.UniAdConst$BidType)
.class public Lio/dcloud/api/custom/base/UniAdConst$BidType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/api/custom/base/UniAdConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BidType"
.end annotation


# static fields
.field public static final BID_CLIENT:I = 0x1

.field public static final BID_NONE:I = 0x0

.field public static final BID_SERVER:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.api.custom.base.UniAdConst.CustomAdType (io.dcloud.api.custom.base.UniAdConst$CustomAdType)
.class public interface abstract annotation Lio/dcloud/api/custom/base/UniAdConst$CustomAdType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/api/custom/base/UniAdConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CustomAdType"
.end annotation

###### Class io.dcloud.api.custom.base.UniAdConst.CustomBidType (io.dcloud.api.custom.base.UniAdConst$CustomBidType)
.class public interface abstract annotation Lio/dcloud/api/custom/base/UniAdConst$CustomBidType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/api/custom/base/UniAdConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CustomBidType"
.end annotation
