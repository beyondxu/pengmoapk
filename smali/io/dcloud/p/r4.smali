###### Class io.dcloud.p.r4 (io.dcloud.p.r4)
.class public abstract Lio/dcloud/p/r4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/p/r4$a;

    invoke-direct {v0}, Lio/dcloud/p/r4$a;-><init>()V

    sput-object v0, Lio/dcloud/p/r4;->a:Ljava/util/List;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_2e

    .line 2
    const-string p0, ""

    return-object p0

    .line 3
    :pswitch_6
    const-string p0, "8ey69JAz9lMY9UjCAc5K3oe+u5hL3Wf/pUlsUhQZ/ZqAgcmsz/fZ1f8+ZCLCctIn"

    return-object p0

    .line 4
    :pswitch_9
    const-string p0, "m5YNmdIDVhFsOqs2HNDnnmLXXBpU2qil7h7mUNeij6M="

    return-object p0

    .line 5
    :pswitch_c
    const-string p0, "p2WH3ao/DPQajXDOBOngAQRJy7HFI6I+rNVrL72Tvjg="

    return-object p0

    .line 6
    :pswitch_f
    const-string p0, "5rPjudJDczZ5DrTBECwfWbr6jIGaA05lJJ4z8IfXa1gko92nDYCi7GietE6VgZMY"

    return-object p0

    .line 7
    :pswitch_12
    const-string p0, "evs6OIME2yLCyUChqtQTGtxDh4/6wcSpdRw8lh8NGkyLXZQtZ1A7NDehilU2yXH5"

    return-object p0

    .line 8
    :pswitch_15
    const-string p0, "5rPjudJDczZ5DrTBECwfWX3lxIQFlIC/UMsP+phhn+hM5LDHPI8rrfGoWmO4XXwm"

    return-object p0

    .line 9
    :pswitch_18
    const-string p0, "W3v2HgaLzgcTXlUiOoZ7E6RDsIpMd2Glz1MxJdRxdis%2BkMR6DFN%2FwEsYW5qlORVMKEYtVW%2BVMUoO%0A%20%20%20%20HDpP1x%2BJYEBONT5H53P6VIMRAxZjn%2BGSU2QqUAXYXuDA9OkD2SztJLGWMXqJb5xjvxk4w6dV7K0u%0A%20%20%20%20gf1aka3oTokx9uC%2BH30gE40QuExLX%2BnDfSpAPO7o"

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_1f
    const-string p0, "CEroA9kVcgb5YW85GtDBLrVZfsAsUrOdkBRjB/Uh1+E="

    return-object p0

    .line 11
    :pswitch_22
    const-string p0, "0aMrQEq5Ctd6ijW647Rs/mx5Wynbb/R86n/v901mz4AOZyvzw6yH2fs8osrsbbOK"

    return-object p0

    .line 12
    :pswitch_25
    const-string p0, "5rPjudJDczZ5DrTBECwfWfzp1lNiDJ3F7lPgTGKXbv/Ahar5ZZo+heD2Ylvu1Q1k"

    return-object p0

    .line 13
    :pswitch_28
    const-string p0, "MzNmVWBDga0/H0qKMFZDLz0PBHBKKgKRlNNWHFLAEaJPtU+ccxdpDL48gDm/j1Pn"

    return-object p0

    .line 14
    :pswitch_2b
    const-string p0, "5rPjudJDczZ5DrTBECwfWer9fxhAWnoxI7Hr0jS/XKKlD9cg1eZLP+WDaj1U0IQ9"

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static a()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/p/r4;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v2, "kge&yy&m&kgee&eifiomz{&i"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v2, "j"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v3, "i"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-string v4, "kge&yy&m&kgee&eifiomz{&j"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v2, "kge&jq|mlifkm&{lc&gxmfil{lc&kgzm&Oz"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v2, "JRA"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v2, "eRk"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class io.dcloud.p.r4.a (io.dcloud.p.r4$a)
.class Lio/dcloud/p/r4$a;
.super Ljava/util/ArrayList;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-string v0, "kge&yy&m&il{&ILIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3
    const-string v0, "kge&jq|mlifkm&{lc&gxmfil{lc&ik|a~a|q&ji{m&\\\\_mjXiomIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v0, "kge&c\u007fil&{lc&ixa&xzgpq&ixx&C{Zm\u007fizl^almgIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v0, "kge&{aoegj&{lc&ji{m&kgeegf&IlIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v0, "kge&jq|mlifkm&{lc&gxmfil{lc&{|}j&ik|a~a|q&[|}jWIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v0, "kge&jq|mlifkm&{lc&gxmfil{lc&ik|a~a|q&IlIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v0, "kge&jmara&il&af|mzfid&ik|a~a|q&Lg\u007ffdgilIxxAfngIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v0, "kge&baiil{&il~a{|i&\u007fmj&_mjIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v0, "kge&nd&{ii{&{:{&{lc&il&~almg&zm\u007fizl&[:[Zm\u007fizl^almgIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v0, "kge&iddaifkm&{{x&il&ik|a~a|q&[IIddaifkm_mj^am\u007fIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v0, "kge&gk|gx}{&il&IlIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v0, "kge&jial}&egjil{&{lc&ixa&IxxIk|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v0, "kge&\u007fifoeia&ixx{lclmp&_EXgz|zia|Ik|a~a|q"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
