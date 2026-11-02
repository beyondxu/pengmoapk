###### Class com.alibaba.fastjson.serializer.SerializeConfig (com.alibaba.fastjson.serializer.SerializeConfig)
.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field private static awtError:Z

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private static guavaError:Z

.field private static jdk8Error:Z

.field private static jodaError:Z

.field private static oracleJdbcError:Z

.field private static springfoxError:Z


# instance fields
.field private asm:Z

.field private asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private denyClasses:[J

.field private final fieldBased:Z

.field private final mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;>;"
        }
    .end annotation
.end field

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/spi/Module;",
            ">;"
        }
    .end annotation
.end field

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 56
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 57
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 58
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 59
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 61
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x2000

    .line 291
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [J

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->denyClasses:[J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    .line 303
    iput-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 304
    new-instance p2, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 305
    new-instance p1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 307
    :try_start_2e
    iget-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz p1, :cond_3d

    .line 308
    new-instance p1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3a

    goto :goto_3d

    :catchall_3a
    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 314
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    return-void

    nop

    :array_42
    .array-data 8
        0x39ce554cca9aab53L    # 2.991084746524151E-30
        0x3db5c2961aadf5f3L    # 1.9790698305390406E-11
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/16 v0, 0x2000

    .line 295
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    return-void
.end method

.method private final createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    :goto_8
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-ge v1, v2, :cond_28

    .line 93
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v2, v2, v1

    .line 94
    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 96
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 97
    instance-of v2, v2, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v2, :cond_25

    .line 98
    iput-boolean v0, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    return-object p1
.end method

.method private static getEnumValueField(Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 10

    .line 836
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 838
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_27

    aget-object v6, v0, v4

    .line 839
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-ne v7, v8, :cond_16

    goto :goto_24

    .line 842
    :cond_16
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v7, :cond_24

    if-eqz v5, :cond_23

    return-object v2

    :cond_23
    move-object v5, v6

    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 852
    :cond_27
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    :goto_2c
    if-ge v3, v0, :cond_41

    aget-object v1, p0, v3

    .line 853
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_3e

    if-eqz v5, :cond_3d

    return-object v2

    :cond_3d
    move-object v5, v1

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_41
    return-object v5
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .registers 1

    .line 287
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private initSerializers()V
    .registers 3

    .line 318
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 319
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 320
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 321
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 322
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 323
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 324
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 325
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 326
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 327
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 328
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 329
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 330
    const-class v0, [S

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 331
    const-class v0, [I

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 332
    const-class v0, [J

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 333
    const-class v0, [F

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 334
    const-class v0, [D

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 335
    const-class v0, [Z

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 336
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 337
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 338
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 340
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 341
    const-class v0, Ljava/util/Currency;

    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 342
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 343
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 344
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 345
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 346
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 347
    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 348
    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 349
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 350
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 351
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 352
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 353
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 354
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 355
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 356
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 359
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 360
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 361
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 362
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 363
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 364
    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 366
    const-class v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 367
    const-class v0, Ljava/lang/ref/SoftReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 369
    const-class v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .line 377
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 379
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-eqz v1, :cond_21

    .line 380
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 382
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-eq p0, v1, :cond_1e

    .line 383
    sget-object v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v0, v1, :cond_1e

    .line 384
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 386
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    return-void

    .line 391
    :cond_1e
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    :cond_21
    return-void
.end method

.method public clearSerializers()V
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 927
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    if-nez v0, :cond_28

    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    if-eqz p3, :cond_18

    .line 405
    iget p3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, p3

    iput p2, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_20

    .line 407
    :cond_18
    iget p3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int p2, p2

    and-int/2addr p2, p3

    iput p2, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 410
    :goto_20
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p2

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-void

    .line 416
    :cond_28
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_59

    .line 417
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 418
    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 420
    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-eqz p3, :cond_3d

    .line 422
    iget p3, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, p3

    iput p2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_45

    .line 424
    :cond_3d
    iget p3, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int p2, p2

    and-int/2addr p2, p3

    iput p2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 427
    :goto_45
    iget p2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-ne v2, p2, :cond_4a

    goto :goto_59

    .line 431
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 432
    const-class p3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eq p2, p3, :cond_59

    .line 433
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p2

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    :cond_59
    :goto_59
    return-void
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 912
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 913
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 15

    .line 122
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 124
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v0, :cond_56

    .line 127
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v3

    .line 128
    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_24

    .line 130
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 131
    instance-of v4, v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v4, :cond_24

    .line 132
    check-cast v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    return-object v3

    :catchall_23
    nop

    .line 139
    :cond_24
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v1, 0x0

    :cond_2b
    if-eqz v1, :cond_4c

    .line 144
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_4c

    aget-object v6, v3, v5

    .line 145
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_4b

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_4b

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_4b

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v7, v6, :cond_48

    goto :goto_4b

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    :cond_4c
    if-eqz v1, :cond_56

    .line 156
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFilters()[Ljava/lang/Class;

    move-result-object v0

    .line 157
    array-length v0, v0

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 163
    :cond_56
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 164
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 165
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0

    :cond_6a
    if-eqz v1, :cond_76

    .line 170
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_7e

    :cond_76
    const-class v3, Ljava/io/Serializable;

    if-eq v0, v3, :cond_7e

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_7f

    :cond_7e
    const/4 v1, 0x0

    :cond_7f
    if-eqz v1, :cond_8c

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const/4 v1, 0x0

    :cond_8c
    if-eqz v1, :cond_97

    .line 179
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_97

    const/4 v1, 0x0

    :cond_97
    if-eqz v1, :cond_160

    .line 184
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_9d
    if-ge v5, v4, :cond_160

    aget-object v6, v3, v5

    .line 185
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_b3

    .line 186
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b3

    goto/16 :goto_161

    .line 191
    :cond_b3
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_c5

    .line 192
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c5

    goto/16 :goto_161

    .line 197
    :cond_c5
    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_d9

    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 198
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-eq v8, v9, :cond_d9

    goto/16 :goto_161

    .line 203
    :cond_d9
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v8

    if-nez v8, :cond_e1

    goto/16 :goto_15c

    .line 209
    :cond_e1
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v9

    .line 210
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_fa

    .line 211
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-ne v6, v10, :cond_161

    const-string/jumbo v6, "trim"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    .line 219
    :cond_fa
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_161

    .line 220
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v6

    if-nez v6, :cond_161

    .line 221
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Ljava/lang/Void;

    if-ne v6, v9, :cond_161

    .line 222
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v6

    if-eqz v6, :cond_119

    goto :goto_161

    .line 228
    :cond_119
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_11f
    if-ge v10, v9, :cond_13c

    aget-object v11, v6, v10

    .line 229
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_13b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_13b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_13b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_13b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v12, v11, :cond_138

    goto :goto_13b

    :cond_138
    add-int/lit8 v10, v10, 0x1

    goto :goto_11f

    :cond_13b
    :goto_13b
    const/4 v1, 0x0

    .line 239
    :cond_13c
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-nez v6, :cond_161

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_149

    goto :goto_161

    .line 243
    :cond_149
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15c

    const-string v6, ""

    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15c

    goto :goto_161

    :cond_15c
    :goto_15c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9d

    :cond_160
    move v2, v1

    :cond_161
    :goto_161
    if-eqz v2, :cond_18f

    .line 252
    :try_start_163
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0
    :try_end_167
    .catch Ljava/lang/ClassNotFoundException; {:try_start_163 .. :try_end_167} :catch_18f
    .catch Ljava/lang/ClassFormatError; {:try_start_163 .. :try_end_167} :catch_18f
    .catch Ljava/lang/ClassCastException; {:try_start_163 .. :try_end_167} :catch_18f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_163 .. :try_end_167} :catch_17f
    .catchall {:try_start_163 .. :try_end_167} :catchall_16a

    if-eqz v0, :cond_18f

    return-object v0

    :catchall_16a
    move-exception p1

    .line 268
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create asm serializer error, verson 1.2.83, class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_17f
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metaspace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18e

    goto :goto_18f

    .line 264
    :cond_18e
    throw v0

    .line 272
    :catch_18f
    :cond_18f
    :goto_18f
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v1

    .line 109
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->denyClasses:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_2e

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 114
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-nez v1, :cond_29

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 115
    sget-object p1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-object p1

    .line 118
    :cond_29
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not support class : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 4

    .line 878
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_f

    .line 880
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object p1

    .line 882
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 886
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object p1
.end method

.method protected getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 2

    .line 874
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 444
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    if-eqz v2, :cond_b

    return-object v2

    .line 451
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 452
    const-class v3, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v3, v2}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 453
    instance-of v4, v3, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v4, :cond_2c

    goto :goto_1d

    .line 457
    :cond_2c
    check-cast v3, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 458
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    .line 459
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_45} :catch_46

    goto :goto_36

    :catch_46
    nop

    .line 466
    :cond_47
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    if-nez v2, :cond_94

    .line 469
    const-class v3, Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 470
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eq v3, v4, :cond_94

    .line 472
    :try_start_5d
    const-class v2, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 474
    instance-of v4, v3, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v4, :cond_76

    goto :goto_67

    .line 478
    :cond_76
    check-cast v3, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 479
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    .line 480
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_8f
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_8f} :catch_90

    goto :goto_80

    .line 487
    :catch_90
    :cond_90
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 491
    :cond_94
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/spi/Module;

    .line 492
    invoke-interface {v2, v0, v1}, Lcom/alibaba/fastjson/spi/Module;->createSerializer(Lcom/alibaba/fastjson/serializer/SerializeConfig;Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    :cond_b0
    if-nez v2, :cond_4c3

    .line 500
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 503
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 504
    sget-object v2, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 505
    :cond_c5
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 506
    sget-object v2, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 507
    :cond_d4
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 508
    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 509
    :cond_e3
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 510
    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 511
    :cond_f2
    const-class v4, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 512
    sget-object v2, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 513
    :cond_101
    const-class v4, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 514
    sget-object v2, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 515
    :cond_110
    const-class v4, Lcom/alibaba/fastjson/JSONStreamAware;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 516
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 517
    :cond_11f
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_187

    .line 518
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_137

    .line 522
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_13f

    .line 524
    :cond_137
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    :goto_13f
    if-eqz v3, :cond_150

    .line 527
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v3

    if-eqz v3, :cond_150

    .line 528
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    :cond_150
    if-eqz v2, :cond_16e

    .line 532
    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumValueField(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v2

    if-eqz v2, :cond_172

    .line 535
    :try_start_158
    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_172

    .line 536
    check-cast v2, Ljava/lang/reflect/Method;

    .line 537
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_16a} :catch_16c

    move-object v5, v2

    goto :goto_172

    :catch_16c
    nop

    goto :goto_172

    .line 544
    :cond_16e
    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumValueField(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    :cond_172
    :goto_172
    if-eqz v5, :cond_17e

    .line 547
    new-instance v2, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/serializer/EnumSerializer;-><init>(Ljava/lang/reflect/Member;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 549
    :cond_17e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 552
    :cond_187
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1b5

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_1b5

    .line 553
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v4, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v2, :cond_1ac

    .line 554
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 555
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 557
    :cond_1ac
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 559
    :cond_1b5
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 560
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 561
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 562
    new-instance v4, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    invoke-direct {v4, v2, v3}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object v2, v4

    goto/16 :goto_4bd

    .line 563
    :cond_1ce
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    .line 564
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v1, v5, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v2

    .line 565
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v4

    iput v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 566
    new-instance v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object v2, v3

    goto/16 :goto_4bd

    .line 567
    :cond_1f0
    const-class v4, Ljava/util/TimeZone;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4b8

    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_202

    goto/16 :goto_4b8

    .line 569
    :cond_202
    const-class v4, Ljava/lang/Appendable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_211

    .line 570
    sget-object v2, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 571
    :cond_211
    const-class v4, Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_220

    .line 572
    sget-object v2, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 573
    :cond_220
    const-class v4, Ljava/util/Enumeration;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 574
    sget-object v2, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 575
    :cond_22f
    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4b2

    const-class v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 576
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_241

    goto/16 :goto_4b2

    .line 578
    :cond_241
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isClob(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_24e

    .line 579
    sget-object v2, Lcom/alibaba/fastjson/serializer/ClobSerializer;->instance:Lcom/alibaba/fastjson/serializer/ClobSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 580
    :cond_24e
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_25b

    .line 581
    sget-object v2, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 582
    :cond_25b
    const-class v4, Ljava/util/Iterator;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_26a

    .line 583
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 584
    :cond_26a
    const-class v4, Lorg/w3c/dom/Node;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_279

    .line 585
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_4bd

    .line 587
    :cond_279
    const-string v4, "java.awt."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2b4

    .line 588
    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2b4

    .line 591
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-nez v4, :cond_2b4

    .line 593
    :try_start_28e
    const-string v4, "java.awt.Color"

    const-string v9, "java.awt.Font"

    const-string v10, "java.awt.Point"

    const-string v11, "java.awt.Rectangle"

    filled-new-array {v4, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    :goto_29b
    if-ge v9, v6, :cond_2b4

    .line 599
    aget-object v10, v4, v9

    .line 600
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2af

    .line 601
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_2ae
    .catchall {:try_start_28e .. :try_end_2ae} :catchall_2b2

    return-object v2

    :cond_2af
    add-int/lit8 v9, v9, 0x1

    goto :goto_29b

    .line 606
    :catchall_2b2
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 613
    :cond_2b4
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    const/16 v9, 0xb

    const/4 v10, 0x2

    if-nez v4, :cond_34d

    const-string v4, "java.time."

    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v11, "java.util.concurrent.atomic.DoubleAdder"

    const-string v12, "java.util.concurrent.atomic.LongAdder"

    const-string v13, "java.util.Optional"

    if-nez v4, :cond_2db

    .line 615
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2db

    .line 616
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2db

    .line 617
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 621
    :cond_2db
    :try_start_2db
    const-string v14, "java.time.LocalDateTime"

    const-string v15, "java.time.LocalDate"

    const-string v16, "java.time.LocalTime"

    const-string v17, "java.time.ZonedDateTime"

    const-string v18, "java.time.OffsetDateTime"

    const-string v19, "java.time.OffsetTime"

    const-string v20, "java.time.ZoneOffset"

    const-string v21, "java.time.ZoneRegion"

    const-string v22, "java.time.Period"

    const-string v23, "java.time.Duration"

    const-string v24, "java.time.Instant"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    :goto_2f6
    if-ge v14, v9, :cond_30d

    .line 634
    aget-object v15, v4, v14

    .line 635
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_30a

    .line 636
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    :cond_30a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2f6

    .line 642
    :cond_30d
    const-string v4, "java.util.OptionalDouble"

    const-string v14, "java.util.OptionalInt"

    const-string v15, "java.util.OptionalLong"

    filled-new-array {v13, v4, v14, v15}, [Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    :goto_318
    if-ge v13, v6, :cond_32f

    .line 648
    aget-object v14, v4, v13

    .line 649
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_32c

    .line 650
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    :cond_32c
    add-int/lit8 v13, v13, 0x1

    goto :goto_318

    .line 656
    :cond_32f
    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_334
    if-ge v6, v10, :cond_34d

    .line 660
    aget-object v11, v4, v6

    .line 661
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_348

    .line 662
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_347
    .catchall {:try_start_2db .. :try_end_347} :catchall_34b

    return-object v2

    :cond_348
    add-int/lit8 v6, v6, 0x1

    goto :goto_334

    .line 669
    :catchall_34b
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 673
    :cond_34d
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-nez v4, :cond_37b

    const-string v4, "oracle.sql."

    .line 674
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37b

    .line 676
    :try_start_359
    const-string v4, "oracle.sql.DATE"

    const-string v6, "oracle.sql.TIMESTAMP"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_362
    if-ge v6, v10, :cond_37b

    .line 681
    aget-object v11, v4, v6

    .line 682
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_376

    .line 683
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_375
    .catchall {:try_start_359 .. :try_end_375} :catchall_379

    return-object v2

    :cond_376
    add-int/lit8 v6, v6, 0x1

    goto :goto_362

    .line 689
    :catchall_379
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 693
    :cond_37b
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-nez v4, :cond_393

    .line 694
    const-string v4, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_393

    .line 696
    :try_start_387
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_390
    .catch Ljava/lang/ClassNotFoundException; {:try_start_387 .. :try_end_390} :catch_391

    return-object v2

    .line 701
    :catch_391
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 705
    :cond_393
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    if-nez v4, :cond_3c8

    const-string v4, "com.google.common.collect."

    .line 706
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c8

    .line 708
    :try_start_39f
    const-string v4, "com.google.common.collect.HashMultimap"

    const-string v6, "com.google.common.collect.LinkedListMultimap"

    const-string v11, "com.google.common.collect.LinkedHashMultimap"

    const-string v12, "com.google.common.collect.ArrayListMultimap"

    const-string v13, "com.google.common.collect.TreeMultimap"

    filled-new-array {v4, v6, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3ae
    const/4 v11, 0x5

    if-ge v6, v11, :cond_3c8

    .line 716
    aget-object v11, v4, v6

    .line 717
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c3

    .line 718
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39f .. :try_end_3c2} :catch_3c6

    return-object v2

    :cond_3c3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ae

    .line 724
    :catch_3c6
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 728
    :cond_3c8
    const-string v4, "net.sf.json.JSONNull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d6

    .line 729
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 733
    :cond_3d6
    const-string v4, "org.json.JSONObject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 734
    sget-object v2, Lcom/alibaba/fastjson/serializer/JSONObjectCodec;->instance:Lcom/alibaba/fastjson/serializer/JSONObjectCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 738
    :cond_3e4
    sget-boolean v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    if-nez v4, :cond_424

    const-string v4, "org.joda."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_424

    .line 740
    :try_start_3f0
    const-string v11, "org.joda.time.LocalDate"

    const-string v12, "org.joda.time.LocalDateTime"

    const-string v13, "org.joda.time.LocalTime"

    const-string v14, "org.joda.time.Instant"

    const-string v15, "org.joda.time.DateTime"

    const-string v16, "org.joda.time.Period"

    const-string v17, "org.joda.time.Duration"

    const-string v18, "org.joda.time.DateTimeZone"

    const-string v19, "org.joda.time.UTCDateTimeZone"

    const-string v20, "org.joda.time.tz.CachedDateTimeZone"

    const-string v21, "org.joda.time.tz.FixedDateTimeZone"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_40b
    if-ge v6, v9, :cond_424

    .line 754
    aget-object v11, v4, v6

    .line 755
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41f

    .line 756
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_41e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f0 .. :try_end_41e} :catch_422

    return-object v2

    :cond_41f
    add-int/lit8 v6, v6, 0x1

    goto :goto_40b

    .line 762
    :catch_422
    sput-boolean v8, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    .line 766
    :cond_424
    const-string v4, "java.nio.HeapByteBuffer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_432

    .line 767
    sget-object v2, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;->instance:Lcom/alibaba/fastjson/serializer/ByteBufferCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 771
    :cond_432
    const-string v4, "org.javamoney.moneta.Money"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_440

    .line 772
    sget-object v2, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;->instance:Lcom/alibaba/fastjson/support/moneta/MonetaCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 776
    :cond_440
    const-string v4, "com.google.protobuf.Descriptors$FieldDescriptor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44e

    .line 777
    sget-object v2, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 781
    :cond_44e
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 782
    array-length v4, v3

    if-ne v4, v8, :cond_465

    aget-object v4, v3, v7

    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    if-eqz v4, :cond_465

    .line 783
    sget-object v2, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 784
    sget-object v1, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-object v1

    .line 787
    :cond_465
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_477

    .line 788
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 790
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 791
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    .line 795
    :cond_477
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4a8

    .line 798
    array-length v4, v3

    if-ne v4, v10, :cond_483

    .line 799
    aget-object v5, v3, v8

    goto :goto_49e

    .line 801
    :cond_483
    array-length v4, v3

    move-object v6, v5

    :goto_485
    if-ge v7, v4, :cond_49d

    aget-object v8, v3, v7

    .line 802
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "org.springframework.aop."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_496

    goto :goto_49a

    :cond_496
    if-eqz v6, :cond_499

    goto :goto_49e

    :cond_499
    move-object v6, v8

    :goto_49a
    add-int/lit8 v7, v7, 0x1

    goto :goto_485

    :cond_49d
    move-object v5, v6

    :goto_49e
    if-eqz v5, :cond_4a8

    .line 814
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 815
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-object v2

    :cond_4a8
    if-eqz p2, :cond_4bd

    .line 821
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 822
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_4bd

    .line 577
    :cond_4b2
    :goto_4b2
    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_4bd

    .line 568
    :cond_4b8
    :goto_4b8
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    :cond_4bd
    :goto_4bd
    if-nez v2, :cond_4c3

    .line 827
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    :cond_4c3
    return-object v2
.end method

.method public getTypeKey()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .registers 2

    .line 276
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 890
    check-cast p1, Ljava/lang/reflect/Type;

    check-cast p2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .registers 6

    .line 894
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 896
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    if-nez v1, :cond_1b

    .line 899
    new-instance v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    .line 900
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 902
    :cond_1b
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 904
    :cond_20
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public register(Lcom/alibaba/fastjson/spi/Module;)V
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAsmEnable(Z)V
    .registers 3

    .line 280
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_5

    return-void

    .line 283
    :cond_5
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return-void
.end method

.method public setPropertyNamingStrategy(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-void
.end method
