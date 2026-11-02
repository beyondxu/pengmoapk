###### Class androidx.core.provider.FontProvider (androidx.core.provider.FontProvider)
.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$ContentQueryWrapper;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 222
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 208
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    .line 211
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 212
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 190
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result p0

    .line 191
    invoke-static {p1, p0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 60
    invoke-static {p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p0

    return-object p0

    .line 63
    :cond_15
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object p0

    const/4 p1, 0x0

    .line 65
    invoke-static {p1, p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p0

    return-object p0
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 86
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 95
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 97
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    .line 98
    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    .line 100
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_4e

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    invoke-static {p0, p2}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4b

    return-object v2

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4e
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_50
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Found content provider "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_70
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No package found for authority: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 6

    .line 195
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 196
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 198
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 199
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_15

    sub-int/2addr v2, v3

    return v2

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 20

    move-object/from16 v0, p2

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 126
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "file"

    .line 128
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v2, p0

    .line 131
    invoke-static {v2, v5}, Landroidx/core/provider/FontProvider$ContentQueryWrapper$-CC;->make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;

    move-result-object v4

    const/4 v2, 0x0

    .line 133
    :try_start_38
    const-string v6, "_id"

    const-string v7, "file_id"

    const-string v8, "font_ttc_index"

    const-string v9, "font_variation_settings"

    const-string v10, "font_weight"

    const-string v11, "font_italic"

    const-string v12, "result_code"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    .line 140
    const-string v7, "query = ?"

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v10, p3

    .line 140
    invoke-interface/range {v4 .. v10}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 143
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_de

    .line 144
    const-string v1, "result_code"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 148
    const-string v8, "file_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 150
    const-string v9, "font_ttc_index"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 152
    const-string v10, "font_weight"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 154
    const-string v11, "font_italic"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 156
    :goto_8c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_da

    const/4 v12, -0x1

    if-eq v1, v12, :cond_9a

    .line 158
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_9b

    :cond_9a
    const/4 v13, 0x0

    :goto_9b
    if-eq v9, v12, :cond_a2

    .line 161
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_a1
    .catchall {:try_start_38 .. :try_end_a1} :catchall_f2

    goto :goto_a3

    :cond_a2
    const/4 v14, 0x0

    :goto_a3
    if-ne v8, v12, :cond_b0

    move-object/from16 p0, v4

    .line 164
    :try_start_a7
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 165
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_ba

    :cond_b0
    move-object/from16 p0, v4

    .line 167
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 168
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :goto_ba
    if-eq v10, v12, :cond_c1

    .line 171
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_c3

    :cond_c1
    const/16 v4, 0x190

    :goto_c3
    if-eq v11, v12, :cond_cd

    .line 172
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_cd

    goto :goto_ce

    :cond_cd
    const/4 v15, 0x0

    .line 174
    :goto_ce
    invoke-static {v3, v14, v4, v15, v13}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catchall {:try_start_a7 .. :try_end_d5} :catchall_d8

    move-object/from16 v4, p0

    goto :goto_8c

    :catchall_d8
    move-exception v0

    goto :goto_f5

    :cond_da
    move-object/from16 p0, v4

    move-object v1, v6

    goto :goto_e0

    :cond_de
    move-object/from16 p0, v4

    :goto_e0
    if-eqz v2, :cond_e5

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_e5
    invoke-interface/range {p0 .. p0}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    const/4 v0, 0x0

    .line 183
    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    :catchall_f2
    move-exception v0

    move-object/from16 p0, v4

    :goto_f5
    if-eqz v2, :cond_fa

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_fa
    invoke-interface/range {p0 .. p0}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 182
    throw v0
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapper (androidx.core.provider.FontProvider$ContentQueryWrapper)
.class interface abstract Landroidx/core/provider/FontProvider$ContentQueryWrapper;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContentQueryWrapper"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapper.CC (androidx.core.provider.FontProvider$ContentQueryWrapper$-CC)
.class public final synthetic Landroidx/core/provider/FontProvider$ContentQueryWrapper$-CC;
.super Ljava/lang/Object;
.source "FontProvider.java"


# direct methods
.method public static make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .registers 4

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_c

    .line 242
    new-instance v0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 244
    :cond_c
    new-instance v0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapperApi16Impl (androidx.core.provider.FontProvider$ContentQueryWrapperApi16Impl)
.class Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Landroidx/core/provider/FontProvider$ContentQueryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryWrapperApi16Impl"
.end annotation


# instance fields
.field private final mClient:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 272
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_7

    .line 273
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15

    .line 258
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_6

    return-object v7

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 262
    :try_start_c
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v0

    move-object p1, v0

    .line 265
    const-string p2, "FontsProvider"

    const-string p3, "Unable to query the content provider"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapperApi24Impl (androidx.core.provider.FontProvider$ContentQueryWrapperApi24Impl)
.class Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Landroidx/core/provider/FontProvider$ContentQueryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryWrapperApi24Impl"
.end annotation


# instance fields
.field private final mClient:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 302
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_7

    .line 303
    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15

    .line 288
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_6

    return-object v7

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 292
    :try_start_c
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v0

    move-object p1, v0

    .line 295
    const-string p2, "FontsProvider"

    const-string p3, "Unable to query the content provider"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

###### Class androidx.core.provider.FontProvider$$ExternalSyntheticLambda0 (androidx.core.provider.FontProvider$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->lambda$static$0([B[B)I

    move-result p1

    return p1
.end method
