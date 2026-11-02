###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse (io.dcloud.common.ui.Info.AndroidPrivacyResponse)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;
    }
.end annotation


# instance fields
.field public backToExit:Z

.field public buttonAccept:Ljava/lang/String;

.field public buttonRefuse:Ljava/lang/String;

.field public disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

.field public hrefLoader:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public prompt:Ljava/lang/String;

.field public second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

.field public styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "default"

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->hrefLoader:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->backToExit:Z

    .line 44
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    .line 45
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    .line 46
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.SecondDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$SecondDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondDTO"
.end annotation


# instance fields
.field public buttonAccept:Ljava/lang/String;

.field public buttonRefuse:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StylesDTO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;,
        Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;
    }
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public borderRadius:Ljava/lang/String;

.field public buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

.field public buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

.field public buttonVisitor:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

.field public content:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;

.field public title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.ButtonAcceptDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonAcceptDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.ButtonRefuseDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonRefuseDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.ContentDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$ContentDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.StylesDTO.TitleDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$StylesDTO$TitleDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleDTO"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.common.ui.Info.AndroidPrivacyResponse.disagreeModeDTO (io.dcloud.common.ui.Info.AndroidPrivacyResponse$disagreeModeDTO)
.class public Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "disagreeModeDTO"
.end annotation


# instance fields
.field public loadNativePlugins:Z

.field public showAlways:Z

.field public support:Z

.field public visitorEntry:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->support:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->loadNativePlugins:Z

    .line 10
    iput-boolean v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->visitorEntry:Z

    .line 15
    iput-boolean v0, p0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->showAlways:Z

    return-void
.end method
