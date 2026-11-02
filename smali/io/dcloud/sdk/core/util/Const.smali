###### Class io.dcloud.sdk.core.util.Const (io.dcloud.sdk.core.util.Const)
.class public Lio/dcloud/sdk/core/util/Const;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/util/Const$MaterialType;,
        Lio/dcloud/sdk/core/util/Const$InteractionType;,
        Lio/dcloud/sdk/core/util/Const$CustomBidType;,
        Lio/dcloud/sdk/core/util/Const$BidType;,
        Lio/dcloud/sdk/core/util/Const$FeedAdType;,
        Lio/dcloud/sdk/core/util/Const$PrivacyType;,
        Lio/dcloud/sdk/core/util/Const$CustomAdType;,
        Lio/dcloud/sdk/core/util/Const$AdType;
    }
.end annotation


# static fields
.field public static final AD_CLICK:I = 0x29

.field public static final AD_DL_COMPLETE:I = 0x1e

.field public static final AD_DL_FAILED:I = 0x20

.field public static final AD_DL_START:I = 0x1d

.field public static final AD_INSTALL:I = 0x1f

.field public static final AD_REQUEST_FAIL:I = 0x0

.field public static final AD_REQUEST_ING:I = -0x1

.field public static final AD_REQUEST_SUCCESS:I = 0x1

.field public static final AD_SHOW:I = 0x28

.field public static final DC_ADN:Ljava/lang/String; = "dc_adn"

.field public static final DC_FEED_ADN:Ljava/lang/String; = "dc_feed_adn"

.field public static final DC_VIDEO_ADN:Ljava/lang/String; = "dc_video_adn"

.field public static final PROVIDER_TYPE_CHINA:Ljava/lang/String; = "china"

.field public static final PROVIDER_TYPE_GLOBAL:Ljava/lang/String; = "global"

.field public static final PULL_TYPE_B2F_SPLASH:I = 0x3

.field public static final PULL_TYPE_OTHERS:I = 0x2

.field public static final PULL_TYPE_SPLASH:I = 0x1

.field public static final TYPE_BD:Ljava/lang/String; = "bd"

.field public static final TYPE_CSJ:Ljava/lang/String; = "csj"

.field public static final TYPE_GDT:Ljava/lang/String; = "gdt"

.field public static final TYPE_GG:Ljava/lang/String; = "gg"

.field public static final TYPE_GM:Ljava/lang/String; = "gm"

.field public static final TYPE_HW:Ljava/lang/String; = "hw"

.field public static final TYPE_KS:Ljava/lang/String; = "ks"

.field public static final TYPE_PG:Ljava/lang/String; = "pg"

.field public static final TYPE_SGM:Ljava/lang/String; = "sgm"

.field public static final TYPE_WM:Ljava/lang/String; = "wm"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.Const.AdType (io.dcloud.sdk.core.util.Const$AdType)
.class public Lio/dcloud/sdk/core/util/Const$AdType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdType"
.end annotation


# static fields
.field public static final TYPE_CONTENT:I = 0xe

.field public static final TYPE_DRAMA:I = 0xb

.field public static final TYPE_DRAW:I = 0xa

.field public static final TYPE_FLOW:I = 0x4

.field public static final TYPE_FULLSCREEN:I = 0x7

.field public static final TYPE_INTERSTITIAL:I = 0xf

.field public static final TYPE_NATIVE:I = 0x4

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PRE_VIDEO:I = 0x5

.field public static final TYPE_REWARD:I = 0x9

.field public static final TYPE_SPLASH:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.Const.BidType (io.dcloud.sdk.core.util.Const$BidType)
.class public Lio/dcloud/sdk/core/util/Const$BidType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
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

###### Class io.dcloud.sdk.core.util.Const.CustomAdType (io.dcloud.sdk.core.util.Const$CustomAdType)
.class public interface abstract annotation Lio/dcloud/sdk/core/util/Const$CustomAdType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CustomAdType"
.end annotation

###### Class io.dcloud.sdk.core.util.Const.CustomBidType (io.dcloud.sdk.core.util.Const$CustomBidType)
.class public interface abstract annotation Lio/dcloud/sdk/core/util/Const$CustomBidType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CustomBidType"
.end annotation

###### Class io.dcloud.sdk.core.util.Const.FeedAdType (io.dcloud.sdk.core.util.Const$FeedAdType)
.class public Lio/dcloud/sdk/core/util/Const$FeedAdType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedAdType"
.end annotation


# static fields
.field public static final FEED_LARGE_TOP_ICON:I = 0x2

.field public static final FEED_SMALL_RIGHT_ICON:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.Const.InteractionType (io.dcloud.sdk.core.util.Const$InteractionType)
.class public Lio/dcloud/sdk/core/util/Const$InteractionType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InteractionType"
.end annotation


# static fields
.field public static final INTERACTION_BROWSER:I = 0x2

.field public static final INTERACTION_DOWNLOAD:I = 0x1

.field public static final INTERACTION_UNKNOW:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.Const.MaterialType (io.dcloud.sdk.core.util.Const$MaterialType)
.class public Lio/dcloud/sdk/core/util/Const$MaterialType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialType"
.end annotation


# static fields
.field public static final MATERIAL_GROUP_IMAGES:I = 0x3

.field public static final MATERIAL_SINGLE_IMAGE:I = 0x2

.field public static final MATERIAL_UNKNOW:I = 0x0

.field public static final MATERIAL_VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.Const.PrivacyType (io.dcloud.sdk.core.util.Const$PrivacyType)
.class public Lio/dcloud/sdk/core/util/Const$PrivacyType;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyType"
.end annotation


# static fields
.field public static final IS_ADULT:Ljava/lang/String; = "is_adult"

.field public static final IS_CAN_GET_ANDROID_ID:Ljava/lang/String; = "is_can_get_android_id"

.field public static final IS_CAN_GET_INSTALL_APP_LIST:Ljava/lang/String; = "is_can_get_install_app_list"

.field public static final IS_CAN_GET_MAC:Ljava/lang/String; = "is_can_get_mac"

.field public static final IS_CAN_GET_RUNNING_APPS:Ljava/lang/String; = "is_can_get_running_apps"

.field public static final IS_CAN_USE_LOCATION:Ljava/lang/String; = "is_can_use_location"

.field public static final IS_CAN_USE_PHONE_STATE:Ljava/lang/String; = "is_can_use_phone_state"

.field public static final IS_CAN_USE_STORAGE:Ljava/lang/String; = "is_can_use_storage"

.field public static final IS_CAN_USE_WIFI_STATE:Ljava/lang/String; = "is_can_use_wifi_state"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
