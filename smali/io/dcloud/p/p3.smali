###### Class io.dcloud.p.p3 (io.dcloud.p.p3)
.class public abstract Lio/dcloud/p/p3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method public static synthetic $r8$lambda$zYOZk4I11xKLnD9_rZTYhZ4BvxY(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lio/dcloud/p/p3;->c(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 6

    .line 2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_83

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_83

    aget-object v3, p0, v2

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 10
    const-string v4, "libweex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libc++_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libimage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libnative-imagetranscoder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libbreakpad-core"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 11
    const-string v4, "libneonui_shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libgifimage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libpl_droidsonroids_gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libnative-filters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v4, "libAMapSDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_80

    .line 14
    :cond_73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-boolean v4, Lio/dcloud/p/p3;->a:Z

    if-nez v4, :cond_80

    .line 16
    invoke-static {v3}, Lio/dcloud/p/p3;->b(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lio/dcloud/p/p3;->a:Z

    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 19
    :cond_83
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_8a
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/p3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/dcloud/p/p3$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_1a2

    goto/16 :goto_19d

    :sswitch_12
    const-string v0, "libzumadata.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_19d

    :cond_1c
    const/16 v3, 0x1d

    goto/16 :goto_19d

    :sswitch_20
    const-string v0, "libtosprotection.armeabi.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_19d

    :cond_2a
    const/16 v3, 0x1c

    goto/16 :goto_19d

    :sswitch_2e
    const-string v0, "baiduprotect1.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_19d

    :cond_38
    const/16 v3, 0x1b

    goto/16 :goto_19d

    :sswitch_3c
    const-string v0, "ijm_lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_19d

    :cond_46
    const/16 v3, 0x1a

    goto/16 :goto_19d

    :sswitch_4a
    const-string v0, "mogosec_march"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_19d

    :cond_54
    const/16 v3, 0x19

    goto/16 :goto_19d

    :sswitch_58
    const-string v0, "maindata/fake_classes.dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_19d

    :cond_62
    const/16 v3, 0x18

    goto/16 :goto_19d

    :sswitch_66
    const-string v0, "libreincp.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_19d

    :cond_70
    const/16 v3, 0x17

    goto/16 :goto_19d

    :sswitch_74
    const-string v0, "jiagu_data.bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_19d

    :cond_7e
    const/16 v3, 0x16

    goto/16 :goto_19d

    :sswitch_82
    const-string v0, "libtosprotection.armeabi-v7a.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto/16 :goto_19d

    :cond_8c
    const/16 v3, 0x15

    goto/16 :goto_19d

    :sswitch_90
    const-string v0, "sign.bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    goto/16 :goto_19d

    :cond_9a
    const/16 v3, 0x14

    goto/16 :goto_19d

    :sswitch_9e
    const-string v0, "secData0.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_19d

    :cond_a8
    const/16 v3, 0x13

    goto/16 :goto_19d

    :sswitch_ac
    const-string v0, "mogosec_dexinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto/16 :goto_19d

    :cond_b6
    const/16 v3, 0x12

    goto/16 :goto_19d

    :sswitch_ba
    const-string v0, "libshellx-super.2021.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    goto/16 :goto_19d

    :cond_c4
    const/16 v3, 0x11

    goto/16 :goto_19d

    :sswitch_c8
    const-string v0, "itse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_19d

    :cond_d2
    const/16 v3, 0x10

    goto/16 :goto_19d

    :sswitch_d6
    const-string v0, "libreincp_x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_19d

    :cond_e0
    const/16 v3, 0xf

    goto/16 :goto_19d

    :sswitch_e4
    const-string v0, "ijiami.ajm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_19d

    :cond_ee
    const/16 v3, 0xe

    goto/16 :goto_19d

    :sswitch_f2
    const-string v0, "mxsafe.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fc

    goto/16 :goto_19d

    :cond_fc
    const/16 v3, 0xd

    goto/16 :goto_19d

    :sswitch_100
    const-string v0, "mxsafe.config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10a

    goto/16 :goto_19d

    :cond_10a
    const/16 v3, 0xc

    goto/16 :goto_19d

    :sswitch_10e
    const-string v0, "mogosec_classes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    goto/16 :goto_19d

    :cond_118
    const/16 v3, 0xb

    goto/16 :goto_19d

    :sswitch_11c
    const-string v0, "libtosprotection.x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_126

    goto/16 :goto_19d

    :cond_126
    const/16 v3, 0xa

    goto/16 :goto_19d

    :sswitch_12a
    const-string v0, "libpreverify1.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_134

    goto/16 :goto_19d

    :cond_134
    const/16 v3, 0x9

    goto/16 :goto_19d

    :sswitch_138
    const-string v0, "mxsafe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_142

    goto/16 :goto_19d

    :cond_142
    const/16 v3, 0x8

    goto/16 :goto_19d

    :sswitch_146
    const-string v0, "libuusafe.jar.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14f

    goto :goto_19d

    :cond_14f
    const/4 v3, 0x7

    goto :goto_19d

    :sswitch_151
    const-string v0, "libzuma.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15a

    goto :goto_19d

    :cond_15a
    const/4 v3, 0x6

    goto :goto_19d

    :sswitch_15c
    const-string v0, "mxsafe.data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_165

    goto :goto_19d

    :cond_165
    const/4 v3, 0x5

    goto :goto_19d

    :sswitch_167
    const-string v0, "ijiami3.ajm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto :goto_19d

    :cond_170
    const/4 v3, 0x4

    goto :goto_19d

    :sswitch_172
    const-string v0, "mogosec_data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17b

    goto :goto_19d

    :cond_17b
    const/4 v3, 0x3

    goto :goto_19d

    :sswitch_17d
    const-string v0, "baiduprotect.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_186

    goto :goto_19d

    :cond_186
    const/4 v3, 0x2

    goto :goto_19d

    :sswitch_188
    const-string v0, "libijmDataEncryption.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_191

    goto :goto_19d

    :cond_191
    const/4 v3, 0x1

    goto :goto_19d

    :sswitch_193
    const-string v0, "libuusafe.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19c

    goto :goto_19d

    :cond_19c
    const/4 v3, 0x0

    :goto_19d
    packed-switch v3, :pswitch_data_21c

    return v1

    :pswitch_1a1
    return v2

    :sswitch_data_1a2
    .sparse-switch
        -0x7f34ab28 -> :sswitch_193
        -0x785186ea -> :sswitch_188
        -0x6ff9a27f -> :sswitch_17d
        -0x5fa4791e -> :sswitch_172
        -0x5f4d2b0c -> :sswitch_167
        -0x5e56c3e0 -> :sswitch_15c
        -0x59337f8a -> :sswitch_151
        -0x41073075 -> :sswitch_146
        -0x3f2f0048 -> :sswitch_138
        -0x3d8afa50 -> :sswitch_12a
        -0x3d206dca -> :sswitch_11c
        -0x280d4a12 -> :sswitch_10e
        -0x24a775c8 -> :sswitch_100
        -0x138f191b -> :sswitch_f2
        -0x31486b5 -> :sswitch_e4
        -0x1671017 -> :sswitch_d6
        0x317cbd -> :sswitch_c8
        0x19286ba -> :sswitch_ba
        0x226830d -> :sswitch_ac
        0xa81e4a2 -> :sswitch_9e
        0x127d1d56 -> :sswitch_90
        0x246c3aba -> :sswitch_82
        0x416e10b2 -> :sswitch_74
        0x4af6a300 -> :sswitch_66
        0x66f8d411 -> :sswitch_58
        0x6b94220b -> :sswitch_4a
        0x6d7cd332 -> :sswitch_3c
        0x70d4730a -> :sswitch_2e
        0x7c40ebcd -> :sswitch_20
        0x7d57e28c -> :sswitch_12
    .end sparse-switch

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_80

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_80

    aget-object v4, p0, v3

    .line 5
    const-string v5, "apps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "uni-js"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "fonts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "dcloud"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "supplierconfig"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "amap_"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "location_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "map_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    goto :goto_7d

    .line 9
    :cond_70
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-boolean v5, Lio/dcloud/p/p3;->b:Z

    if-nez v5, :cond_7d

    .line 11
    invoke-static {v4}, Lio/dcloud/p/p3;->a(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lio/dcloud/p/p3;->b:Z

    :cond_7d
    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 14
    :cond_80
    const-string p0, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_86} :catch_87

    return-object p0

    :catch_87
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_4ce

    goto/16 :goto_4c9

    :sswitch_12
    const-string v0, "libtosprotection.armeabi.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_4c9

    :cond_1c
    const/16 v3, 0x57

    goto/16 :goto_4c9

    :sswitch_20
    const-string v0, "libvenSec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_4c9

    :cond_2a
    const/16 v3, 0x56

    goto/16 :goto_4c9

    :sswitch_2e
    const-string v0, "liblegudb.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_4c9

    :cond_38
    const/16 v3, 0x55

    goto/16 :goto_4c9

    :sswitch_3c
    const-string v0, "libvirbox64.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_4c9

    :cond_46
    const/16 v3, 0x54

    goto/16 :goto_4c9

    :sswitch_4a
    const-string v0, "libsgmain.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_4c9

    :cond_54
    const/16 v3, 0x53

    goto/16 :goto_4c9

    :sswitch_58
    const-string v0, "libfdog.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_4c9

    :cond_62
    const/16 v3, 0x52

    goto/16 :goto_4c9

    :sswitch_66
    const-string v0, "libtprt.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_4c9

    :cond_70
    const/16 v3, 0x51

    goto/16 :goto_4c9

    :sswitch_74
    const-string v0, "libsecmain.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_4c9

    :cond_7e
    const/16 v3, 0x50

    goto/16 :goto_4c9

    :sswitch_82
    const-string v0, "libbasec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto/16 :goto_4c9

    :cond_8c
    const/16 v3, 0x4f

    goto/16 :goto_4c9

    :sswitch_90
    const-string v0, "libsgsecuritybody.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    goto/16 :goto_4c9

    :cond_9a
    const/16 v3, 0x4e

    goto/16 :goto_4c9

    :sswitch_9e
    const-string v0, "libexec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_4c9

    :cond_a8
    const/16 v3, 0x4d

    goto/16 :goto_4c9

    :sswitch_ac
    const-string v0, "libmobisec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto/16 :goto_4c9

    :cond_b6
    const/16 v3, 0x4c

    goto/16 :goto_4c9

    :sswitch_ba
    const-string v0, "libfakejni.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    goto/16 :goto_4c9

    :cond_c4
    const/16 v3, 0x4b

    goto/16 :goto_4c9

    :sswitch_c8
    const-string v0, "libmogosec_sodecrypt.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_4c9

    :cond_d2
    const/16 v3, 0x4a

    goto/16 :goto_4c9

    :sswitch_d6
    const-string v0, "libreincp.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_4c9

    :cond_e0
    const/16 v3, 0x49

    goto/16 :goto_4c9

    :sswitch_e4
    const-string v0, "ibmogosecurity.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_4c9

    :cond_ee
    const/16 v3, 0x48

    goto/16 :goto_4c9

    :sswitch_f2
    const-string v0, "libcmvmp.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fc

    goto/16 :goto_4c9

    :cond_fc
    const/16 v3, 0x47

    goto/16 :goto_4c9

    :sswitch_100
    const-string v0, "libdSafeShell.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10a

    goto/16 :goto_4c9

    :cond_10a
    const/16 v3, 0x46

    goto/16 :goto_4c9

    :sswitch_10e
    const-string v0, "libshellx.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    goto/16 :goto_4c9

    :cond_118
    const/16 v3, 0x45

    goto/16 :goto_4c9

    :sswitch_11c
    const-string v0, "libzBugly-yaq.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_126

    goto/16 :goto_4c9

    :cond_126
    const/16 v3, 0x44

    goto/16 :goto_4c9

    :sswitch_12a
    const-string v0, "libshel1x.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_134

    goto/16 :goto_4c9

    :cond_134
    const/16 v3, 0x43

    goto/16 :goto_4c9

    :sswitch_138
    const-string v0, "libNSaferOnly.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_142

    goto/16 :goto_4c9

    :cond_142
    const/16 v3, 0x42

    goto/16 :goto_4c9

    :sswitch_146
    const-string v0, "libx3g.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_150

    goto/16 :goto_4c9

    :cond_150
    const/16 v3, 0x41

    goto/16 :goto_4c9

    :sswitch_154
    const-string v0, "libegis.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15e

    goto/16 :goto_4c9

    :cond_15e
    const/16 v3, 0x40

    goto/16 :goto_4c9

    :sswitch_162
    const-string v0, "libmogosecurity.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16c

    goto/16 :goto_4c9

    :cond_16c
    const/16 v3, 0x3f

    goto/16 :goto_4c9

    :sswitch_170
    const-string v0, "libtup.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17a

    goto/16 :goto_4c9

    :cond_17a
    const/16 v3, 0x3e

    goto/16 :goto_4c9

    :sswitch_17e
    const-string v0, "libvenustech.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_188

    goto/16 :goto_4c9

    :cond_188
    const/16 v3, 0x3d

    goto/16 :goto_4c9

    :sswitch_18c
    const-string v0, "libedog.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_196

    goto/16 :goto_4c9

    :cond_196
    const/16 v3, 0x3c

    goto/16 :goto_4c9

    :sswitch_19a
    const-string v0, "libDexHelper-x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a4

    goto/16 :goto_4c9

    :cond_1a4
    const/16 v3, 0x3b

    goto/16 :goto_4c9

    :sswitch_1a8
    const-string v0, "libexecmain.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b2

    goto/16 :goto_4c9

    :cond_1b2
    const/16 v3, 0x3a

    goto/16 :goto_4c9

    :sswitch_1b6
    const-string v0, "libenvid-ashield-sdk.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c0

    goto/16 :goto_4c9

    :cond_1c0
    const/16 v3, 0x39

    goto/16 :goto_4c9

    :sswitch_1c4
    const-string v0, "libuusafeempty.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ce

    goto/16 :goto_4c9

    :cond_1ce
    const/16 v3, 0x38

    goto/16 :goto_4c9

    :sswitch_1d2
    const-string v0, "libgeiri.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1dc

    goto/16 :goto_4c9

    :cond_1dc
    const/16 v3, 0x37

    goto/16 :goto_4c9

    :sswitch_1e0
    const-string v0, "libjiagu.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ea

    goto/16 :goto_4c9

    :cond_1ea
    const/16 v3, 0x36

    goto/16 :goto_4c9

    :sswitch_1ee
    const-string v0, "libtosprotection.armeabi-v7a.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f8

    goto/16 :goto_4c9

    :cond_1f8
    const/16 v3, 0x35

    goto/16 :goto_4c9

    :sswitch_1fc
    const-string v0, "libAPKProtect.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_206

    goto/16 :goto_4c9

    :cond_206
    const/16 v3, 0x34

    goto/16 :goto_4c9

    :sswitch_20a
    const-string v0, "ibvirbox32.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_214

    goto/16 :goto_4c9

    :cond_214
    const/16 v3, 0x33

    goto/16 :goto_4c9

    :sswitch_218
    const-string v0, "OPPOProtect2019.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_222

    goto/16 :goto_4c9

    :cond_222
    const/16 v3, 0x32

    goto/16 :goto_4c9

    :sswitch_226
    const-string v0, "libitsec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_230

    goto/16 :goto_4c9

    :cond_230
    const/16 v3, 0x31

    goto/16 :goto_4c9

    :sswitch_234
    const-string v0, "libbaiduprotect_x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23e

    goto/16 :goto_4c9

    :cond_23e
    const/16 v3, 0x30

    goto/16 :goto_4c9

    :sswitch_242
    const-string v0, "libashieldAdapter.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24c

    goto/16 :goto_4c9

    :cond_24c
    const/16 v3, 0x2f

    goto/16 :goto_4c9

    :sswitch_250
    const-string v0, "libnqshield.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25a

    goto/16 :goto_4c9

    :cond_25a
    const/16 v3, 0x2e

    goto/16 :goto_4c9

    :sswitch_25e
    const-string v0, "DexHelper.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_268

    goto/16 :goto_4c9

    :cond_268
    const/16 v3, 0x2d

    goto/16 :goto_4c9

    :sswitch_26c
    const-string v0, "libnesec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_276

    goto/16 :goto_4c9

    :cond_276
    const/16 v3, 0x2c

    goto/16 :goto_4c9

    :sswitch_27a
    const-string v0, "libomesStdSco.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_284

    goto/16 :goto_4c9

    :cond_284
    const/16 v3, 0x2b

    goto/16 :goto_4c9

    :sswitch_288
    const-string v0, "libapssec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_292

    goto/16 :goto_4c9

    :cond_292
    const/16 v3, 0x2a

    goto/16 :goto_4c9

    :sswitch_296
    const-string v0, "libshellx-super.2021.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a0

    goto/16 :goto_4c9

    :cond_2a0
    const/16 v3, 0x29

    goto/16 :goto_4c9

    :sswitch_2a4
    const-string v0, "libreincp_x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ae

    goto/16 :goto_4c9

    :cond_2ae
    const/16 v3, 0x28

    goto/16 :goto_4c9

    :sswitch_2b2
    const-string v0, "libddog.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2bc

    goto/16 :goto_4c9

    :cond_2bc
    const/16 v3, 0x27

    goto/16 :goto_4c9

    :sswitch_2c0
    const-string v0, "libbaiduprotect_art.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ca

    goto/16 :goto_4c9

    :cond_2ca
    const/16 v3, 0x26

    goto/16 :goto_4c9

    :sswitch_2ce
    const-string v0, "libxgVipSecurity.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d8

    goto/16 :goto_4c9

    :cond_2d8
    const/16 v3, 0x25

    goto/16 :goto_4c9

    :sswitch_2dc
    const-string v0, "libshell-super.2019.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e6

    goto/16 :goto_4c9

    :cond_2e6
    const/16 v3, 0x24

    goto/16 :goto_4c9

    :sswitch_2ea
    const-string v0, "libBugly-yaq.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f4

    goto/16 :goto_4c9

    :cond_2f4
    const/16 v3, 0x23

    goto/16 :goto_4c9

    :sswitch_2f8
    const-string v0, "libDexHelper.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_302

    goto/16 :goto_4c9

    :cond_302
    const/16 v3, 0x22

    goto/16 :goto_4c9

    :sswitch_306
    const-string v0, "libSecShell.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_310

    goto/16 :goto_4c9

    :cond_310
    const/16 v3, 0x21

    goto/16 :goto_4c9

    :sswitch_314
    const-string v0, "libSecShel1.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31e

    goto/16 :goto_4c9

    :cond_31e
    const/16 v3, 0x20

    goto/16 :goto_4c9

    :sswitch_322
    const-string v0, "libmogosec_dex.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32c

    goto/16 :goto_4c9

    :cond_32c
    const/16 v3, 0x1f

    goto/16 :goto_4c9

    :sswitch_330
    const-string v0, "libSecShell_art.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33a

    goto/16 :goto_4c9

    :cond_33a
    const/16 v3, 0x1e

    goto/16 :goto_4c9

    :sswitch_33e
    const-string v0, "libbaiduprotect.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_348

    goto/16 :goto_4c9

    :cond_348
    const/16 v3, 0x1d

    goto/16 :goto_4c9

    :sswitch_34c
    const-string v0, "libhdog.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_356

    goto/16 :goto_4c9

    :cond_356
    const/16 v3, 0x1c

    goto/16 :goto_4c9

    :sswitch_35a
    const-string v0, "libdemolish.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_364

    goto/16 :goto_4c9

    :cond_364
    const/16 v3, 0x1b

    goto/16 :goto_4c9

    :sswitch_368
    const-string v0, "kdpdata.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_372

    goto/16 :goto_4c9

    :cond_372
    const/16 v3, 0x1a

    goto/16 :goto_4c9

    :sswitch_376
    const-string v0, "librsprotect.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_380

    goto/16 :goto_4c9

    :cond_380
    const/16 v3, 0x19

    goto/16 :goto_4c9

    :sswitch_384
    const-string v0, "libtosprotection.x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38e

    goto/16 :goto_4c9

    :cond_38e
    const/16 v3, 0x18

    goto/16 :goto_4c9

    :sswitch_392
    const-string v0, "libpreverify1.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39c

    goto/16 :goto_4c9

    :cond_39c
    const/16 v3, 0x17

    goto/16 :goto_4c9

    :sswitch_3a0
    const-string v0, "libjgdtc.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3aa

    goto/16 :goto_4c9

    :cond_3aa
    const/16 v3, 0x16

    goto/16 :goto_4c9

    :sswitch_3ae
    const-string v0, "libuusafe.jar.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b8

    goto/16 :goto_4c9

    :cond_3b8
    const/16 v3, 0x15

    goto/16 :goto_4c9

    :sswitch_3bc
    const-string v0, "libprotectClass.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c6

    goto/16 :goto_4c9

    :cond_3c6
    const/16 v3, 0x14

    goto/16 :goto_4c9

    :sswitch_3ca
    const-string v0, "libjiagu_ls.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d4

    goto/16 :goto_4c9

    :cond_3d4
    const/16 v3, 0x13

    goto/16 :goto_4c9

    :sswitch_3d8
    const-string v0, "libvdog.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e2

    goto/16 :goto_4c9

    :cond_3e2
    const/16 v3, 0x12

    goto/16 :goto_4c9

    :sswitch_3e6
    const-string v0, "libSafeManageService.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f0

    goto/16 :goto_4c9

    :cond_3f0
    const/16 v3, 0x11

    goto/16 :goto_4c9

    :sswitch_3f4
    const-string v0, "libchaosvmp.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3fe

    goto/16 :goto_4c9

    :cond_3fe
    const/16 v3, 0x10

    goto/16 :goto_4c9

    :sswitch_402
    const-string v0, "OPPOProtect.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40c

    goto/16 :goto_4c9

    :cond_40c
    const/16 v3, 0xf

    goto/16 :goto_4c9

    :sswitch_410
    const-string v0, "libzuma.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41a

    goto/16 :goto_4c9

    :cond_41a
    const/16 v3, 0xe

    goto/16 :goto_4c9

    :sswitch_41e
    const-string v0, "libkwslinker.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_428

    goto/16 :goto_4c9

    :cond_428
    const/16 v3, 0xd

    goto/16 :goto_4c9

    :sswitch_42c
    const-string v0, "libgeiri-x86.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_436

    goto/16 :goto_4c9

    :cond_436
    const/16 v3, 0xc

    goto/16 :goto_4c9

    :sswitch_43a
    const-string v0, "libshell.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_444

    goto/16 :goto_4c9

    :cond_444
    const/16 v3, 0xb

    goto/16 :goto_4c9

    :sswitch_448
    const-string v0, "libdemolishdata.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_452

    goto/16 :goto_4c9

    :cond_452
    const/16 v3, 0xa

    goto/16 :goto_4c9

    :sswitch_456
    const-string v0, "libxloader.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_460

    goto/16 :goto_4c9

    :cond_460
    const/16 v3, 0x9

    goto/16 :goto_4c9

    :sswitch_464
    const-string v0, "libapktoolplus_jiagu.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46e

    goto/16 :goto_4c9

    :cond_46e
    const/16 v3, 0x8

    goto/16 :goto_4c9

    :sswitch_472
    const-string v0, "libexecv3.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47b

    goto :goto_4c9

    :cond_47b
    const/4 v3, 0x7

    goto :goto_4c9

    :sswitch_47d
    const-string v0, "libsecexe.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_486

    goto :goto_4c9

    :cond_486
    const/4 v3, 0x6

    goto :goto_4c9

    :sswitch_488
    const-string v0, "libsecenh.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_491

    goto :goto_4c9

    :cond_491
    const/4 v3, 0x5

    goto :goto_4c9

    :sswitch_493
    const-string v0, "libkwscr.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49c

    goto :goto_4c9

    :cond_49c
    const/4 v3, 0x4

    goto :goto_4c9

    :sswitch_49e
    const-string v0, "libkwscmm.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a7

    goto :goto_4c9

    :cond_4a7
    const/4 v3, 0x3

    goto :goto_4c9

    :sswitch_4a9
    const-string v0, "libashield.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b2

    goto :goto_4c9

    :cond_4b2
    const/4 v3, 0x2

    goto :goto_4c9

    :sswitch_4b4
    const-string v0, "libijmDataEncryption.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4bd

    goto :goto_4c9

    :cond_4bd
    const/4 v3, 0x1

    goto :goto_4c9

    :sswitch_4bf
    const-string v0, "libuusafe.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c8

    goto :goto_4c9

    :cond_4c8
    const/4 v3, 0x0

    :goto_4c9
    packed-switch v3, :pswitch_data_630

    return v1

    :pswitch_4cd
    return v2

    :sswitch_data_4ce
    .sparse-switch
        -0x7f34ab28 -> :sswitch_4bf
        -0x785186ea -> :sswitch_4b4
        -0x765c2bfb -> :sswitch_4a9
        -0x764eaeb7 -> :sswitch_49e
        -0x6f2a7267 -> :sswitch_493
        -0x6cee8f89 -> :sswitch_488
        -0x6c63019c -> :sswitch_47d
        -0x6c3ae369 -> :sswitch_472
        -0x68a9bc90 -> :sswitch_464
        -0x63bccb1c -> :sswitch_456
        -0x62137c9a -> :sswitch_448
        -0x610643a1 -> :sswitch_43a
        -0x5e3a51bc -> :sswitch_42c
        -0x5b3fe61f -> :sswitch_41e
        -0x59337f8a -> :sswitch_410
        -0x5721ce65 -> :sswitch_402
        -0x52dc4054 -> :sswitch_3f4
        -0x4ed318b4 -> :sswitch_3e6
        -0x49afe5e1 -> :sswitch_3d8
        -0x48db0d11 -> :sswitch_3ca
        -0x441da2a4 -> :sswitch_3bc
        -0x41073075 -> :sswitch_3ae
        -0x3e1f46a7 -> :sswitch_3a0
        -0x3d8afa50 -> :sswitch_392
        -0x3d206dca -> :sswitch_384
        -0x39e4ce1f -> :sswitch_376
        -0x320a06f7 -> :sswitch_368
        -0x2fc861b0 -> :sswitch_35a
        -0x2e47236f -> :sswitch_34c
        -0x2aaf56ef -> :sswitch_33e
        -0x1dd77b9e -> :sswitch_330
        -0x15b4d570 -> :sswitch_322
        -0x152d735f -> :sswitch_314
        -0x1512a17a -> :sswitch_306
        -0x145dfe96 -> :sswitch_2f8
        -0xca54c8e -> :sswitch_2ea
        -0x84a1e91 -> :sswitch_2dc
        -0x5d4e33f -> :sswitch_2ce
        -0x2826e93 -> :sswitch_2c0
        -0x1e01073 -> :sswitch_2b2
        -0x1671017 -> :sswitch_2a4
        0x19286ba -> :sswitch_296
        0x2b50358 -> :sswitch_288
        0x98aea7d -> :sswitch_27a
        0x105e4715 -> :sswitch_26c
        0x10f0fe65 -> :sswitch_25e
        0x111fbcf9 -> :sswitch_250
        0x1d1be420 -> :sswitch_242
        0x216f857a -> :sswitch_234
        0x2275df89 -> :sswitch_226
        0x22db1a75 -> :sswitch_218
        0x2374bfc6 -> :sswitch_20a
        0x239c2a92 -> :sswitch_1fc
        0x246c3aba -> :sswitch_1ee
        0x25dfa31f -> :sswitch_1e0
        0x28df828d -> :sswitch_1d2
        0x2a0a6d8f -> :sswitch_1c4
        0x2bee785d -> :sswitch_1b6
        0x2c93695b -> :sswitch_1a8
        0x2f4376a1 -> :sswitch_19a
        0x33062ace -> :sswitch_18c
        0x3419aa9c -> :sswitch_17e
        0x34f37560 -> :sswitch_170
        0x37c75a5b -> :sswitch_162
        0x37d59c19 -> :sswitch_154
        0x3820b143 -> :sswitch_146
        0x3c0f8ea2 -> :sswitch_138
        0x3d1f0622 -> :sswitch_12a
        0x3e8a2782 -> :sswitch_11c
        0x405e70dd -> :sswitch_10e
        0x4227f1a6 -> :sswitch_100
        0x46786240 -> :sswitch_f2
        0x4a3bf547 -> :sswitch_e4
        0x4af6a300 -> :sswitch_d6
        0x4c0db2f6 -> :sswitch_c8
        0x4ef4851f -> :sswitch_ba
        0x543d1807 -> :sswitch_ac
        0x54985ab4 -> :sswitch_9e
        0x579a7e2f -> :sswitch_90
        0x5e373f9d -> :sswitch_82
        0x6049a585 -> :sswitch_74
        0x612dfa67 -> :sswitch_66
        0x67ec660f -> :sswitch_58
        0x6cbafcf8 -> :sswitch_4a
        0x6d30fe1b -> :sswitch_3c
        0x73893920 -> :sswitch_2e
        0x768af4b3 -> :sswitch_20
        0x7c40ebcd -> :sswitch_12
    .end sparse-switch

    :pswitch_data_630
    .packed-switch 0x0
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
        :pswitch_4cd
    .end packed-switch
.end method

.method private static synthetic c(Landroid/content/Context;)V
    .registers 8

    const-string v0, "vc"

    const-string v1, "pdr"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 4
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    invoke-static {p0, v1, v0}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_67

    .line 8
    :cond_23
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    const-string v5, "man"

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v5, "ran"

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v5, "sofs"

    invoke-static {v3}, Lio/dcloud/p/p3;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v3, "afs"

    invoke-static {p0}, Lio/dcloud/p/p3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v3, "isjg"

    sget-boolean v5, Lio/dcloud/p/p3;->a:Z

    sget-boolean v6, Lio/dcloud/p/p3;->b:Z

    or-int/2addr v5, v6

    if-eqz v5, :cond_51

    const-string v5, "1"

    goto :goto_53

    :cond_51
    const-string v5, "0"

    :goto_53
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0, v1, v0, v4}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "packdata"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_67} :catch_67

    :catch_67
    :goto_67
    return-void
.end method

###### Class io.dcloud.p.p3$$ExternalSyntheticLambda0 (io.dcloud.p.p3$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/p3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/p3$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/p3$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/p/p3;->$r8$lambda$zYOZk4I11xKLnD9_rZTYhZ4BvxY(Landroid/content/Context;)V

    return-void
.end method
