###### Class io.dcloud.feature.weex_scroller.helper.DCScrollStartEndHelper (io.dcloud.feature.weex_scroller.helper.DCScrollStartEndHelper)
.class public Lio/dcloud/feature/weex_scroller/helper/DCScrollStartEndHelper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScrollEvent(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_4c

    goto :goto_47

    :sswitch_11
    const-string v0, "scrollstart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_47

    :cond_1a
    const/4 v3, 0x4

    goto :goto_47

    :sswitch_1c
    const-string v0, "scrolltoupper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_47

    :cond_25
    const/4 v3, 0x3

    goto :goto_47

    :sswitch_27
    const-string v0, "scrolltolower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_47

    :cond_30
    const/4 v3, 0x2

    goto :goto_47

    :sswitch_32
    const-string v0, "scrollend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v3, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    packed-switch v3, :pswitch_data_62

    return v1

    :pswitch_4b
    return v2

    :sswitch_data_4c
    .sparse-switch
        -0x361a1933 -> :sswitch_3d
        0x18e712ee -> :sswitch_32
        0x73ff39f9 -> :sswitch_27
        0x747e679a -> :sswitch_1c
        0x7c3615b5 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method
