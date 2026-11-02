###### Class io.dcloud.common.constant.StringConst (io.dcloud.common.constant.StringConst)
.class public final Lio/dcloud/common/constant/StringConst;
.super Lio/dcloud/common/adapter/util/AndroidResources;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/constant/AbsoluteConst;


# static fields
.field private static sChangeTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/AndroidResources;-><init>()V

    return-void
.end method

.method public static getIntSF(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 2
    const-string v0, "barcode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_10
    const-string v0, "scheme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x3

    return p0

    .line 6
    :cond_1a
    const-string/jumbo v0, "stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p0, 0x6

    return p0

    .line 8
    :cond_25
    const-string v0, "shortcut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 p0, 0x5

    return p0

    .line 10
    :cond_2f
    const-string v0, "push"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p0, 0x4

    return p0

    .line 12
    :cond_39
    const-string v0, "myapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 p0, 0x7

    return p0

    .line 14
    :cond_43
    const-string v0, "browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 p0, 0x8

    return p0

    .line 16
    :cond_4e
    const-string/jumbo v0, "third:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5a

    const/16 p0, 0x9

    return p0

    .line 18
    :cond_5a
    const-string v0, "favorite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 p0, 0xa

    return p0

    .line 20
    :cond_65
    const-string v0, "engines"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/16 p0, 0xb

    return p0

    .line 22
    :cond_70
    const-string v0, "apush"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/16 p0, 0x28

    return p0

    .line 24
    :cond_7b
    const-string v0, "speech"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    const/16 p0, 0x1e

    return p0

    :cond_86
    const/4 p0, 0x1

    return p0
.end method
