###### Class com.taobao.weex.wson.Wson (com.taobao.weex.wson.Wson)
.class public Lcom/taobao/weex/wson/Wson;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/wson/Wson$Parser;,
        Lcom/taobao/weex/wson/Wson$Builder;
    }
.end annotation


# static fields
.field private static final ARRAY_TYPE:B = 0x5bt

.field private static final BOOLEAN_TYPE_FALSE:B = 0x66t

.field private static final BOOLEAN_TYPE_TRUE:B = 0x74t

.field private static final GLOBAL_STRING_CACHE_SIZE:I = 0x800

.field private static final IS_NATIVE_LITTLE_ENDIAN:Z

.field private static final MAP_TYPE:B = 0x7bt

.field private static final METHOD_PREFIX_GET:Ljava/lang/String; = "get"

.field private static final METHOD_PREFIX_IS:Ljava/lang/String; = "is"

.field private static final NULL_TYPE:B = 0x30t

.field private static final NUMBER_BIG_DECIMAL_TYPE:B = 0x65t

.field private static final NUMBER_BIG_INTEGER_TYPE:B = 0x67t

.field private static final NUMBER_DOUBLE_TYPE:B = 0x64t

.field private static final NUMBER_FLOAT_TYPE:B = 0x46t

.field private static final NUMBER_INT_TYPE:B = 0x69t

.field private static final NUMBER_LONG_TYPE:B = 0x6ct

.field private static final STRING_TYPE:B = 0x73t

.field public static final WriteMapNullValue:Z = false

.field private static fieldsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final globalStringBytesCache:[Ljava/lang/String;

.field private static final localCharsBufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static methodsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static specialClass:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    .line 672
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    const/16 v0, 0x800

    .line 673
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    .line 683
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    .line 684
    new-instance v0, Landroidx/collection/LruCache;

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    .line 685
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Landroidx/collection/LruCache;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-object v0
.end method

.method private static final getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3e

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_39

    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_23

    goto :goto_2e

    .line 9
    :cond_23
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_31

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 13
    :cond_31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_39
    sget-object p1, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-object v0
.end method

.method private static final getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5a

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_55

    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_22

    goto :goto_4a

    .line 9
    :cond_22
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2b

    goto :goto_4a

    .line 12
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 13
    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 14
    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 15
    :cond_3f
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_4d

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 19
    :cond_4d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_55
    sget-object p1, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-object v0
.end method

.method public static final parse([B)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    new-instance v1, Lcom/taobao/weex/wson/Wson$Parser;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([BLcom/taobao/weex/wson/Wson$1;)V

    .line 2
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 6
    const-string v1, "parseWson"

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    new-instance v1, Lcom/taobao/weex/wson/Wson$Builder;

    invoke-direct {v1, v0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>(Lcom/taobao/weex/wson/Wson$1;)V

    .line 2
    invoke-static {v1, p0}, Lcom/taobao/weex/wson/Wson$Builder;->access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B

    move-result-object p0

    .line 3
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Builder;->access$500(Lcom/taobao/weex/wson/Wson$Builder;)V

    return-object p0
.end method

###### Class com.taobao.weex.wson.Wson.AnonymousClass1 (com.taobao.weex.wson.Wson$1)
.class synthetic Lcom/taobao/weex/wson/Wson$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.wson.Wson.Builder (com.taobao.weex.wson.Wson$Builder)
.class final Lcom/taobao/weex/wson/Wson$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final refsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:[B

.field private position:I

.field private refs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_14
    const/16 v0, 0x400

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 9
    :goto_1a
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/wson/Wson$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/wson/Wson$Builder;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;->close()V

    return-void
.end method

.method private final close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    const/16 v2, 0x4000

    if-gt v1, v2, :cond_c

    .line 2
    sget-object v1, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_21

    .line 7
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_21
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final ensureCapacity(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_1f

    .line 4
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x4000

    if-ge v1, v2, :cond_13

    const/16 v1, 0x4000

    :cond_13
    sub-int v2, v1, p1

    if-gez v2, :cond_18

    goto :goto_19

    :cond_18
    move p1, v1

    .line 12
    :goto_19
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    :cond_1f
    return-void
.end method

.method private final toMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 11

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_56

    .line 9
    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 15
    :cond_56
    const-string v6, "is"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 16
    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 24
    :cond_85
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    goto :goto_8d

    .line 30
    :cond_a4
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_ab

    goto :goto_8d

    .line 34
    :cond_ab
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ae} :catch_b0

    goto :goto_8d

    :cond_af
    return-object v0

    :catch_b0
    move-exception p1

    .line 37
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b8

    .line 38
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 40
    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final toWson(Ljava/lang/Object;)[B
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    new-array v0, p1, [B

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private final writeAdapterObject(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    return-void

    .line 8
    :catch_22
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private final writeByte(B)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeDouble(D)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void
.end method

.method private final writeFloat(F)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v2

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x4

    .line 6
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeLong(J)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x7

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v3, 0x8

    ushr-long v4, p1, v3

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 2
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 3
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 4
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 5
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 6
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 7
    aput-byte v4, v0, v2

    const/16 v2, 0x38

    ushr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 8
    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    .line 9
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeMap(Ljava/util/Map;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    const/16 v1, 0x8

    .line 9
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v1, 0x7b

    .line 10
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_34

    .line 16
    :cond_47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMapKeyUTF16(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_34

    :cond_5a
    return-void
.end method

.method private final writeMapKeyUTF16(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final writeNumber(Ljava/lang/Number;)V
    .registers 7

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x69

    if-eqz v0, :cond_16

    .line 3
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void

    .line 8
    :cond_16
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_27

    const/16 v0, 0x46

    .line 9
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeFloat(F)V

    return-void

    .line 13
    :cond_27
    instance-of v0, p1, Ljava/lang/Double;

    const/16 v2, 0x64

    if-eqz v0, :cond_38

    .line 14
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    .line 19
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_49

    const/16 v0, 0x6c

    .line 20
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void

    .line 25
    :cond_49
    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_96

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_52

    goto :goto_96

    .line 32
    :cond_52
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_63

    const/16 v0, 0x67

    .line 33
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 38
    :cond_63
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_89

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 42
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 43
    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    :cond_80
    const/16 p1, 0x65

    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 46
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    :cond_89
    const/16 v0, 0x73

    .line 50
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 52
    :cond_96
    :goto_96
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void
.end method

.method private final writeObject(Ljava/lang/Object;)V
    .registers 9

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    if-eqz v0, :cond_13

    .line 2
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v0, 0x73

    .line 3
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 4
    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_13
    instance-of v0, p1, Ljava/util/Map;

    const/16 v2, 0x30

    if-eqz v0, :cond_3e

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 8
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 9
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 12
    :cond_28
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    check-cast p1, Ljava/util/Map;

    .line 14
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 17
    :cond_3e
    instance-of v0, p1, Ljava/util/List;

    const/16 v3, 0x5b

    const/16 v4, 0x8

    if-eqz v0, :cond_87

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 19
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 20
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 23
    :cond_55
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 25
    check-cast p1, Ljava/util/List;

    .line 26
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_6d

    .line 31
    :cond_7b
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 33
    :cond_87
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_91

    .line 34
    check-cast p1, Ljava/lang/Number;

    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeNumber(Ljava/lang/Number;)V

    return-void

    .line 37
    :cond_91
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_ac

    .line 38
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a6

    const/16 p1, 0x74

    .line 41
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    :cond_a6
    const/16 p1, 0x66

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    :cond_ac
    if-nez p1, :cond_b5

    .line 47
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 48
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 50
    :cond_b5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 52
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 53
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 56
    :cond_ce
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 58
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 59
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 60
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    const/4 v1, 0x0

    :goto_e1
    if-ge v1, v0, :cond_ed

    .line 62
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    .line 65
    :cond_ed
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 67
    :cond_f9
    instance-of v0, p1, Ljava/util/Date;

    const/16 v5, 0x64

    const/16 v6, 0xa

    if-eqz v0, :cond_112

    .line 68
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 69
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 70
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    .line 72
    :cond_112
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_12b

    .line 73
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 74
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 75
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    .line 77
    :cond_12b
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_170

    .line 78
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 79
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 80
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 83
    :cond_13e
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 85
    check-cast p1, Ljava/util/Collection;

    .line 86
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_156
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_156

    .line 91
    :cond_164
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 93
    :cond_170
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 94
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 95
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 97
    :cond_17f
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 99
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_199

    .line 101
    :cond_196
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeAdapterObject(Ljava/lang/Object;)V

    .line 103
    :goto_199
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final writeUInt(I)V
    .registers 5

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_16

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 5
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeUTF16String(Ljava/lang/CharSequence;)V
    .registers 9

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x8

    .line 2
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 4
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    :goto_15
    if-ge v2, v0, :cond_4b

    .line 6
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 8
    aput-byte v1, v3, v5

    add-int/lit8 v4, v4, 0x2

    .line 9
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    :goto_30
    if-ge v2, v0, :cond_4b

    .line 13
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 14
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v1

    aput-byte v6, v3, v5

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 15
    aput-byte v1, v3, v4

    add-int/lit8 v4, v4, 0x2

    .line 16
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_4b
    return-void
.end method

.method private final writeVarInt(I)V
    .registers 3

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    return-void
.end method

###### Class com.taobao.weex.wson.Wson.Parser (com.taobao.weex.wson.Wson$Parser)
.class final Lcom/taobao/weex/wson/Wson$Parser;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation


# instance fields
.field private buffer:[B

.field private charsBuffer:[C

.field private position:I


# direct methods
.method private constructor <init>([B)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 8
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 9
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz p1, :cond_1f

    .line 11
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_1f
    const/16 p1, 0x200

    .line 13
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    return-void
.end method

.method synthetic constructor <init>([BLcom/taobao/weex/wson/Wson$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->close()V

    return-void
.end method

.method private final close()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz v1, :cond_13

    .line 4
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    :cond_13
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    return-void
.end method

.method private final parse()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v1
.end method

.method private final readDouble()Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_20

    double-to-long v2, v0

    long-to-double v4, v2

    sub-double v4, v0, v4

    const-wide/high16 v6, 0x10000000000000L

    cmpg-double v8, v4, v6

    if-gez v8, :cond_20

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 9
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private readFloat()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x4

    .line 5
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private final readLong()J
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x7

    aget-byte v2, v0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x10

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x18

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x20

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x28

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    aget-byte v0, v0, v1

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/2addr v1, v8

    .line 9
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return-wide v2
.end method

.method private final readMap()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMapKeyUTF16()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v1
.end method

.method private final readMapKeyUTF16()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 2
    div-int/lit8 v0, v0, 0x2

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_f

    .line 4
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 7
    :cond_f
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1505

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_5e

    .line 9
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 11
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v1

    shl-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v3

    add-int v3, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 13
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_5e

    .line 17
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 19
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v1

    shl-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v3

    add-int v3, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 21
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 24
    :cond_5e
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    .line 25
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_86

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_86

    const/4 v4, 0x0

    :goto_75
    if-ge v4, v0, :cond_85

    .line 30
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aget-char v5, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_82

    goto :goto_86

    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_85
    return-object v3

    .line 39
    :cond_86
    :goto_86
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x40

    if-ge v0, v2, :cond_97

    .line 41
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v0

    aput-object v3, v0, v1

    :cond_97
    return-object v3
.end method

.method private final readObject()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readType()B

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_96

    const/16 v1, 0x46

    if-eq v0, v1, :cond_91

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_8c

    const/16 v1, 0x69

    if-eq v0, v1, :cond_83

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_75

    const/16 v1, 0x73

    if-eq v0, v1, :cond_70

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6d

    packed-switch v0, :pswitch_data_98

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wson unhandled type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :pswitch_51
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 33
    :pswitch_5b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 34
    :pswitch_5e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 35
    :pswitch_68
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readDouble()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 45
    :cond_6d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 46
    :cond_70
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_75
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_7a
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 59
    :cond_83
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readVarInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 65
    :cond_8c
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    :cond_91
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readFloat()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_96
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_98
    .packed-switch 0x64
        :pswitch_68
        :pswitch_5e
        :pswitch_5b
        :pswitch_51
    .end packed-switch
.end method

.method private final readType()B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return v0
.end method

.method private final readUInt()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_23

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v3, v3, 0x1

    .line 4
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/16 v2, 0x23

    if-gt v1, v2, :cond_1b

    goto :goto_2

    .line 6
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable length quantity is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 9
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private final readUTF16String()Ljava/lang/String;
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_f

    .line 3
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 5
    :cond_f
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_52

    .line 7
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 9
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 10
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v0, :cond_52

    .line 14
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 16
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 17
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 20
    :cond_52
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private final readVarInt()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method
