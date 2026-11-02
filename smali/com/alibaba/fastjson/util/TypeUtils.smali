###### Class com.alibaba.fastjson.util.TypeUtils (com.alibaba.fastjson.util.TypeUtils)
.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;
    }
.end annotation


# static fields
.field private static final NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

.field private static OPTIONAL_EMPTY:Ljava/lang/Object; = null

.field private static OPTIONAL_ERROR:Z = false

.field private static addBaseClassMappingsFunction:Lcom/alibaba/fastjson/util/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static castFunction:Lcom/alibaba/fastjson/util/BiFunction; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static castToSqlDateFunction:Lcom/alibaba/fastjson/util/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static castToSqlTimeFunction:Lcom/alibaba/fastjson/util/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static castToTimestampFunction:Lcom/alibaba/fastjson/util/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile classXmlAccessorType_error:Z = false

.field private static class_JacksonCreator:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_JacksonCreator_error:Z = false

.field private static class_ManyToMany:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z = false

.field private static class_OneToMany:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z = false

.field private static volatile class_XmlAccessType:Ljava/lang/Class; = null

.field private static volatile class_XmlAccessorType:Ljava/lang/Class; = null

.field private static class_deque:Ljava/lang/Class; = null

.field public static compatibleWithFieldName:Z = false

.field public static compatibleWithJavaBean:Z = false

.field private static volatile field_XmlAccessType_FIELD:Ljava/lang/reflect/Field; = null

.field private static volatile field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object; = null

.field public static final fnv1a_64_magic_hashcode:J = -0x340d631b7bdddcdbL

.field public static final fnv1a_64_magic_prime:J = 0x100000001b3L

.field private static isClobFunction:Lcom/alibaba/fastjson/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/Function<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final isProxyClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static volatile method_XmlAccessorType_value:Ljava/lang/reflect/Method;

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static final primitiveTypeMap:Ljava/util/Map;

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 55
    const-string/jumbo v0, "true"

    const-string v1, "\\.0*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    .line 57
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 61
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    const/4 v2, 0x1

    .line 62
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 63
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 65
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 67
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 69
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v3, 0x0

    .line 72
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 73
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 74
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 75
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 77
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 78
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 89
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x100

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 93
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    .line 94
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 96
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 97
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    .line 98
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 99
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    .line 100
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 101
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    .line 103
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;

    .line 107
    :try_start_47
    const-string v2, "fastjson.compatibleWithJavaBean"

    invoke-static {v2}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 108
    const-string v2, "fastjson.compatibleWithFieldName"

    invoke-static {v2}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_5f

    .line 114
    :catchall_5f
    :try_start_5f
    const-string v0, "java.util.Deque"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_67

    .line 210
    :catchall_67
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$1;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->isClobFunction:Lcom/alibaba/fastjson/util/Function;

    .line 565
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$2;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$2;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDateFunction:Lcom/alibaba/fastjson/util/Function;

    .line 624
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$3;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$3;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTimeFunction:Lcom/alibaba/fastjson/util/Function;

    .line 680
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$4;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$4;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestampFunction:Lcom/alibaba/fastjson/util/Function;

    .line 1072
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$5;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$5;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castFunction:Lcom/alibaba/fastjson/util/BiFunction;

    .line 1573
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$6;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$6;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappingsFunction:Lcom/alibaba/fastjson/util/Function;

    .line 1592
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 2671
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$7;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils$7;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->primitiveTypeMap:Ljava/util/Map;

    .line 2793
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$8;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils$8;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->isProxyClassNames:Ljava/util/Set;

    .line 3405
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_ERROR:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .registers 10

    .line 1596
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v3, [S

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v4, [I

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v5, [J

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v6, [F

    invoke-interface {v0, v1, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v7, [D

    invoke-interface {v0, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v8, [Z

    invoke-interface {v0, v1, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v9, [C

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[B"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[S"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[I"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[J"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[F"

    invoke-interface {v0, v1, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[D"

    invoke-interface {v0, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[C"

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[Z"

    invoke-interface {v0, v1, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v0, "java.lang.AutoCloseable"

    .line 1623
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1668
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x45

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Cloneable;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/Exception;

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/RuntimeException;

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalAccessError;

    const/4 v4, 0x5

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalAccessException;

    const/4 v4, 0x6

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x7

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalMonitorStateException;

    const/16 v4, 0x8

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalStateException;

    const/16 v4, 0x9

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IllegalThreadStateException;

    const/16 v4, 0xa

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v4, 0xb

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/InstantiationError;

    const/16 v4, 0xc

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/InstantiationException;

    const/16 v4, 0xd

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/InternalError;

    const/16 v4, 0xe

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/InterruptedException;

    const/16 v4, 0xf

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/LinkageError;

    const/16 v4, 0x10

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NegativeArraySizeException;

    const/16 v4, 0x11

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NoClassDefFoundError;

    const/16 v4, 0x12

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NoSuchFieldError;

    const/16 v4, 0x13

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NoSuchFieldException;

    const/16 v4, 0x14

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NoSuchMethodError;

    const/16 v4, 0x15

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NoSuchMethodException;

    const/16 v4, 0x16

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NullPointerException;

    const/16 v4, 0x17

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/NumberFormatException;

    const/16 v4, 0x18

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/OutOfMemoryError;

    const/16 v4, 0x19

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/SecurityException;

    const/16 v4, 0x1a

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/StackOverflowError;

    const/16 v4, 0x1b

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/StringIndexOutOfBoundsException;

    const/16 v4, 0x1c

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/TypeNotPresentException;

    const/16 v4, 0x1d

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/VerifyError;

    const/16 v4, 0x1e

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/StackTraceElement;

    const/16 v4, 0x1f

    aput-object v0, v3, v4

    const-class v0, Ljava/util/HashMap;

    const/16 v4, 0x20

    aput-object v0, v3, v4

    const-class v0, Ljava/util/LinkedHashMap;

    const/16 v4, 0x21

    aput-object v0, v3, v4

    const-class v4, Ljava/util/Hashtable;

    const/16 v6, 0x22

    aput-object v4, v3, v6

    const-class v4, Ljava/util/TreeMap;

    const/16 v6, 0x23

    aput-object v4, v3, v6

    const-class v4, Ljava/util/IdentityHashMap;

    const/16 v6, 0x24

    aput-object v4, v3, v6

    const-class v4, Ljava/util/WeakHashMap;

    const/16 v6, 0x25

    aput-object v4, v3, v6

    const/16 v4, 0x26

    aput-object v0, v3, v4

    const-class v0, Ljava/util/HashSet;

    const/16 v4, 0x27

    aput-object v0, v3, v4

    const-class v0, Ljava/util/LinkedHashSet;

    const/16 v4, 0x28

    aput-object v0, v3, v4

    const-class v0, Ljava/util/TreeSet;

    const/16 v4, 0x29

    aput-object v0, v3, v4

    const-class v0, Ljava/util/ArrayList;

    const/16 v4, 0x2a

    aput-object v0, v3, v4

    const-class v0, Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x2b

    aput-object v0, v3, v4

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x2c

    aput-object v0, v3, v4

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x2d

    aput-object v0, v3, v4

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v4, 0x2e

    aput-object v0, v3, v4

    const/16 v0, 0x2f

    aput-object v1, v3, v0

    const-class v0, Ljava/lang/Boolean;

    const/16 v1, 0x30

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Character;

    const/16 v1, 0x31

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Byte;

    const/16 v1, 0x32

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Short;

    const/16 v1, 0x33

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Integer;

    const/16 v1, 0x34

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Long;

    const/16 v1, 0x35

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Float;

    const/16 v1, 0x36

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Double;

    const/16 v1, 0x37

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/Number;

    const/16 v1, 0x38

    aput-object v0, v3, v1

    const-class v0, Ljava/lang/String;

    const/16 v1, 0x39

    aput-object v0, v3, v1

    const-class v0, Ljava/math/BigDecimal;

    const/16 v1, 0x3a

    aput-object v0, v3, v1

    const-class v0, Ljava/math/BigInteger;

    const/16 v1, 0x3b

    aput-object v0, v3, v1

    const-class v0, Ljava/util/BitSet;

    const/16 v1, 0x3c

    aput-object v0, v3, v1

    const-class v0, Ljava/util/Calendar;

    const/16 v1, 0x3d

    aput-object v0, v3, v1

    const-class v0, Ljava/util/Date;

    const/16 v1, 0x3e

    aput-object v0, v3, v1

    const-class v0, Ljava/util/Locale;

    const/16 v1, 0x3f

    aput-object v0, v3, v1

    const-class v0, Ljava/util/UUID;

    const/16 v1, 0x40

    aput-object v0, v3, v1

    const-class v0, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x41

    aput-object v0, v3, v1

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    const/16 v1, 0x42

    aput-object v0, v3, v1

    const-class v0, Lcom/alibaba/fastjson/JSONPObject;

    const/16 v1, 0x43

    aput-object v0, v3, v1

    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    const/16 v1, 0x44

    aput-object v0, v3, v1

    :goto_268
    if-ge v5, v2, :cond_27b

    .line 1691
    aget-object v0, v3, v5

    if-nez v0, :cond_26f

    goto :goto_278

    .line 1695
    :cond_26f
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_278
    add-int/lit8 v5, v5, 0x1

    goto :goto_268

    .line 1697
    :cond_27b
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappingsFunction:Lcom/alibaba/fastjson/util/Function;

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1706
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1798
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .line 1806
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_85

    .line 1811
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v3

    .line 1813
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v4

    .line 1814
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    move-object v4, v1

    .line 1818
    :cond_1c
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v5

    .line 1819
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v5, v6, :cond_25

    move-object p2, v5

    .line 1823
    :cond_25
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    .line 1824
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v1

    :goto_32
    if-eqz v6, :cond_53

    .line 1825
    const-class v8, Ljava/lang/Object;

    if-eq v6, v8, :cond_53

    .line 1827
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v6, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v8, :cond_43

    goto :goto_53

    .line 1831
    :cond_43
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v7

    .line 1832
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4e

    goto :goto_53

    .line 1826
    :cond_4e
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_32

    .line 1837
    :cond_53
    :goto_53
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    :goto_59
    if-ge v9, v8, :cond_75

    aget-object v10, v6, v9

    .line 1838
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v10, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v10, :cond_72

    .line 1840
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v7

    .line 1841
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_72

    goto :goto_75

    :cond_72
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_75
    :goto_75
    if-eqz v7, :cond_7e

    .line 1847
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7e

    goto :goto_7f

    :cond_7e
    move-object v1, v7

    :goto_7f
    move-object v6, p2

    move-object v8, v1

    move-object p2, v3

    move-object v7, v4

    move v9, v5

    goto :goto_8a

    :cond_85
    move-object v6, p2

    move-object p2, v1

    move-object v7, p2

    move-object v8, v7

    const/4 v9, 0x0

    .line 1854
    :goto_8a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1855
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    if-eqz p3, :cond_9b

    .line 1857
    invoke-static {p0, p1, v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    goto :goto_a2

    :cond_9b
    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 1858
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    .line 1859
    :goto_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1860
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p2, :cond_be

    .line 1863
    array-length p1, p2

    if-eqz p1, :cond_be

    if-eqz p3, :cond_b8

    const/4 p1, 0x1

    .line 1865
    invoke-static {v1, v3, p1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object p1

    goto :goto_c6

    :cond_b8
    const/4 v5, 0x1

    .line 1866
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object p1

    goto :goto_c6

    .line 1868
    :cond_be
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1869
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1871
    :goto_c6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1872
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1873
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d6

    move-object p2, p0

    :cond_d6
    move-object v3, v2

    move-object v2, v1

    .line 1876
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v1
.end method

.method public static byteValue(Ljava/math/BigDecimal;)B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 916
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 918
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValue()B

    move-result p0

    return p0

    .line 921
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValueExact()B

    move-result p0

    return p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_47

    .line 1092
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_d

    .line 1093
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1094
    :cond_d
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_18

    const-wide/16 p0, 0x0

    .line 1095
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1096
    :cond_18
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_21

    .line 1097
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1098
    :cond_21
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2a

    .line 1099
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1100
    :cond_2a
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_34

    const/4 p0, 0x0

    .line 1101
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1102
    :cond_34
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3f

    const-wide/16 p0, 0x0

    .line 1103
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1104
    :cond_3f
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_46

    .line 1105
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_46
    return-object v0

    :cond_47
    if-eqz p1, :cond_22d

    .line 1114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_50

    goto :goto_b6

    .line 1118
    :cond_50
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_6e

    .line 1119
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_59

    goto :goto_b6

    .line 1123
    :cond_59
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1124
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_69

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_b6

    .line 1127
    :cond_69
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1130
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1131
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_a3

    .line 1132
    check-cast p0, Ljava/util/Collection;

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1135
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1136
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 1137
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_a2
    return-object v0

    .line 1142
    :cond_a3
    const-class v1, [B

    if-ne p1, v1, :cond_ac

    .line 1143
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 1147
    :cond_ac
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b7

    :goto_b6
    return-object p0

    .line 1151
    :cond_b7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_228

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_c1

    goto/16 :goto_228

    .line 1155
    :cond_c1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_223

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_cb

    goto/16 :goto_223

    .line 1159
    :cond_cb
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_21e

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_d5

    goto/16 :goto_21e

    .line 1163
    :cond_d5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_219

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_df

    goto/16 :goto_219

    .line 1167
    :cond_df
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_214

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_e9

    goto/16 :goto_214

    .line 1171
    :cond_e9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_20f

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_f3

    goto/16 :goto_20f

    .line 1175
    :cond_f3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_20a

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_fd

    goto/16 :goto_20a

    .line 1179
    :cond_fd
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_205

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_107

    goto/16 :goto_205

    .line 1183
    :cond_107
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_110

    .line 1184
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1187
    :cond_110
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_119

    .line 1188
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1191
    :cond_119
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_122

    .line 1192
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1195
    :cond_122
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_12b

    .line 1196
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 1199
    :cond_12b
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->castFunction:Lcom/alibaba/fastjson/util/BiFunction;

    invoke-static {v1, p0, p1}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_134

    return-object v1

    .line 1205
    :cond_134
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 1206
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1209
    :cond_13f
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "can not cast to : "

    if-eqz v1, :cond_17c

    .line 1210
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 1212
    const-class p2, Ljava/util/Calendar;

    if-ne p1, p2, :cond_15a

    .line 1213
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_161

    .line 1216
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_160} :catch_165

    move-object p1, p2

    .line 1221
    :goto_161
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :catch_165
    move-exception p0

    .line 1218
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1225
    :cond_17c
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1226
    const-string v3, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19e

    .line 1227
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 1228
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 1229
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1230
    sget-object p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_19e
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1e0

    .line 1234
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 1235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1df

    const-string v4, "null"

    .line 1236
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1df

    const-string v4, "NULL"

    .line 1237
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    goto :goto_1df

    .line 1241
    :cond_1bc
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1c5

    .line 1242
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 1245
    :cond_1c5
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_1ce

    .line 1246
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 1249
    :cond_1ce
    const-string v0, "java.time."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 1250
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1251
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1df
    :goto_1df
    return-object v0

    .line 1255
    :cond_1e0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    if-eqz p2, :cond_1ef

    .line 1257
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1258
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1260
    :cond_1ef
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1180
    :cond_205
    :goto_205
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1176
    :cond_20a
    :goto_20a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1172
    :cond_20f
    :goto_20f
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1168
    :cond_214
    :goto_214
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1164
    :cond_219
    :goto_219
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1160
    :cond_21e
    :goto_21e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 1156
    :cond_223
    :goto_223
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1152
    :cond_228
    :goto_228
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1111
    :cond_22d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clazz is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1344
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1346
    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_59

    .line 1347
    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1348
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_59

    .line 1349
    check-cast p0, Ljava/util/List;

    .line 1350
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1352
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1354
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_50

    if-eqz v0, :cond_48

    .line 1355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v3, v4, :cond_48

    .line 1356
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v3, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_54

    .line 1358
    :cond_48
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-static {v0, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_54

    .line 1361
    :cond_50
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1364
    :goto_54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_58
    return-object p1

    .line 1370
    :cond_59
    const-class v1, Ljava/util/Set;

    if-eq v0, v1, :cond_71

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_71

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_71

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_71

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_71

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_d2

    .line 1375
    :cond_71
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1376
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_d2

    .line 1378
    const-class p1, Ljava/util/Set;

    if-eq v0, p1, :cond_94

    const-class p1, Ljava/util/HashSet;

    if-ne v0, p1, :cond_84

    goto :goto_94

    .line 1380
    :cond_84
    const-class p1, Ljava/util/TreeSet;

    if-ne v0, p1, :cond_8e

    .line 1381
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_99

    .line 1383
    :cond_8e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_99

    .line 1379
    :cond_94
    :goto_94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1385
    :goto_99
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1387
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_c9

    if-eqz v0, :cond_c1

    .line 1388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v3, v4, :cond_c1

    .line 1389
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v3, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_cd

    .line 1391
    :cond_c1
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-static {v0, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_cd

    .line 1394
    :cond_c9
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1397
    :goto_cd
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_d1
    return-object p1

    .line 1403
    :cond_d2
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_db

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_11b

    .line 1404
    :cond_db
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1405
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1406
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_11b

    .line 1407
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1408
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_fa
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 1410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1411
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fa

    :cond_11a
    return-object p1

    .line 1416
    :cond_11b
    instance-of v1, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_12a

    .line 1417
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1418
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12a

    return-object v4

    .line 1423
    :cond_12a
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1424
    array-length v5, v1

    if-ne v5, v3, :cond_140

    .line 1425
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v2, v5, v2

    .line 1426
    instance-of v2, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_140

    .line 1427
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1431
    :cond_140
    const-class v2, Ljava/util/Map$Entry;

    if-ne v0, v2, :cond_175

    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_175

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v3, :cond_175

    .line 1432
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1433
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1434
    array-length v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_174

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_174

    .line 1435
    aget-object v0, v1, v3

    .line 1437
    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    .line 1436
    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_174
    return-object p0

    .line 1443
    :cond_175
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_191

    if-nez p2, :cond_17d

    .line 1445
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1447
    :cond_17d
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    if-eqz v0, :cond_191

    .line 1449
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1450
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 1451
    invoke-interface {v0, v1, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1455
    :cond_191
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "can not cast to : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1322
    :cond_4
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 1323
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1325
    :cond_f
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1a

    .line 1326
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1328
    :cond_1a
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_38

    .line 1329
    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 1330
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "null"

    .line 1331
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "NULL"

    .line 1332
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    :cond_37
    return-object v0

    .line 1336
    :cond_38
    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_3d

    return-object p0

    .line 1339
    :cond_3d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "can not cast to : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 314
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_20

    .line 315
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_1f
    return-object v0

    .line 318
    :cond_20
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3c

    .line 319
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_3b
    return-object v0

    .line 322
    :cond_3c
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_43

    .line 323
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 324
    :cond_43
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4f

    .line 325
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 326
    :cond_4f
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5d

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5d

    return-object v0

    .line 330
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "null"

    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_87

    .line 337
    :cond_70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_7f

    .line 340
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 338
    :cond_7f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    :goto_87
    return-object v0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 348
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_29

    .line 349
    check-cast p0, Ljava/lang/Float;

    .line 350
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_28

    .line 353
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    return-object v0

    .line 354
    :cond_29
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4e

    .line 355
    check-cast p0, Ljava/lang/Double;

    .line 356
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_4d

    .line 359
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4d
    :goto_4d
    return-object v0

    .line 360
    :cond_4e
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_55

    .line 361
    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 362
    :cond_55
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6d

    .line 363
    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    .line 364
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    const/16 v3, -0x3e8

    if-le v2, v3, :cond_6d

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_6d

    .line 366
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 370
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "null"

    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_97

    .line 377
    :cond_80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_8f

    .line 380
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 378
    :cond_8f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    return-object v0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1029
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 1030
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 1033
    :cond_b
    instance-of v1, p0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 1034
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1037
    :cond_1f
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_31

    .line 1038
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1041
    :cond_31
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 1042
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1043
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9f

    const-string v2, "null"

    .line 1044
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    const-string v2, "NULL"

    .line 1045
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_9f

    .line 1048
    :cond_4f
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "1"

    .line 1049
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_9c

    .line 1052
    :cond_61
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string v0, "0"

    .line 1053
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_99

    .line 1056
    :cond_72
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "T"

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_96

    .line 1060
    :cond_83
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "N"

    .line 1061
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1062
    :cond_93
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1058
    :cond_96
    :goto_96
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1054
    :cond_99
    :goto_99
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1050
    :cond_9c
    :goto_9c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9f
    :goto_9f
    return-object v0

    .line 1065
    :cond_a0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to boolean, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 234
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 235
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->byteValue(Ljava/math/BigDecimal;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 238
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 239
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 242
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 243
    check-cast p0, Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "null"

    .line 245
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "NULL"

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_48

    .line 249
    :cond_3f
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_48
    :goto_48
    return-object v0

    .line 252
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    .line 253
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 256
    :cond_58
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to byte, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .registers 4

    .line 1016
    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 1017
    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    .line 1019
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1020
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 1022
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to byte[], value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 263
    :cond_4
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_b

    .line 264
    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 266
    :cond_b
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to char, value : "

    if-eqz v1, :cond_3e

    .line 267
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    return-object v0

    .line 271
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    const/4 p0, 0x0

    .line 274
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 272
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_3e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .registers 2

    const/4 v0, 0x0

    .line 438
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 446
    :cond_4
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_b

    .line 447
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 450
    :cond_b
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_16

    .line 451
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 456
    :cond_16
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_26

    .line 457
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide p0

    .line 458
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 461
    :cond_26
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_43

    .line 462
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 463
    const-string/jumbo p0, "unixtime"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-wide/16 p0, 0x3e8

    mul-long v0, v0, p0

    .line 466
    :cond_3d
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 469
    :cond_43
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to Date, value : "

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_12c

    .line 470
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 471
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 473
    :try_start_54
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 474
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    .line 475
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_127

    .line 478
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object p0

    :cond_66
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 481
    const-string v5, "/Date("

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    const-string v5, ")/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 482
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_84
    const/16 v5, 0x2d

    .line 485
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_a4

    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_a4

    if-eqz p1, :cond_97

    goto :goto_a4

    .line 514
    :cond_97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9e

    return-object v0

    .line 517
    :cond_9e
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_12d

    :cond_a4
    :goto_a4
    if-nez p1, :cond_104

    .line 487
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    .line 488
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p0, p1, :cond_102

    const/16 p1, 0x16

    if-ne p0, p1, :cond_c2

    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string/jumbo v0, "yyyyMMddHHmmssSSSZ"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    goto :goto_102

    :cond_c2
    const/16 p1, 0xa

    if-ne p0, p1, :cond_ca

    .line 492
    const-string/jumbo p1, "yyyy-MM-dd"

    goto :goto_104

    :cond_ca
    const/16 p1, 0x13

    if-ne p0, p1, :cond_d2

    .line 494
    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_104

    :cond_d2
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_ee

    const/16 v0, 0x1a

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_ee

    const/16 v0, 0x1c

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_ee

    .line 498
    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_104

    :cond_ee
    const/16 v0, 0x17

    if-ne p0, v0, :cond_fe

    .line 499
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_fe

    .line 500
    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss,SSS"

    goto :goto_104

    .line 502
    :cond_fe
    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_104

    .line 490
    :cond_102
    :goto_102
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 506
    :cond_104
    :goto_104
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 507
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 509
    :try_start_110
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_114
    .catch Ljava/text/ParseException; {:try_start_110 .. :try_end_114} :catch_115

    return-object p0

    .line 511
    :catch_115
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_127
    move-exception p0

    .line 478
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 479
    throw p0

    :cond_12c
    move-wide v5, v3

    :goto_12d
    cmp-long p1, v5, v3

    if-nez p1, :cond_1b1

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 522
    const-string v1, "oracle.sql.TIMESTAMP"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "toJdbc"

    const/4 v4, 0x1

    if-eqz v1, :cond_16c

    .line 523
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_15a

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v1, :cond_15a

    .line 525
    :try_start_14d
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_153
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14d .. :try_end_153} :catch_158
    .catchall {:try_start_14d .. :try_end_153} :catchall_154

    goto :goto_158

    :catchall_154
    move-exception p0

    .line 529
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 530
    throw p0

    .line 529
    :catch_158
    :goto_158
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 534
    :cond_15a
    :try_start_15a
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_160} :catch_163

    .line 538
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_163
    move-exception p0

    .line 536
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 540
    :cond_16c
    const-string v1, "oracle.sql.DATE"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 541
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_18d

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v1, :cond_18d

    .line 543
    :try_start_180
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_186
    .catch Ljava/lang/NoSuchMethodException; {:try_start_180 .. :try_end_186} :catch_18b
    .catchall {:try_start_180 .. :try_end_186} :catchall_187

    goto :goto_18b

    :catchall_187
    move-exception p0

    .line 547
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 548
    throw p0

    .line 547
    :catch_18b
    :goto_18b
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 552
    :cond_18d
    :try_start_18d
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_193} :catch_196

    .line 556
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_196
    move-exception p0

    .line 554
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "can not cast oracle.sql.DATE to Date"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 559
    :cond_19f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_1b1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 414
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 415
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 417
    :cond_13
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "null"

    .line 420
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "NULL"

    .line 421
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    const/16 v0, 0x2c

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 425
    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 427
    :cond_43
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    return-object v0

    .line 430
    :cond_4d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_63

    .line 431
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5e

    :cond_5c
    const-wide/16 v0, 0x0

    :goto_5e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 434
    :cond_63
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to double, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1277
    const-string v0, "can not cast to : "

    :try_start_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1278
    check-cast p0, Ljava/lang/String;

    .line 1279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    if-nez p2, :cond_16

    .line 1284
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1287
    :cond_16
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    .line 1288
    instance-of v1, p2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v1, :cond_29

    .line 1289
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 1290
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 1293
    :cond_29
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 1296
    :cond_2e
    instance-of p2, p0, Ljava/math/BigDecimal;

    if-eqz p2, :cond_43

    .line 1297
    move-object p2, p0

    check-cast p2, Ljava/math/BigDecimal;

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p2

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 1299
    array-length v2, v1

    if-ge p2, v2, :cond_43

    .line 1300
    aget-object p0, v1, p2

    return-object p0

    .line 1304
    :cond_43
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_57

    .line 1305
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 1306
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    .line 1307
    array-length v1, p2

    if-ge p0, v1, :cond_57

    .line 1308
    aget-object p0, p2, p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_6d

    return-object p0

    .line 1314
    :cond_57
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6d
    move-exception p0

    .line 1312
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 387
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 388
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 390
    :cond_13
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "null"

    .line 393
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "NULL"

    .line 394
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    const/16 v0, 0x2c

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 398
    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 400
    :cond_43
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    return-object v0

    .line 403
    :cond_4d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    .line 404
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5c

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_5d

    :cond_5c
    const/4 p0, 0x0

    :goto_5d
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 407
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to float, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 968
    :cond_4
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 969
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 972
    :cond_b
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1a

    .line 973
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 976
    :cond_1a
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_29

    .line 977
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 980
    :cond_29
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 981
    check-cast p0, Ljava/lang/String;

    .line 982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "null"

    .line 983
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "NULL"

    .line 984
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_70

    :cond_46
    const/16 v0, 0x2c

    .line 987
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v1, :cond_57

    .line 988
    const-string v0, ","

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 991
    :cond_57
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 993
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 995
    :cond_67
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_70
    :goto_70
    return-object v0

    .line 998
    :cond_71
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_80

    .line 999
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1001
    :cond_80
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b2

    .line 1002
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1003
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b2

    const-string v1, "andIncrement"

    .line 1004
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const-string v1, "andDecrement"

    .line 1005
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1006
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1007
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1008
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 1009
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_b2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to int, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1069
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const-string v0, "can not get javaBeanDeserializer. "

    .line 1461
    :try_start_2
    const-class v1, Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3f

    .line 1462
    const-string p1, "className"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1463
    const-string p2, "methodName"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1464
    const-string v0, "fileName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1467
    const-string v1, "lineNumber"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_2a

    goto :goto_39

    .line 1470
    :cond_2a
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_35

    .line 1471
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v2

    goto :goto_39

    .line 1473
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1476
    :goto_39
    new-instance p0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, p2, v0, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 1480
    :cond_3f
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1481
    instance-of v3, v1, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_78

    .line 1482
    check-cast v1, Ljava/lang/String;

    if-nez p2, :cond_50

    .line 1485
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1487
    :cond_50
    invoke-virtual {p2, v1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 1491
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1492
    invoke-static {p0, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1489
    :cond_61
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1497
    :cond_78
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1499
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_85

    .line 1500
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_8b

    .line 1502
    :cond_85
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_8b
    if-nez p2, :cond_91

    .line 1505
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1507
    :cond_91
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    if-eqz p2, :cond_a0

    .line 1509
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1510
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1512
    :cond_a0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p1, v0, v2

    invoke-static {p2, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1516
    :cond_b2
    const-class v1, Ljava/util/Locale;

    if-ne p1, v1, :cond_dc

    .line 1517
    const-string v1, "language"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1518
    const-string v2, "country"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1519
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_dc

    .line 1520
    check-cast v1, Ljava/lang/String;

    .line 1521
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d4

    .line 1522
    check-cast v2, Ljava/lang/String;

    .line 1523
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_d4
    if-nez v2, :cond_dc

    .line 1525
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1530
    :cond_dc
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_e9

    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_e9

    .line 1531
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1534
    :cond_e9
    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-ne p1, v1, :cond_f2

    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_f2

    goto :goto_10c

    .line 1538
    :cond_f2
    const-class v1, Ljava/util/LinkedHashMap;

    if-ne p1, v1, :cond_106

    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_106

    .line 1539
    move-object v1, p0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 1540
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    .line 1541
    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_106

    return-object v1

    .line 1546
    :cond_106
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    :goto_10c
    return-object p0

    .line 1550
    :cond_10d
    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v1, :cond_117

    .line 1551
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_117
    if-nez p2, :cond_11d

    .line 1555
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1559
    :cond_11d
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1560
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_128

    .line 1561
    move-object v4, v1

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_128
    if-eqz v4, :cond_12f

    .line 1567
    invoke-virtual {v4, p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1565
    :cond_12f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_145} :catch_145

    :catch_145
    move-exception p0

    .line 1569
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 858
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 859
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 862
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 863
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 866
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7a

    .line 867
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 868
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_79

    const-string v2, "null"

    .line 869
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "NULL"

    .line 870
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_79

    :cond_40
    const/16 v2, 0x2c

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_51

    .line 874
    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    :cond_51
    :try_start_51
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_59} :catch_5a

    return-object p0

    :catch_5a
    nop

    .line 881
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 883
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 884
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 886
    :cond_6b
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    if-eqz v0, :cond_7a

    .line 888
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_79
    :goto_79
    return-object v0

    .line 892
    :cond_7a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_ac

    .line 893
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 894
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ac

    const-string v1, "andIncrement"

    .line 895
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string v1, "andDecrement"

    .line 896
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 897
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 898
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 899
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 900
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 904
    :cond_ac
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c2

    .line 905
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_bb

    const-wide/16 v0, 0x1

    goto :goto_bd

    :cond_bb
    const-wide/16 v0, 0x0

    :goto_bd
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 908
    :cond_c2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to long, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 284
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 285
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->shortValue(Ljava/math/BigDecimal;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 288
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 289
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 292
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 293
    check-cast p0, Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "null"

    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "NULL"

    .line 296
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_48

    .line 299
    :cond_3f
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_48
    :goto_48
    return-object v0

    .line 302
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    .line 303
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 306
    :cond_58
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to short, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 613
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDateFunction:Lcom/alibaba/fastjson/util/Function;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 677
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTimeFunction:Lcom/alibaba/fastjson/util/Function;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 770
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestampFunction:Lcom/alibaba/fastjson/util/Function;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2684
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2686
    const-string v1, "["

    .line 2687
    :goto_6
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_20

    .line 2688
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 2689
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2693
    :cond_20
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_49

    .line 2694
    check-cast v0, Ljava/lang/Class;

    .line 2695
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2697
    :try_start_2c
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->primitiveTypeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 2699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-object p0
.end method

.method public static clearClassMapping()V
    .registers 1

    .line 1701
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1702
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2274
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_98

    aget-object v10, v3, v6

    .line 2275
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_94

    .line 2278
    :cond_1b
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v10, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2280
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v17, :cond_69

    .line 2283
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_94

    .line 2286
    :cond_33
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 2287
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 2288
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 2289
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_55

    .line 2290
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 2292
    :cond_55
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_63

    .line 2293
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v8

    :cond_63
    move-object/from16 v18, v8

    move v13, v9

    move v14, v11

    move v15, v12

    goto :goto_6e

    :cond_69
    move-object/from16 v18, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6e
    if-eqz v0, :cond_79

    .line 2297
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_79

    goto :goto_94

    :cond_79
    if-eqz v1, :cond_7f

    .line 2303
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7f
    move-object v8, v7

    .line 2305
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_94

    .line 2306
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v7 .. v18}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2308
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    :goto_94
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    :cond_98
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    .line 1910
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1911
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    const/16 v17, 0x0

    .line 1914
    move-object/from16 v0, v17

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 1917
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1919
    :try_start_1b
    new-instance v1, Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 1924
    :catchall_23
    array-length v1, v0

    move-object/from16 v5, v17

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v1, :cond_4d0

    aget-object v9, v0, v3

    .line 1925
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1928
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_4d

    :cond_3c
    :goto_3c
    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    move-object/from16 v22, v0

    move/from16 v24, v1

    move/from16 v27, v3

    move-object/from16 v20, v5

    :goto_49
    const/16 v18, 0x0

    goto/16 :goto_4c3

    .line 1932
    :cond_4d
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    const/16 p1, 0x0

    .line 1933
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_3c

    .line 1937
    :cond_5c
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_64

    goto :goto_3c

    .line 1941
    :cond_64
    const-class v2, Ljava/lang/ClassLoader;

    if-eq v11, v2, :cond_3c

    const-class v2, Ljava/io/InputStream;

    if-eq v11, v2, :cond_3c

    const-class v2, Ljava/io/Reader;

    if-ne v11, v2, :cond_71

    goto :goto_3c

    .line 1947
    :cond_71
    const-string v2, "getMetaClass"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1948
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v0

    const-string v0, "groovy.lang.MetaClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    :goto_87
    move-object/from16 v20, v13

    move-object v13, v12

    move-object/from16 v12, v20

    move/from16 v24, v1

    move/from16 v27, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v18

    goto :goto_49

    :cond_95
    move-object/from16 v18, v0

    .line 1951
    :cond_97
    const-string v0, "getSuppressed"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1952
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Throwable;

    if-ne v0, v2, :cond_a8

    :goto_a7
    goto :goto_87

    :cond_a8
    if-eqz v16, :cond_b1

    .line 1956
    invoke-static {v4, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_a7

    .line 1962
    :cond_b1
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1963
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v9, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v2, :cond_c3

    .line 1965
    invoke-static {v4, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    :cond_c3
    move-object/from16 v19, v0

    .line 1967
    const-string v0, "get"

    move-object/from16 v20, v5

    if-nez v2, :cond_17e

    if-eqz v16, :cond_17e

    if-nez v20, :cond_107

    .line 1969
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v20

    .line 1970
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v21

    if-eqz v21, :cond_107

    .line 1972
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 1973
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_107

    .line 1975
    array-length v7, v6

    new-array v7, v7, [Ljava/lang/String;

    .line 1976
    array-length v5, v6

    move/from16 v22, v1

    const/4 v1, 0x0

    invoke-static {v6, v1, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1978
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1979
    array-length v5, v6

    new-array v5, v5, [S

    move-object/from16 v23, v2

    .line 1980
    :goto_f5
    array-length v2, v6

    if-ge v1, v2, :cond_104

    .line 1981
    aget-object v2, v6, v1

    invoke-static {v7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1982
    aput-short v1, v5, v2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_f5

    :cond_104
    move-object v6, v7

    move-object v7, v5

    goto :goto_10b

    :cond_107
    move/from16 v22, v1

    move-object/from16 v23, v2

    :goto_10b
    move-object/from16 v5, v20

    if-eqz v6, :cond_179

    if-eqz v7, :cond_179

    .line 1988
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_179

    const/4 v1, 0x3

    .line 1989
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1990
    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move/from16 v20, v2

    move/from16 v24, v3

    if-gez v2, :cond_13a

    const/4 v2, 0x0

    .line 1992
    :goto_12b
    array-length v3, v6

    if-ge v2, v3, :cond_13a

    .line 1993
    aget-object v3, v6, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    goto :goto_13c

    :cond_137
    add-int/lit8 v2, v2, 0x1

    goto :goto_12b

    :cond_13a
    move/from16 v2, v20

    :goto_13c
    if-ltz v2, :cond_17b

    .line 2000
    aget-short v2, v7, v2

    .line 2001
    aget-object v2, v8, v2

    if-eqz v2, :cond_15c

    .line 2003
    array-length v3, v2

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_148
    if-ge v2, v3, :cond_15c

    move/from16 v25, v2

    aget-object v2, v20, v25

    move/from16 v26, v3

    .line 2004
    instance-of v3, v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_157

    .line 2005
    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_15e

    :cond_157
    add-int/lit8 v2, v25, 0x1

    move/from16 v3, v26

    goto :goto_148

    :cond_15c
    move-object/from16 v2, v23

    :goto_15e
    if-nez v2, :cond_16f

    .line 2011
    invoke-static {v1, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_16f

    .line 2013
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_16f
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object v1, v11

    goto :goto_18d

    :cond_179
    move/from16 v24, v3

    :cond_17b
    move-object/from16 v20, v5

    goto :goto_184

    :cond_17e
    move/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    :goto_184
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object v1, v11

    move-object/from16 v2, v23

    move-object/from16 v23, v6

    :goto_18d
    const/4 v11, 0x0

    if-eqz v2, :cond_208

    .line 2020
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v3

    if-nez v3, :cond_1a5

    :goto_196
    move-object/from16 v27, v13

    move-object v13, v12

    move-object/from16 v12, v27

    move/from16 v27, v24

    move/from16 v24, v22

    move-object/from16 v22, v18

    const/16 v18, 0x0

    goto/16 :goto_4bd

    .line 2023
    :cond_1a5
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 2024
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 2025
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 2026
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ec

    .line 2027
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_1d2

    .line 2029
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1d2

    goto :goto_196

    :cond_1d2
    move-object v1, v0

    .line 2034
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object/from16 v27, v9

    move-object v9, v2

    move-object/from16 v2, v27

    move/from16 v27, v24

    move/from16 v24, v22

    move-object/from16 v22, v18

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2036
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_227

    :cond_1ec
    move-object/from16 v27, v9

    move-object v9, v2

    move-object/from16 v2, v27

    move/from16 v27, v24

    move/from16 v24, v22

    move-object/from16 v22, v18

    const/16 v18, 0x0

    .line 2039
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_218

    .line 2040
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    goto :goto_218

    :cond_208
    move-object/from16 v27, v9

    move-object v9, v2

    move-object/from16 v2, v27

    move/from16 v27, v24

    move/from16 v24, v22

    move-object/from16 v22, v18

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2043
    :cond_218
    :goto_218
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v5, 0x5f

    if-eqz v0, :cond_396

    .line 2044
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_22e

    :goto_227
    move-object/from16 v30, v13

    move-object v13, v12

    move-object/from16 v12, v30

    goto/16 :goto_4bd

    .line 2047
    :cond_22e
    const-string v0, "getClass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    goto :goto_227

    .line 2050
    :cond_237
    const-string v0, "getDeclaringClass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_246

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_246

    goto :goto_227

    :cond_246
    const/4 v0, 0x3

    .line 2053
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2056
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v21

    if-nez v21, :cond_2a6

    const/16 v0, 0x200

    if-le v3, v0, :cond_256

    goto :goto_2a6

    :cond_256
    if-ne v3, v5, :cond_271

    const/4 v0, 0x3

    .line 2066
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2067
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_2bf

    const/4 v5, 0x4

    .line 2070
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2071
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_2a3

    goto :goto_2a4

    :cond_271
    const/16 v0, 0x66

    if-ne v3, v0, :cond_27c

    const/4 v3, 0x3

    .line 2077
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_2bd

    :cond_27c
    const/4 v3, 0x3

    .line 2078
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v0, 0x5

    if-lt v5, v0, :cond_298

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_298

    .line 2079
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2bc

    .line 2081
    :cond_298
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2082
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_2a3

    goto :goto_227

    :cond_2a3
    move-object v3, v0

    :goto_2a4
    move-object v0, v5

    goto :goto_2bf

    :cond_2a6
    :goto_2a6
    const/4 v3, 0x3

    .line 2059
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v0, :cond_2b4

    .line 2060
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b8

    .line 2062
    :cond_2b4
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2064
    :goto_2b8
    invoke-static {v13, v10, v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2bc
    move-object v3, v0

    :goto_2bd
    move-object/from16 v0, v17

    .line 2087
    :cond_2bf
    :goto_2bf
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c7

    goto/16 :goto_227

    :cond_2c7
    if-nez v0, :cond_2cd

    .line 2094
    invoke-static {v3, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_2cd
    const/4 v5, 0x1

    move-object/from16 v28, v0

    if-nez v0, :cond_2f6

    .line 2097
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2f6

    .line 2098
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v29, 0x1

    const/16 v5, 0x41

    if-lt v0, v5, :cond_2f4

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_2f4

    const/4 v0, 0x3

    .line 2100
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2101
    invoke-static {v5, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_2fb

    :cond_2f4
    const/4 v0, 0x3

    goto :goto_2f9

    :cond_2f6
    const/4 v0, 0x3

    const/16 v29, 0x1

    :goto_2f9
    move-object/from16 v5, v28

    :goto_2fb
    if-eqz v5, :cond_365

    .line 2106
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_35c

    .line 2108
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v6

    if-nez v6, :cond_30f

    goto/16 :goto_227

    .line 2111
    :cond_30f
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 2112
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 2113
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 2114
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_349

    .line 2115
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v28, v0

    .line 2116
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_343

    .line 2118
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_343

    goto/16 :goto_227

    :cond_343
    move-object/from16 v30, v3

    move-object v3, v0

    move-object/from16 v0, v30

    goto :goto_34d

    :cond_349
    move-object/from16 v28, v0

    move-object/from16 v0, v19

    .line 2124
    :goto_34d
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_360

    .line 2125
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    goto :goto_360

    :cond_35c
    move-object/from16 v28, v0

    move-object/from16 v0, v19

    :cond_360
    :goto_360
    move-object/from16 v19, v10

    move-object/from16 v10, v28

    goto :goto_36b

    :cond_365
    move-object/from16 v0, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    :goto_36b
    if-eqz v12, :cond_377

    .line 2130
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_377

    goto/16 :goto_227

    :cond_377
    if-eqz v14, :cond_383

    .line 2135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_383

    .line 2136
    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2138
    :cond_383
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v28, v1

    move-object v1, v3

    move-object v3, v5

    const/4 v5, 0x0

    move-object/from16 v14, v19

    move-object/from16 v12, v28

    const/4 v13, 0x3

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2140
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_399

    :cond_396
    move-object v12, v1

    move-object v14, v10

    const/4 v13, 0x3

    .line 2142
    :goto_399
    const-string v0, "is"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b7

    .line 2143
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v13, :cond_3a9

    goto/16 :goto_4b7

    .line 2146
    :cond_3a9
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v0, :cond_3b3

    const-class v0, Ljava/lang/Boolean;

    if-eq v12, v0, :cond_3b3

    goto/16 :goto_4b7

    :cond_3b3
    const/4 v0, 0x2

    .line 2150
    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2153
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3ed

    .line 2154
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_3cb

    .line 2155
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e6

    .line 2157
    :cond_3cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3e6
    move-object/from16 v12, p3

    .line 2159
    invoke-static {v12, v14, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_413

    :cond_3ed
    move-object/from16 v12, p3

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_40b

    .line 2161
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2162
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    if-nez v3, :cond_409

    .line 2165
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2166
    invoke-static {v0, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_424

    :cond_409
    move-object v0, v1

    goto :goto_424

    :cond_40b
    const/16 v3, 0x66

    if-ne v1, v3, :cond_416

    .line 2172
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_413
    move-object/from16 v3, v17

    goto :goto_424

    .line 2174
    :cond_416
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2175
    invoke-static {v0, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_424

    :goto_420
    move-object/from16 v13, p2

    goto/16 :goto_4bb

    .line 2180
    :cond_424
    :goto_424
    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42b

    :goto_42a
    goto :goto_420

    :cond_42b
    if-nez v3, :cond_431

    .line 2186
    invoke-static {v0, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    :cond_431
    if-nez v3, :cond_437

    .line 2190
    invoke-static {v14, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    :cond_437
    if-eqz v3, :cond_48e

    .line 2194
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_48a

    .line 2196
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v5

    if-nez v5, :cond_44a

    goto :goto_42a

    .line 2199
    :cond_44a
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 2200
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 2201
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 2202
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_479

    .line 2203
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_479

    move-object/from16 v13, p2

    .line 2205
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_47b

    goto :goto_49c

    :cond_479
    move-object/from16 v13, p2

    .line 2211
    :cond_47b
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_48c

    .line 2212
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    goto :goto_48c

    :cond_48a
    move-object/from16 v13, p2

    :cond_48c
    :goto_48c
    move-object v10, v1

    goto :goto_492

    :cond_48e
    move-object/from16 v13, p2

    move-object/from16 v10, v17

    :goto_492
    if-eqz v13, :cond_49d

    .line 2217
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_49d

    :goto_49c
    goto :goto_4bb

    :cond_49d
    move-object/from16 v14, p5

    if-eqz p5, :cond_4a5

    .line 2223
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4a5
    move-object v1, v0

    .line 2226
    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ad

    goto :goto_4bd

    .line 2229
    :cond_4ad
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2231
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4bd

    :cond_4b7
    :goto_4b7
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    :goto_4bb
    move-object/from16 v14, p5

    :goto_4bd
    move-object/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    :goto_4c3
    move-object/from16 v5, v20

    add-int/lit8 v3, v27, 0x1

    move-object v0, v13

    move-object v13, v12

    move-object v12, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2a

    :cond_4d0
    move-object v13, v12

    .line 2234
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2235
    invoke-static {v4, v13, v14, v15, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    move/from16 v0, p4

    .line 2236
    invoke-static {v4, v0, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1893
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1897
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1898
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1899
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1900
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1884
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_14

    .line 1886
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1887
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1885
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_6

    .line 1889
    :cond_14
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 2610
    array-length v0, p0

    .line 2611
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    .line 2613
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 4

    .line 2741
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2743
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_9d

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_e

    goto/16 :goto_9d

    .line 2746
    :cond_e
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2747
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 2748
    :cond_1c
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2749
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    .line 2750
    :cond_2a
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2751
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    .line 2752
    :cond_38
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2753
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2754
    :cond_46
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2756
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5c

    .line 2757
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_5e

    .line 2759
    :cond_5c
    const-class p0, Ljava/lang/Object;

    .line 2761
    :goto_5e
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 2762
    :cond_65
    const-class p0, Ljava/util/Queue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_97

    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;

    if-eqz p0, :cond_78

    .line 2763
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_78

    goto :goto_97

    .line 2767
    :cond_78
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_7f

    return-object p0

    .line 2769
    :catch_7f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create instance error, class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2764
    :cond_97
    :goto_97
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0

    .line 2745
    :cond_9d
    :goto_9d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static createSet(Ljava/lang/reflect/Type;)Ljava/util/Set;
    .registers 4

    .line 2710
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2712
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_75

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_d

    goto :goto_75

    .line 2715
    :cond_d
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2716
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 2717
    :cond_1b
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2718
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    .line 2719
    :cond_29
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2720
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    .line 2721
    :cond_37
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2723
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4d

    .line 2724
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_4f

    .line 2726
    :cond_4d
    const-class p0, Ljava/lang/Object;

    .line 2728
    :goto_4f
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 2731
    :cond_56
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_5d

    return-object p0

    .line 2733
    :catch_5d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create instance error, class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2714
    :cond_75
    :goto_75
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_38

    .line 2525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 2528
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_38

    .line 2531
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2532
    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p0, v2

    .line 2533
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_38
    :goto_38
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 3051
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 3052
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    return-wide v0
.end method

.method public static fnv1a_64_extract(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 3022
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 3023
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2d

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_19

    goto :goto_2d

    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_24

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_24

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_24
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_30
    return-wide v0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 3038
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 3039
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_1b

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1b

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_1b
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_27
    return-wide v0
.end method

.method private static getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2628
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_b

    .line 2629
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    .line 2630
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1e

    .line 2631
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 2632
    :cond_1e
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_32

    .line 2633
    new-instance v0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_32
    return-object p0
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3195
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3198
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3199
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_f

    .line 3200
    check-cast v1, Ljava/lang/Class;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 3204
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 3205
    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v3, :cond_34

    .line 3206
    array-length v4, v1

    if-lez v4, :cond_34

    .line 3207
    array-length v4, v1

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_34

    aget-object v3, v1, v5

    .line 3208
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_34
    :goto_34
    if-eqz v3, :cond_37

    return-object v3

    .line 3219
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez v0, :cond_53

    .line 3220
    array-length v1, p0

    if-lez v1, :cond_53

    .line 3221
    array-length v1, p0

    :goto_41
    if-ge v2, v1, :cond_53

    aget-object v0, p0, v2

    .line 3222
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_50

    return-object v0

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_53
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3232
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3234
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3237
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3238
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3239
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_35

    .line 3244
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    if-eqz v1, :cond_2b

    .line 3246
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    .line 3249
    :try_start_21
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_2b

    .line 3247
    :catch_26
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1b

    :cond_2b
    :goto_2b
    if-nez v3, :cond_2e

    goto :goto_35

    .line 3258
    :cond_2e
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_35

    return-object p0

    :cond_35
    :goto_35
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3267
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3269
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3272
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3273
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3274
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_39

    .line 3279
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3280
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1f
    if-eqz v1, :cond_2f

    .line 3282
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_2f

    .line 3285
    :try_start_25
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 3283
    :catch_2a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1f

    :cond_2f
    :goto_2f
    if-nez v3, :cond_32

    goto :goto_39

    .line 3294
    :cond_32
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_39

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2457
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    .line 2458
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2461
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1a

    .line 2462
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2465
    :cond_1a
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2466
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    .line 2467
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2e

    .line 2468
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2470
    :cond_2e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2473
    :cond_33
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_48

    .line 2474
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2475
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_48

    .line 2476
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2480
    :cond_48
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1728
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2648
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3d

    .line 2650
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2651
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1e

    .line 2652
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 2653
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2654
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 2655
    aget-object p0, v1, v0

    .line 2658
    :cond_1e
    instance-of v0, p0, Ljava/lang/Class;

    const-string v1, "can not create ASMParser"

    if-eqz v0, :cond_37

    .line 2659
    check-cast p0, Ljava/lang/Class;

    .line 2660
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    return-object p0

    .line 2661
    :cond_31
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2664
    :cond_37
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2668
    :cond_3d
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2571
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 2573
    :cond_f
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2577
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2578
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2579
    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    .line 2580
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2582
    :cond_14
    check-cast v0, Ljava/lang/Class;

    .line 2583
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    .line 2584
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2585
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_41

    .line 2586
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 2587
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2588
    array-length v2, v0

    if-lez v2, :cond_3c

    .line 2589
    invoke-static {v1, v0, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2590
    :cond_3c
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2592
    :cond_41
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2561
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    .line 2562
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2564
    :cond_b
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 2565
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2567
    :cond_16
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2597
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_20

    aget-object v4, v0, v3

    .line 2598
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 2599
    const-class v6, Ljava/util/Collection;

    if-ne v5, v6, :cond_14

    return-object v4

    .line 2602
    :cond_14
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v2, v4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_20
    if-nez v2, :cond_27

    .line 2606
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v2
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 2484
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3c

    aget-object v3, p2, v2

    .line 2485
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2486
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_38

    .line 2491
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_39

    .line 2492
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_39

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_39

    const/4 v5, 0x1

    .line 2493
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_39

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_39

    .line 2494
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    :goto_38
    return-object v3

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2498
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 2499
    const-class p2, Ljava/lang/Object;

    if-eq p0, p2, :cond_4f

    .line 2500
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 2240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2242
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p0, :cond_14

    .line 2244
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-eqz p0, :cond_5c

    .line 2246
    array-length v1, p0

    if-lez v1, :cond_5c

    .line 2247
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2248
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2249
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2251
    :cond_3d
    array-length p2, p0

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, p2, :cond_54

    aget-object v2, p0, v1

    .line 2252
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v3, :cond_51

    .line 2254
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 2258
    :cond_54
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 2260
    :cond_5c
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_68

    .line 2262
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_68
    return-object v0
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2428
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    goto :goto_13

    .line 2431
    :cond_5
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_13

    .line 2432
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_13
    :goto_13
    return-object p0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .registers 7

    .line 3094
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const-string v1, "kotlin.reflect.jvm.internal.KClassImpl"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_1f

    .line 3096
    :try_start_c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3097
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1d

    goto :goto_1f

    .line 3099
    :catchall_1d
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3102
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v0, :cond_25

    return-object v4

    .line 3106
    :cond_25
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_3c

    .line 3108
    :try_start_2d
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3109
    const-string v1, "getConstructors"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3a

    goto :goto_3c

    .line 3111
    :catchall_3a
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3115
    :cond_3c
    :goto_3c
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_55

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_55

    .line 3117
    :try_start_44
    const-string v0, "kotlin.reflect.KFunction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3118
    const-string v1, "getParameters"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_55

    .line 3120
    :catchall_53
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3124
    :cond_55
    :goto_55
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6e

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_6e

    .line 3126
    :try_start_5d
    const-string v0, "kotlin.reflect.KParameter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3127
    const-string v1, "getName"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_6c

    goto :goto_6e

    .line 3129
    :catchall_6c
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3133
    :cond_6e
    :goto_6e
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_73

    return-object v4

    .line 3139
    :cond_73
    :try_start_73
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3140
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3141
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v4

    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 3142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3143
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v0, :cond_a5

    .line 3144
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a5

    goto :goto_a6

    :cond_a5
    move-object v0, v1

    .line 3141
    :goto_a6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_8a

    :cond_aa
    if-nez v0, :cond_ad

    return-object v4

    .line 3154
    :cond_ad
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 3155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3156
    :goto_bb
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d2

    .line 3157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3158
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2
    :try_end_cf
    .catchall {:try_start_73 .. :try_end_cf} :catchall_d3

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_d2
    return-object v0

    :catchall_d3
    move-exception p0

    .line 3162
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3163
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    return-object v4
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 2

    const/4 v0, 0x0

    .line 3071
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 9

    .line 3076
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_36

    aget-object v3, p0, v2

    .line 3077
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz p1, :cond_12

    .line 3078
    array-length v5, v4

    array-length v6, p1

    if-eq v5, v6, :cond_12

    goto :goto_33

    .line 3082
    :cond_12
    array-length v5, v4

    if-lez v5, :cond_27

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_33

    :cond_27
    if-eqz v1, :cond_32

    .line 3085
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_32

    goto :goto_33

    :cond_32
    move-object v1, v3

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_36
    return-object v1
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;
    .registers 11

    .line 3339
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3341
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3344
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3345
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3346
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_71

    .line 3351
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 3353
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3354
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_25
    if-eqz v4, :cond_2f

    .line 3355
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3354
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_25

    .line 3357
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v1

    :goto_34
    if-eqz v5, :cond_67

    .line 3359
    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_67

    if-eqz v4, :cond_5a

    .line 3363
    :try_start_3c
    array-length v6, p0

    add-int/2addr v6, v4

    new-array v6, v6, [Ljava/lang/Class;

    .line 3364
    array-length v7, p0

    const/4 v8, 0x0

    invoke-static {p0, v8, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    :goto_46
    if-lez v7, :cond_55

    add-int/lit8 v8, v7, -0x1

    .line 3366
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_46

    .line 3368
    :cond_55
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_5e

    .line 3370
    :cond_5a
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_5e} :catch_60

    :goto_5e
    move-object v3, p0

    goto :goto_67

    :catch_60
    add-int/lit8 v4, v4, -0x1

    .line 3360
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_34

    :cond_67
    :goto_67
    if-nez v3, :cond_6a

    goto :goto_71

    .line 3380
    :cond_6a
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_71

    return-object p0

    :cond_71
    :goto_71
    return-object v0
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;
    .registers 6

    .line 3303
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3305
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3308
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3309
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3310
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_39

    .line 3315
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3316
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1f
    if-eqz v1, :cond_2f

    .line 3318
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_2f

    .line 3321
    :try_start_25
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 3319
    :catch_2a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1f

    :cond_2f
    :goto_2f
    if-nez v3, :cond_32

    goto :goto_39

    .line 3330
    :cond_32
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_39

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2517
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2521
    :cond_c
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result p0

    return p0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2315
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v0, :cond_15

    .line 2316
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2317
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2318
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-object p1

    :cond_15
    return-object p2
.end method

.method public static getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2776
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 2777
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2778
    :cond_7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    .line 2779
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2780
    :cond_16
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const-string v1, "TODO"

    if-eqz v0, :cond_34

    .line 2781
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 2782
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2783
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    const/4 v0, 0x0

    .line 2784
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2786
    :cond_2e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2789
    :cond_34
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2509
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2513
    :cond_c
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 2325
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 2326
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_57

    .line 2327
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2328
    array-length v3, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_57

    aget-object v5, v0, v4

    .line 2329
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_54

    aget-object v8, v5, v7

    .line 2330
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 2331
    array-length v10, v9

    array-length v11, v1

    if-eq v10, v11, :cond_25

    goto :goto_51

    .line 2334
    :cond_25
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_34

    goto :goto_51

    :cond_34
    const/4 v10, 0x0

    .line 2338
    :goto_35
    array-length v11, v1

    if-ge v10, v11, :cond_46

    .line 2339
    aget-object v11, v9, v10

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    goto :goto_51

    :cond_43
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 2347
    :cond_46
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_51

    return-object v8

    :cond_51
    :goto_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2354
    :cond_57
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_5f

    return-object v0

    .line 2358
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2359
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2360
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_73
    if-ge v4, v3, :cond_af

    aget-object v5, p0, v4

    .line 2361
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 2362
    array-length v7, v6

    array-length v8, v1

    if-eq v7, v8, :cond_80

    goto :goto_ac

    .line 2365
    :cond_80
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    goto :goto_ac

    :cond_8f
    const/4 v7, 0x0

    .line 2369
    :goto_90
    array-length v8, v1

    if-ge v7, v8, :cond_a1

    .line 2370
    aget-object v8, v6, v7

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9e

    goto :goto_ac

    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 2378
    :cond_a1
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_ac

    return-object v5

    :cond_ac
    :goto_ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_af
    return-object v0
.end method

.method private static getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2639
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_13

    .line 2640
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 2641
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2642
    array-length v0, p0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_11
    const-class p0, Ljava/lang/Object;

    :cond_13
    return-object p0
.end method

.method public static getXmlAccessorType(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 2

    .line 176
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_14

    .line 179
    :try_start_8
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x1

    .line 181
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 185
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static intValue(Ljava/math/BigDecimal;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 942
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 944
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    .line 947
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    return p0
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2855
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v1, :cond_18

    .line 2857
    :try_start_d
    const-string v1, "javax.persistence.ManyToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 2860
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 2863
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2838
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v1, :cond_18

    .line 2840
    :try_start_d
    const-string v1, "javax.persistence.OneToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 2843
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 2846
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isClob(Ljava/lang/Class;)Z
    .registers 2

    .line 217
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->isClobFunction:Lcom/alibaba/fastjson/util/Function;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/ModuleUtil;->callWhenHasJavaSql(Lcom/alibaba/fastjson/util/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_f

    .line 219
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .registers 4

    .line 2417
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2420
    :cond_6
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 2421
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2422
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1c

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    return v2
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2871
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v1, :cond_24

    .line 2873
    :try_start_d
    const-string v1, "org.hibernate.Hibernate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2874
    const-string v3, "isInitialized"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_24

    .line 2877
    :catchall_22
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 2880
    :cond_24
    :goto_24
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_38

    .line 2882
    :try_start_28
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2883
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_38

    return p0

    :catchall_38
    :cond_38
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2388
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 2393
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v2

    .line 2394
    array-length v3, v2

    const/4 v4, 0x1

    if-lez v3, :cond_24

    .line 2395
    array-length p0, v2

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p0, :cond_23

    aget-object v3, v2, v0

    .line 2396
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    return v4

    .line 2402
    :cond_24
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    .line 2403
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_38

    aget-object v5, v0, v3

    .line 2404
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    return v4

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2410
    :cond_38
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 2411
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4f
    return v1
.end method

.method public static isJacksonCreator(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3393
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    if-nez v1, :cond_18

    .line 3395
    :try_start_d
    const-string v1, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 3398
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 3401
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .registers 3

    .line 3060
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_14

    .line 3062
    :try_start_9
    const-string v0, "kotlin.Metadata"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_14

    .line 3064
    :catchall_12
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 3067
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 8

    .line 3169
    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v3, 0x1

    if-nez v2, :cond_58

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v2, :cond_58

    .line 3171
    :try_start_d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3172
    const-string v4, "kotlin.ranges.CharRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3173
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    const-string v4, "kotlin.ranges.IntRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3175
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    const-string v4, "kotlin.ranges.LongRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3177
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    const-string v4, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3179
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    const-string v4, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3181
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_56

    goto :goto_58

    .line 3184
    :catchall_56
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 3187
    :cond_58
    :goto_58
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    return v1

    .line 3190
    :cond_5e
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_6f

    .line 3191
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    :goto_70
    return v3
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 840
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 841
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_15

    goto :goto_1e

    :cond_15
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x39

    if-le v2, v3, :cond_21

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1714
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_14

    .line 1716
    :try_start_8
    const-string v0, "java.nio.file.Path"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x1

    .line 1718
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 1721
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    .line 1722
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2804
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1c

    aget-object v3, p0, v2

    .line 2805
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2806
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->isProxyClassNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2817
    :cond_4
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 2819
    :try_start_9
    const-string v1, "java.beans.Transient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_16
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    .line 2823
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2824
    throw p0

    .line 2823
    :catch_16
    :goto_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2826
    :cond_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v1, :cond_23

    .line 2827
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isXmlField(Ljava/lang/Class;)Z
    .registers 6

    .line 121
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_14

    .line 123
    :try_start_9
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_14

    .line 125
    :catchall_12
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 129
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    return v2

    .line 133
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_23

    return v2

    .line 138
    :cond_23
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_3a

    .line 140
    :try_start_2c
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const-string/jumbo v4, "value"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    goto :goto_3a

    .line 142
    :catchall_38
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 146
    :cond_3a
    :goto_3a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3f

    return v2

    .line 151
    :cond_3f
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_4c

    .line 153
    :try_start_43
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4a

    goto :goto_4d

    .line 155
    :catchall_4a
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    :cond_4c
    move-object p0, v3

    :goto_4d
    if-nez p0, :cond_50

    return v2

    .line 162
    :cond_50
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    if-nez v0, :cond_75

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_75

    .line 164
    :try_start_58
    const-string v0, "javax.xml.bind.annotation.XmlAccessType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 165
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    const-string v4, "FIELD"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 166
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_73

    goto :goto_75

    .line 168
    :catchall_73
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 172
    :cond_75
    :goto_75
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    return v1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1710
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1732
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_a3

    .line 1736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_a3

    .line 1740
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc6

    if-gt v0, v1, :cond_8f

    .line 1744
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    .line 1749
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_38

    .line 1750
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1751
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1754
    :cond_38
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1755
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1756
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_56
    if-eqz p1, :cond_68

    .line 1761
    :try_start_58
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_63

    .line 1763
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_64

    :cond_63
    return-object v0

    :catchall_64
    move-exception v1

    .line 1768
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1772
    :cond_68
    :try_start_68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_83

    if-eq v1, p1, :cond_83

    .line 1774
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_83

    if-eqz p2, :cond_82

    .line 1776
    :try_start_7a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_80

    goto :goto_82

    :catchall_80
    move-object v0, p1

    goto :goto_83

    :cond_82
    :goto_82
    return-object p1

    .line 1784
    :catchall_83
    :cond_83
    :goto_83
    :try_start_83
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_8e

    .line 1786
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8e

    :catchall_8e
    :cond_8e
    return-object v0

    .line 1741
    :cond_8f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "illegal className : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a3
    :goto_a3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static longExtractValue(Ljava/lang/Number;)J
    .registers 3

    .line 617
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 618
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0

    .line 621
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static longValue(Ljava/math/BigDecimal;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 955
    :cond_5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_16

    const/16 v1, 0x64

    if-gt v0, v1, :cond_16

    .line 957
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 960
    :cond_16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method private static makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 2619
    array-length v0, p1

    .line 2620
    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 2622
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2624
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2, p0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p1
.end method

.method static num(CC)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v1, 0x39

    if-gt p0, v1, :cond_12

    if-lt p1, v0, :cond_12

    if-gt p1, v1, :cond_12

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method static num(CCCC)I
    .registers 6

    const/16 v0, 0x30

    if-lt p0, v0, :cond_22

    const/16 v1, 0x39

    if-gt p0, v1, :cond_22

    if-lt p1, v0, :cond_22

    if-gt p1, v1, :cond_22

    if-lt p2, v0, :cond_22

    if-gt p2, v1, :cond_22

    if-lt p3, v0, :cond_22

    if-gt p3, v1, :cond_22

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    add-int/2addr p0, p3

    return p0

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method static num(CCCCCCCCC)I
    .registers 11

    const/16 v0, 0x30

    if-lt p0, v0, :cond_56

    const/16 v1, 0x39

    if-gt p0, v1, :cond_56

    if-lt p1, v0, :cond_56

    if-gt p1, v1, :cond_56

    if-lt p2, v0, :cond_56

    if-gt p2, v1, :cond_56

    if-lt p3, v0, :cond_56

    if-gt p3, v1, :cond_56

    if-lt p4, v0, :cond_56

    if-gt p4, v1, :cond_56

    if-lt p5, v0, :cond_56

    if-gt p5, v1, :cond_56

    if-lt p6, v0, :cond_56

    if-gt p6, v1, :cond_56

    if-lt p7, v0, :cond_56

    if-gt p7, v1, :cond_56

    if-lt p8, v0, :cond_56

    if-gt p8, v1, :cond_56

    sub-int/2addr p0, v0

    const v1, 0x5f5e100

    mul-int p0, p0, v1

    sub-int/2addr p1, v0

    const v1, 0x989680

    mul-int p1, p1, v1

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    const p1, 0xf4240

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    const p1, 0x186a0

    mul-int p3, p3, p1

    add-int/2addr p0, p3

    sub-int/2addr p4, v0

    mul-int/lit16 p4, p4, 0x2710

    add-int/2addr p0, p4

    sub-int/2addr p5, v0

    mul-int/lit16 p5, p5, 0x3e8

    add-int/2addr p0, p5

    sub-int/2addr p6, v0

    mul-int/lit8 p6, p6, 0x64

    add-int/2addr p0, p6

    sub-int/2addr p7, v0

    mul-int/lit8 p7, p7, 0xa

    add-int/2addr p0, p7

    sub-int/2addr p8, v0

    add-int/2addr p0, p8

    return p0

    :cond_56
    const/4 p0, -0x1

    return p0
.end method

.method public static optionalEmpty(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3

    .line 3408
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_ERROR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 3412
    :cond_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v1

    .line 3417
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 3419
    const-string v0, "java.util.Optional"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3420
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_EMPTY:Ljava/lang/Object;

    if-nez v0, :cond_31

    .line 3422
    :try_start_1d
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "empty"

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3423
    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_EMPTY:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    goto :goto_31

    :catchall_2e
    const/4 p0, 0x1

    .line 3425
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_ERROR:Z

    .line 3428
    :cond_31
    :goto_31
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->OPTIONAL_EMPTY:Ljava/lang/Object;

    return-object p0

    :cond_34
    return-object v1
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 10

    .line 2892
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_d

    .line 2894
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_d
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v1, v0, :cond_49

    .line 2902
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_22

    if-nez v1, :cond_22

    const/4 v2, 0x1

    goto :goto_41

    :cond_22
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_31

    if-eqz v3, :cond_2d

    .line 2910
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_2d
    sub-int v3, v0, v1

    sub-int/2addr v3, v8

    goto :goto_41

    :cond_31
    const/16 v7, 0x30

    if-lt v6, v7, :cond_44

    const/16 v7, 0x39

    if-gt v6, v7, :cond_44

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v4, v4, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2920
    :cond_44
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_49
    if-eqz v2, :cond_4c

    neg-long v4, v4

    :cond_4c
    packed-switch v3, :pswitch_data_90

    .line 2951
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :pswitch_54
    long-to-double v0, v4

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    :goto_5a
    div-double/2addr v0, v2

    return-wide v0

    :pswitch_5c
    long-to-double v0, v4

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    goto :goto_5a

    :pswitch_63
    long-to-double v0, v4

    const-wide v2, 0x416312d000000000L    # 1.0E7

    goto :goto_5a

    :pswitch_6a
    long-to-double v0, v4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    goto :goto_5a

    :pswitch_71
    long-to-double v0, v4

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    goto :goto_5a

    :pswitch_78
    long-to-double v0, v4

    const-wide v2, 0x40c3880000000000L    # 10000.0

    goto :goto_5a

    :pswitch_7f
    long-to-double v0, v4

    const-wide v2, 0x408f400000000000L    # 1000.0

    goto :goto_5a

    :pswitch_86
    long-to-double v0, v4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_5a

    :pswitch_8a
    long-to-double v0, v4

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    goto :goto_5a

    :pswitch_8e
    long-to-double v0, v4

    return-wide v0

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_54
    .end packed-switch
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 10

    .line 2955
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2957
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_d
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v1, v0, :cond_49

    .line 2965
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_22

    if-nez v1, :cond_22

    const/4 v2, 0x1

    goto :goto_41

    :cond_22
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_31

    if-eqz v3, :cond_2d

    .line 2973
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_2d
    sub-int v3, v0, v1

    sub-int/2addr v3, v8

    goto :goto_41

    :cond_31
    const/16 v7, 0x30

    if-lt v6, v7, :cond_44

    const/16 v7, 0x39

    if-gt v6, v7, :cond_44

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v4, v4, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2983
    :cond_44
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_49
    if-eqz v2, :cond_4c

    neg-long v4, v4

    :cond_4c
    packed-switch v3, :pswitch_data_82

    .line 3014
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :pswitch_54
    long-to-float p0, v4

    const v0, 0x4e6e6b28    # 1.0E9f

    :goto_58
    div-float/2addr p0, v0

    return p0

    :pswitch_5a
    long-to-float p0, v4

    const v0, 0x4cbebc20    # 1.0E8f

    goto :goto_58

    :pswitch_5f
    long-to-float p0, v4

    const v0, 0x4b189680    # 1.0E7f

    goto :goto_58

    :pswitch_64
    long-to-float p0, v4

    const v0, 0x49742400    # 1000000.0f

    goto :goto_58

    :pswitch_69
    long-to-float p0, v4

    const v0, 0x47c35000    # 100000.0f

    goto :goto_58

    :pswitch_6e
    long-to-float p0, v4

    const v0, 0x461c4000    # 10000.0f

    goto :goto_58

    :pswitch_73
    long-to-float p0, v4

    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_58

    :pswitch_77
    long-to-float p0, v4

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_58

    :pswitch_7b
    long-to-float p0, v4

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_58

    :pswitch_7f
    long-to-float p0, v4

    return p0

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_54
    .end packed-switch
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 2

    .line 2547
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v0, :cond_5

    goto :goto_b

    .line 2550
    :cond_5
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    .line 2554
    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    const/4 p0, 0x0

    .line 2556
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    return-void
.end method

.method public static shortValue(Ljava/math/BigDecimal;)S
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 929
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 931
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValue()S

    move-result p0

    return p0

    .line 934
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValueExact()S

    move-result p0

    return p0
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    .line 1264
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1265
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 1266
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1268
    :cond_13
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    .line 1269
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1271
    :cond_21
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2438
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2440
    :try_start_5
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_12
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p0

    .line 2444
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2445
    throw p0

    .line 2444
    :catch_12
    :goto_12
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2447
    :cond_14
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2a

    .line 2448
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2449
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_2a

    .line 2450
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :cond_2a
    return-object p0
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass1 (com.alibaba.fastjson.util.TypeUtils$1)
.class final Lcom/alibaba/fastjson/util/TypeUtils$1;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/Function<",
        "Ljava/lang/Class;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Ljava/lang/Boolean;
    .registers 3

    .line 212
    const-class v0, Ljava/sql/Clob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 210
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$1;->apply(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass2 (com.alibaba.fastjson.util.TypeUtils$2)
.class final Lcom/alibaba/fastjson/util/TypeUtils$2;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 570
    :cond_4
    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_b

    .line 571
    check-cast p1, Ljava/sql/Date;

    return-object p1

    .line 573
    :cond_b
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1b

    .line 574
    new-instance v0, Ljava/sql/Date;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 576
    :cond_1b
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_2b

    .line 577
    new-instance v0, Ljava/sql/Date;

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 581
    :cond_2b
    instance-of v1, p1, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_39

    .line 582
    move-object v1, p1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_46

    .line 583
    :cond_39
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_45

    .line 584
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_46

    :cond_45
    move-wide v4, v2

    .line 587
    :goto_46
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 588
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 589
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9c

    const-string v4, "null"

    .line 590
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "NULL"

    .line 591
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_9c

    .line 594
    :cond_64
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 595
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_9d

    .line 597
    :cond_6f
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 598
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 599
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_9d

    .line 601
    :cond_88
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to Timestamp, value : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    :goto_9c
    return-object v0

    :cond_9d
    :goto_9d
    cmp-long v0, v4, v2

    if-lez v0, :cond_a7

    .line 608
    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    .line 606
    :cond_a7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to Date, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass3 (com.alibaba.fastjson.util.TypeUtils$3)
.class final Lcom/alibaba/fastjson/util/TypeUtils$3;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 629
    :cond_4
    instance-of v1, p1, Ljava/sql/Time;

    if-eqz v1, :cond_b

    .line 630
    check-cast p1, Ljava/sql/Time;

    return-object p1

    .line 632
    :cond_b
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1b

    .line 633
    new-instance v0, Ljava/sql/Time;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 635
    :cond_1b
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_2b

    .line 636
    new-instance v0, Ljava/sql/Time;

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 640
    :cond_2b
    instance-of v1, p1, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_39

    .line 641
    move-object v1, p1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_46

    .line 642
    :cond_39
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_45

    .line 643
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_46

    :cond_45
    move-wide v4, v2

    .line 646
    :goto_46
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_b2

    .line 647
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 648
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b1

    const-string v4, "null"

    .line 649
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_b1

    .line 653
    :cond_5c
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 654
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_b2

    .line 656
    :cond_67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_84

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_84

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_84

    .line 657
    invoke-static {v1}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 660
    :cond_84
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 661
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 662
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_b2

    .line 664
    :cond_9d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to Timestamp, value : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b1
    :goto_b1
    return-object v0

    :cond_b2
    :goto_b2
    cmp-long v0, v4, v2

    if-lez v0, :cond_bc

    .line 672
    new-instance p1, Ljava/sql/Time;

    invoke-direct {p1, v4, v5}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    .line 670
    :cond_bc
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not cast to Date, value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass4 (com.alibaba.fastjson.util.TypeUtils$4)
.class final Lcom/alibaba/fastjson/util/TypeUtils$4;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 685
    :cond_6
    instance-of v2, v0, Ljava/util/Calendar;

    if-eqz v2, :cond_16

    .line 686
    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 688
    :cond_16
    instance-of v2, v0, Ljava/sql/Timestamp;

    if-eqz v2, :cond_1d

    .line 689
    check-cast v0, Ljava/sql/Timestamp;

    return-object v0

    .line 691
    :cond_1d
    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_2d

    .line 692
    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 695
    :cond_2d
    instance-of v2, v0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_39

    .line 696
    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v2

    goto :goto_47

    .line 697
    :cond_39
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_45

    .line 698
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_47

    :cond_45
    const-wide/16 v2, 0x0

    .line 700
    :goto_47
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1a8

    .line 701
    check-cast v0, Ljava/lang/String;

    .line 702
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a7

    const-string v2, "null"

    .line 703
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a7

    const-string v2, "NULL"

    .line 704
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto/16 :goto_1a7

    .line 707
    :cond_65
    const-string v1, ".000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_7b

    .line 708
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    .line 709
    :cond_7b
    const-string v1, ".000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 710
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x1d

    if-ne v1, v5, :cond_170

    const/4 v1, 0x4

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_170

    .line 715
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_170

    .line 716
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_170

    const/16 v1, 0xd

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_170

    const/16 v1, 0x10

    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_170

    const/16 v1, 0x13

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_170

    .line 721
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    .line 723
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    .line 724
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 720
    invoke-static {v1, v3, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCC)I

    move-result v1

    const/4 v3, 0x5

    .line 726
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x6

    .line 727
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 725
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v3

    const/16 v4, 0x8

    .line 729
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    .line 730
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 728
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v9

    const/16 v4, 0xb

    .line 732
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 731
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v10

    const/16 v4, 0xe

    .line 735
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xf

    .line 736
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 734
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v11

    const/16 v4, 0x11

    .line 738
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x12

    .line 739
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 737
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v12

    const/16 v4, 0x14

    .line 741
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0x15

    .line 742
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v4, 0x16

    .line 743
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x17

    .line 744
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v4, 0x18

    .line 745
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v4, 0x19

    .line 746
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v4, 0x1a

    .line 747
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v4, 0x1b

    .line 748
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v4, 0x1c

    .line 749
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 740
    invoke-static/range {v13 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCCCCCCC)I

    move-result v13

    .line 750
    new-instance v6, Ljava/sql/Timestamp;

    add-int/lit16 v7, v1, -0x76c

    add-int/lit8 v8, v3, -0x1

    invoke-direct/range {v6 .. v13}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v6

    .line 753
    :cond_170
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 754
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1a8

    .line 756
    :cond_17b
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 758
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1a8

    .line 760
    :cond_193
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can not cast to Timestamp, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a7
    :goto_1a7
    return-object v1

    .line 765
    :cond_1a8
    :goto_1a8
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass5 (com.alibaba.fastjson.util.TypeUtils$5)
.class final Lcom/alibaba/fastjson/util/TypeUtils$5;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/BiFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Class;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 1074
    const-class v0, Ljava/sql/Date;

    if-ne p2, v0, :cond_9

    .line 1075
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1078
    :cond_9
    const-class v0, Ljava/sql/Time;

    if-ne p2, v0, :cond_12

    .line 1079
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1082
    :cond_12
    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_1b

    .line 1083
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1072
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils$5;->apply(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass6 (com.alibaba.fastjson.util.TypeUtils$6)
.class final Lcom/alibaba/fastjson/util/TypeUtils$6;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson/util/Function<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "*>;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1574
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$6;->apply(Ljava/util/Map;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1576
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/sql/Time;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/sql/Date;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/sql/Timestamp;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    :goto_12
    if-ge v3, v0, :cond_23

    .line 1581
    aget-object v2, v1, v3

    if-nez v2, :cond_19

    goto :goto_20

    .line 1585
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass7 (com.alibaba.fastjson.util.TypeUtils$7)
.class final Lcom/alibaba/fastjson/util/TypeUtils$7;
.super Ljava/util/HashMap;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 2671
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 2672
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v0, "Z"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v0, "C"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v0, "B"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v0, "S"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v0, "I"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v0, "J"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v0, "F"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2679
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v0, "D"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.AnonymousClass8 (com.alibaba.fastjson.util.TypeUtils$8)
.class final Lcom/alibaba/fastjson/util/TypeUtils$8;
.super Ljava/util/HashSet;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 2793
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 2794
    const-string p1, "net.sf.cglib.proxy.Factory"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    .line 2795
    const-string p1, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    .line 2796
    const-string p1, "javassist.util.proxy.ProxyObject"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    .line 2797
    const-string p1, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    .line 2798
    const-string p1, "org.hibernate.proxy.HibernateProxy"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    .line 2799
    const-string p1, "org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.alibaba.fastjson.util.TypeUtils.MethodInheritanceComparator (com.alibaba.fastjson.util.TypeUtils$MethodInheritanceComparator)
.class public Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInheritanceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3433
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .registers 5

    .line 3435
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 3440
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 3441
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    .line 3443
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    return v1

    .line 3447
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p1, -0x1

    return p1

    .line 3451
    :cond_27
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v1
.end method
