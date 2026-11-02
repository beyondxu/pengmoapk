###### Class io.dcloud.uts.gson.internal.Excluder (io.dcloud.uts.gson.internal.Excluder)
.class public final Lio/dcloud/uts/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lio/dcloud/uts/gson/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/uts/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/uts/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lio/dcloud/uts/gson/internal/Excluder;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/Excluder;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/Excluder;->DEFAULT:Lio/dcloud/uts/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 54
    iput-wide v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    const/16 v0, 0x88

    .line 55
    iput v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 58
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 59
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private excludeClassChecks(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    iget-wide v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_20

    const-class v0, Lio/dcloud/uts/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/annotations/Since;

    const-class v1, Lio/dcloud/uts/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lio/dcloud/uts/gson/internal/Excluder;->isValidVersion(Lio/dcloud/uts/gson/annotations/Since;Lio/dcloud/uts/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_20

    return v4

    .line 198
    :cond_20
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v4

    .line 202
    :cond_2b
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_32

    return v4

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method private excludeClassInStrategy(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 215
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_7

    :cond_5
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 216
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/ExclusionStrategy;

    .line 217
    invoke-interface {v0, p1}, Lio/dcloud/uts/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private isValidSince(Lio/dcloud/uts/gson/annotations/Since;)Z
    .registers 6

    if-eqz p1, :cond_e

    .line 243
    invoke-interface {p1}, Lio/dcloud/uts/gson/annotations/Since;->value()D

    move-result-wide v0

    .line 244
    iget-wide v2, p0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private isValidUntil(Lio/dcloud/uts/gson/annotations/Until;)Z
    .registers 6

    if-eqz p1, :cond_e

    .line 253
    invoke-interface {p1}, Lio/dcloud/uts/gson/annotations/Until;->value()D

    move-result-wide v0

    .line 254
    iget-wide v2, p0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private isValidVersion(Lio/dcloud/uts/gson/annotations/Since;Lio/dcloud/uts/gson/annotations/Until;)Z
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->isValidSince(Lio/dcloud/uts/gson/annotations/Since;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lio/dcloud/uts/gson/internal/Excluder;->isValidUntil(Lio/dcloud/uts/gson/annotations/Until;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected clone()Lio/dcloud/uts/gson/internal/Excluder;
    .registers 3

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/internal/Excluder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/gson/Gson;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    .line 115
    invoke-direct {p0, v0, v3}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_15

    :cond_13
    const/4 v8, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v8, 0x1

    :goto_16
    if-nez v1, :cond_21

    .line 116
    invoke-direct {p0, v0, v2}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v7, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v7, 0x1

    :goto_22
    if-nez v8, :cond_28

    if-nez v7, :cond_28

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_28
    new-instance v5, Lio/dcloud/uts/gson/internal/Excluder$1;

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lio/dcloud/uts/gson/internal/Excluder$1;-><init>(Lio/dcloud/uts/gson/internal/Excluder;ZZLio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)V

    return-object v5
.end method

.method public disableInnerClassSerialization()Lio/dcloud/uts/gson/internal/Excluder;
    .registers 3

    .line 85
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, v0, Lio/dcloud/uts/gson/internal/Excluder;->serializeInnerClasses:Z

    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 211
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    .line 152
    iget v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    .line 156
    :cond_b
    iget-wide v2, p0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2a

    const-class v0, Lio/dcloud/uts/gson/annotations/Since;

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/annotations/Since;

    const-class v2, Lio/dcloud/uts/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lio/dcloud/uts/gson/annotations/Until;

    invoke-direct {p0, v0, v2}, Lio/dcloud/uts/gson/internal/Excluder;->isValidVersion(Lio/dcloud/uts/gson/annotations/Since;Lio/dcloud/uts/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 161
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_31

    return v1

    .line 165
    :cond_31
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_4f

    .line 166
    const-class v0, Lio/dcloud/uts/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/annotations/Expose;

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_48

    .line 167
    invoke-interface {v0}, Lio/dcloud/uts/gson/annotations/Expose;->serialize()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-interface {v0}, Lio/dcloud/uts/gson/annotations/Expose;->deserialize()Z

    move-result v0

    if-nez v0, :cond_4f

    :cond_4e
    :goto_4e
    return v1

    .line 172
    :cond_4f
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    return v1

    .line 176
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    return v1

    :cond_69
    if-eqz p2, :cond_6e

    .line 180
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_70

    :cond_6e
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 181
    :goto_70
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 182
    new-instance v0, Lio/dcloud/uts/gson/FieldAttributes;

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/uts/gson/ExclusionStrategy;

    .line 184
    invoke-interface {p2, v0}, Lio/dcloud/uts/gson/ExclusionStrategy;->shouldSkipField(Lio/dcloud/uts/gson/FieldAttributes;)Z

    move-result p2

    if-eqz p2, :cond_7f

    return v1

    :cond_92
    const/4 p1, 0x0

    return p1
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lio/dcloud/uts/gson/internal/Excluder;
    .registers 3

    .line 91
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, v0, Lio/dcloud/uts/gson/internal/Excluder;->requireExpose:Z

    return-object v0
.end method

.method public withExclusionStrategy(Lio/dcloud/uts/gson/ExclusionStrategy;ZZ)Lio/dcloud/uts/gson/internal/Excluder;
    .registers 6

    .line 98
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    if-eqz p2, :cond_12

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lio/dcloud/uts/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz p3, :cond_20

    .line 104
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lio/dcloud/uts/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lio/dcloud/uts/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    return-object v0
.end method

.method public varargs withModifiers([I)Lio/dcloud/uts/gson/internal/Excluder;
    .registers 7

    .line 76
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    iput v1, v0, Lio/dcloud/uts/gson/internal/Excluder;->modifiers:I

    .line 78
    array-length v2, p1

    :goto_8
    if-ge v1, v2, :cond_14

    aget v3, p1, v1

    .line 79
    iget v4, v0, Lio/dcloud/uts/gson/internal/Excluder;->modifiers:I

    or-int/2addr v3, v4

    iput v3, v0, Lio/dcloud/uts/gson/internal/Excluder;->modifiers:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-object v0
.end method

.method public withVersion(D)Lio/dcloud/uts/gson/internal/Excluder;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/Excluder;->clone()Lio/dcloud/uts/gson/internal/Excluder;

    move-result-object v0

    .line 71
    iput-wide p1, v0, Lio/dcloud/uts/gson/internal/Excluder;->version:D

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.Excluder.AnonymousClass1 (io.dcloud.uts.gson.internal.Excluder$1)
.class Lio/dcloud/uts/gson/internal/Excluder$1;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/Excluder;->create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lio/dcloud/uts/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/uts/gson/internal/Excluder;

.field final synthetic val$gson:Lio/dcloud/uts/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lio/dcloud/uts/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/Excluder;ZZLio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)V
    .registers 6

    .line 122
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->this$0:Lio/dcloud/uts/gson/internal/Excluder;

    iput-boolean p2, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$gson:Lio/dcloud/uts/gson/Gson;

    iput-object p5, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$type:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lio/dcloud/uts/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->delegate:Lio/dcloud/uts/gson/TypeAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 146
    :cond_5
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$gson:Lio/dcloud/uts/gson/Gson;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->this$0:Lio/dcloud/uts/gson/internal/Excluder;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$type:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/gson/Gson;->getDelegateAdapter(Lio/dcloud/uts/gson/TypeAdapterFactory;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->delegate:Lio/dcloud/uts/gson/TypeAdapter;

    return-object v0
.end method


# virtual methods
.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_9
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/Excluder$1;->delegate()Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/TypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_8

    .line 136
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->nullValue()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    .line 139
    :cond_8
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/Excluder$1;->delegate()Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
