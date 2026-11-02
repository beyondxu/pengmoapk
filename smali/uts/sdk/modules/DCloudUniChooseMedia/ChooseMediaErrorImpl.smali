###### Class uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaErrorImpl (uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaErrorImpl)
.class public Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;
.super Lio/dcloud/uniapp/UniError;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0008\u0016\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;",
        "Lio/dcloud/uniapp/UniError;",
        "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;",
        "errCode",
        "",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorCode;",
        "uniErrorSubject",
        "",
        "<init>",
        "(Ljava/lang/Number;Ljava/lang/String;)V",
        "getErrCode",
        "()Ljava/lang/Number;",
        "setErrCode",
        "(Ljava/lang/Number;)V",
        "uni-chooseMedia_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public errCode:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .registers 4

    const-string v0, "errCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniErrorSubject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lio/dcloud/uniapp/UniError;-><init>()V

    .line 107
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;->setErrSubject(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;->setErrCode(Ljava/lang/Number;)V

    .line 109
    invoke-static {}, Luts/sdk/modules/DCloudUniChooseMedia/IndexKt;->getChooseMediaUniErrors()Lio/dcloud/uts/Map;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_21

    const-string p1, ""

    :cond_21
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;->setErrMsg(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Number;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 106
    const-string p2, "uni-chooseMedia"

    :cond_6
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrCode()Ljava/lang/Number;
    .registers 2

    .line 105
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;->errCode:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "errCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setErrCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorImpl;->errCode:Ljava/lang/Number;

    return-void
.end method
