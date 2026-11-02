###### Class okhttp3.CacheControl (okhttp3.CacheControl)
.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 25
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 66
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 67
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 70
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 71
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 72
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 73
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 74
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 75
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 76
    iget-boolean p1, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean p1, p0, Lokhttp3/CacheControl;->immutable:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 50
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 51
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 52
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 53
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 54
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 55
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 56
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 57
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 58
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 59
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 60
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 61
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .registers 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_17
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2b
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3c
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_45
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_4e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_57
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_68
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_79
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_82
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_8b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_8b
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_94

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v0, ""

    return-object v0

    .line 273
    :cond_9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 24

    move-object/from16 v0, p0

    .line 169
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    if-ge v6, v1, :cond_140

    .line 170
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    const/16 v22, 0x1

    .line 171
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v5, "Cache-Control"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    if-eqz v8, :cond_31

    goto :goto_3b

    :cond_31
    move-object v8, v4

    goto :goto_3c

    .line 180
    :cond_33
    const-string v5, "Pragma"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_139

    :goto_3b
    const/4 v7, 0x0

    :goto_3c
    const/4 v2, 0x0

    .line 188
    :goto_3d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_139

    .line 190
    const-string v5, "=,;"

    invoke-static {v4, v2, v5}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 191
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_9a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2c

    if-eq v3, v0, :cond_9a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_68

    goto :goto_9a

    :cond_68
    add-int/lit8 v5, v5, 0x1

    .line 199
    invoke-static {v4, v5}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8b

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_8b

    add-int/lit8 v0, v0, 0x1

    .line 205
    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 206
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 212
    :cond_8b
    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 213
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9e

    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    const/4 v0, 0x0

    .line 217
    :goto_9e
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_134

    .line 219
    :cond_aa
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_134

    .line 221
    :cond_b6
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const/4 v5, -0x1

    .line 222
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_134

    .line 223
    :cond_c5
    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    const/4 v5, -0x1

    .line 224
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    goto :goto_134

    .line 225
    :cond_d3
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_134

    .line 227
    :cond_de
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_134

    .line 229
    :cond_e9
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f4

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_134

    .line 231
    :cond_f4
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_105

    const v2, 0x7fffffff

    .line 232
    invoke-static {v0, v2}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v16

    const/4 v5, -0x1

    goto :goto_134

    .line 233
    :cond_105
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_113

    const/4 v5, -0x1

    .line 234
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v17

    goto :goto_134

    :cond_113
    const/4 v5, -0x1

    .line 235
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v18, 0x1

    goto :goto_134

    .line 237
    :cond_11f
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const/16 v19, 0x1

    goto :goto_134

    .line 239
    :cond_12a
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    const/16 v20, 0x1

    :cond_134
    :goto_134
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3d

    :cond_139
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_140
    if-nez v7, :cond_145

    const/16 v21, 0x0

    goto :goto_147

    :cond_145
    move-object/from16 v21, v8

    .line 248
    :goto_147
    new-instance v8, Lokhttp3/CacheControl;

    invoke-direct/range {v8 .. v21}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public immutable()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .registers 2

    .line 99
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .registers 2

    .line 123
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .registers 2

    .line 127
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .registers 2

    .line 107
    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 255
    :cond_5
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-object v0
.end method

###### Class okhttp3.CacheControl.Builder (okhttp3.CacheControl$Builder)
.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 282
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 283
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/CacheControl;
    .registers 2

    .line 370
    new-instance v0, Lokhttp3/CacheControl;

    invoke-direct {v0, p0}, Lokhttp3/CacheControl;-><init>(Lokhttp3/CacheControl$Builder;)V

    return-object v0
.end method

.method public immutable()Lokhttp3/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    return-object p0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 309
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 312
    :goto_13
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return-object p0

    .line 308
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxAge < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 325
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 328
    :goto_13
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0

    .line 324
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxStale < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 342
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 345
    :goto_13
    iput p1, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-object p0

    .line 341
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minFresh < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public noCache()Lokhttp3/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return-object p0
.end method

.method public noStore()Lokhttp3/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    return-object p0
.end method

.method public noTransform()Lokhttp3/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    return-object p0
.end method

.method public onlyIfCached()Lokhttp3/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return-object p0
.end method
