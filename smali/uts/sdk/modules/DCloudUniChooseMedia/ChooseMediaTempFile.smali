###### Class uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaTempFile (uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaTempFile)
.class public Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u001c\u0008\u0016\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0003j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0004\u001a\u00060\u0003j\u0002`\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012R\u001e\u0010\u0006\u001a\u00020\u00078\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u0018R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0010\"\u0004\u0008\"\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;",
        "Lio/dcloud/uts/UTSObject;",
        "tempFilePath",
        "",
        "fileType",
        "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFileType;",
        "size",
        "",
        "byteSize",
        "duration",
        "height",
        "width",
        "thumbTempFilePath",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V",
        "getTempFilePath",
        "()Ljava/lang/String;",
        "setTempFilePath",
        "(Ljava/lang/String;)V",
        "getFileType",
        "setFileType",
        "getSize",
        "()Ljava/lang/Number;",
        "setSize",
        "(Ljava/lang/Number;)V",
        "getByteSize",
        "setByteSize",
        "getDuration",
        "setDuration",
        "getHeight",
        "setHeight",
        "getWidth",
        "setWidth",
        "getThumbTempFilePath",
        "setThumbTempFilePath",
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
.field private byteSize:Ljava/lang/Number;

.field private duration:Ljava/lang/Number;

.field private fileType:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private height:Ljava/lang/Number;

.field private size:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private tempFilePath:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private thumbTempFilePath:Ljava/lang/String;

.field private width:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .registers 10

    const-string v0, "tempFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 46
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->tempFilePath:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->fileType:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->size:Ljava/lang/Number;

    .line 52
    iput-object p4, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->byteSize:Ljava/lang/Number;

    .line 53
    iput-object p5, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->duration:Ljava/lang/Number;

    .line 54
    iput-object p6, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->height:Ljava/lang/Number;

    .line 55
    iput-object p7, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->width:Ljava/lang/Number;

    .line 56
    iput-object p8, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->thumbTempFilePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x8

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_b

    move-object p5, v0

    :cond_b
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_10

    move-object p6, v0

    :cond_10
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_15

    move-object p7, v0

    :cond_15
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_1b

    move-object p9, v0

    goto :goto_1c

    :cond_1b
    move-object p9, p8

    :goto_1c
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 45
    invoke-direct/range {p1 .. p9}, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getByteSize()Ljava/lang/Number;
    .registers 2

    .line 52
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->byteSize:Ljava/lang/Number;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Number;
    .registers 2

    .line 53
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->duration:Ljava/lang/Number;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Number;
    .registers 2

    .line 54
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->height:Ljava/lang/Number;

    return-object v0
.end method

.method public getSize()Ljava/lang/Number;
    .registers 2

    .line 50
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->size:Ljava/lang/Number;

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->tempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbTempFilePath()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->thumbTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Number;
    .registers 2

    .line 55
    iget-object v0, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->width:Ljava/lang/Number;

    return-object v0
.end method

.method public setByteSize(Ljava/lang/Number;)V
    .registers 2

    .line 52
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->byteSize:Ljava/lang/Number;

    return-void
.end method

.method public setDuration(Ljava/lang/Number;)V
    .registers 2

    .line 53
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->duration:Ljava/lang/Number;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Number;)V
    .registers 2

    .line 54
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->height:Ljava/lang/Number;

    return-void
.end method

.method public setSize(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->size:Ljava/lang/Number;

    return-void
.end method

.method public setTempFilePath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->tempFilePath:Ljava/lang/String;

    return-void
.end method

.method public setThumbTempFilePath(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->thumbTempFilePath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/Number;)V
    .registers 2

    .line 55
    iput-object p1, p0, Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;->width:Ljava/lang/Number;

    return-void
.end method
