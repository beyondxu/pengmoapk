###### Class io.dcloud.uts.gson.internal.sql.SqlTypesSupport (io.dcloud.uts.gson.internal.sql.SqlTypesSupport)
.class public final Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;
.super Ljava/lang/Object;
.source "SqlTypesSupport.java"


# static fields
.field public static final DATE_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

.field public static final SUPPORTS_SQL_TYPES:Z

.field public static final TIMESTAMP_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

.field public static final TIME_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 45
    :goto_8
    sput-boolean v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    if-eqz v0, :cond_2b

    .line 48
    new-instance v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$1;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1}, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 53
    new-instance v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$2;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1}, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$2;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 59
    sget-object v0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    .line 60
    sget-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTimeTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    .line 61
    sget-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    goto :goto_36

    :cond_2b
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 64
    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 66
    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    .line 67
    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    .line 68
    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    :goto_36
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.sql.SqlTypesSupport.AnonymousClass1 (io.dcloud.uts.gson.internal.sql.SqlTypesSupport$1)
.class Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$1;
.super Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;
.source "SqlTypesSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected deserialize(Ljava/util/Date;)Ljava/sql/Date;
    .registers 5

    .line 50
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method protected bridge synthetic deserialize(Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$1;->deserialize(Ljava/util/Date;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.sql.SqlTypesSupport.AnonymousClass2 (io.dcloud.uts.gson.internal.sql.SqlTypesSupport$2)
.class Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$2;
.super Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;
.source "SqlTypesSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/bind/DefaultDateTypeAdapter$DateType;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected deserialize(Ljava/util/Date;)Ljava/sql/Timestamp;
    .registers 5

    .line 55
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method protected bridge synthetic deserialize(Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/sql/SqlTypesSupport$2;->deserialize(Ljava/util/Date;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method
