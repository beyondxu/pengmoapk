###### Class io.dcloud.p.q1 (io.dcloud.p.q1)
.class public Lio/dcloud/p/q1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/q1$a;,
        Lio/dcloud/p/q1$b;
    }
.end annotation


# static fields
.field private static c:Lio/dcloud/p/q1;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "UNIAPP_HostPicker_0817"

    iput-object v0, p0, Lio/dcloud/p/q1;->a:Ljava/lang/String;

    .line 6
    const-string v0, "SP_LAST_SUIT_HOST_NAME_0817"

    iput-object v0, p0, Lio/dcloud/p/q1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lio/dcloud/p/q1;
    .registers 2

    .line 39
    sget-object v0, Lio/dcloud/p/q1;->c:Lio/dcloud/p/q1;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lio/dcloud/p/q1;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lio/dcloud/p/q1;->c:Lio/dcloud/p/q1;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lio/dcloud/p/q1;

    invoke-direct {v1}, Lio/dcloud/p/q1;-><init>()V

    sput-object v1, Lio/dcloud/p/q1;->c:Lio/dcloud/p/q1;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/p/q1;->c:Lio/dcloud/p/q1;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2
    const-string v0, "UNIAPP_HostPicker_0817"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    const-string v0, ""

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/p/q1$a;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/p/q1$a;->b()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 14
    iget-object v2, v1, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 16
    sget-object v2, Lio/dcloud/p/q1$a$a;->c:Lio/dcloud/p/q1$a$a;

    iput-object v2, v1, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    goto :goto_1f

    .line 19
    :cond_44
    sget-object v2, Lio/dcloud/p/q1$a$a;->b:Lio/dcloud/p/q1$a$a;

    iput-object v2, v1, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    goto :goto_1f

    .line 20
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error format host"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_51
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/p/q1$b;)V
    .registers 7

    if-eqz p2, :cond_54

    .line 46
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/q1;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/q1$a;

    .line 60
    invoke-interface {p4, v0}, Lio/dcloud/p/q1$b;->b(Lio/dcloud/p/q1$a;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 63
    iget-object p2, v0, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    sget-object v1, Lio/dcloud/p/q1$a$a;->d:Lio/dcloud/p/q1$a$a;

    if-eq p2, v1, :cond_4c

    .line 65
    const-string p2, "UNIAPP_HostPicker_0817"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, v0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    .line 69
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :cond_4c
    invoke-interface {p4, v0}, Lio/dcloud/p/q1$b;->a(Lio/dcloud/p/q1$a;)V

    return-void

    .line 80
    :cond_50
    invoke-interface {p4}, Lio/dcloud/p/q1$b;->onNoOnePicked()V

    return-void

    .line 81
    :cond_54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "call initHosts first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.p.q1.a (io.dcloud.p.q1$a)
.class public Lio/dcloud/p/q1$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/q1$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lio/dcloud/p/q1$a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/dcloud/p/q1$a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/p/q1$a$a;->b:Lio/dcloud/p/q1$a$a;

    .line 49
    iput-object p1, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/q1$a;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_4
    iget-object p1, p1, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    .line 14
    iget-object v0, p0, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    .line 15
    iget p1, p1, Lio/dcloud/p/q1$a$a;->a:I

    iget v0, v0, Lio/dcloud/p/q1$a$a;->a:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a()Ljava/lang/String;
    .registers 6

    const-string v0, "UTF-8"

    .line 1
    iget-object v1, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_d

    return-object v2

    .line 6
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_1d} :catch_1f

    move-object v2, v1

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_23
    invoke-static {v2}, Lio/dcloud/p/s4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method protected clone()Lio/dcloud/p/q1$a;
    .registers 4

    .line 2
    new-instance v0, Lio/dcloud/p/q1$a;

    iget-object v1, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    invoke-direct {v0, v1, v2}, Lio/dcloud/p/q1$a;-><init>(Ljava/lang/String;Lio/dcloud/p/q1$a$a;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/q1$a;->clone()Lio/dcloud/p/q1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/dcloud/p/q1$a;

    invoke-virtual {p0, p1}, Lio/dcloud/p/q1$a;->a(Lio/dcloud/p/q1$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lio/dcloud/p/q1$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    check-cast p1, Lio/dcloud/p/q1$a;

    .line 5
    iget-object v0, p1, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 8
    :cond_11
    iget-object p1, p1, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host{hostUrl=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/p/q1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/q1$a;->b:Lio/dcloud/p/q1$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.p.q1.a.EnumC0072a (io.dcloud.p.q1$a$a)
.class public final enum Lio/dcloud/p/q1$a$a;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/q1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lio/dcloud/p/q1$a$a;

.field public static final enum c:Lio/dcloud/p/q1$a$a;

.field public static final enum d:Lio/dcloud/p/q1$a$a;

.field private static final synthetic e:[Lio/dcloud/p/q1$a$a;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/p/q1$a$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/dcloud/p/q1$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/p/q1$a$a;->b:Lio/dcloud/p/q1$a$a;

    .line 5
    new-instance v0, Lio/dcloud/p/q1$a$a;

    const-string v1, "FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/dcloud/p/q1$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/p/q1$a$a;->c:Lio/dcloud/p/q1$a$a;

    .line 9
    new-instance v0, Lio/dcloud/p/q1$a$a;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "BACKUP"

    invoke-direct {v0, v3, v1, v2}, Lio/dcloud/p/q1$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/p/q1$a$a;->d:Lio/dcloud/p/q1$a$a;

    .line 10
    invoke-static {}, Lio/dcloud/p/q1$a$a;->a()[Lio/dcloud/p/q1$a$a;

    move-result-object v0

    sput-object v0, Lio/dcloud/p/q1$a$a;->e:[Lio/dcloud/p/q1$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/dcloud/p/q1$a$a;->a:I

    return-void
.end method

.method private static synthetic a()[Lio/dcloud/p/q1$a$a;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lio/dcloud/p/q1$a$a;

    sget-object v1, Lio/dcloud/p/q1$a$a;->b:Lio/dcloud/p/q1$a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/p/q1$a$a;->c:Lio/dcloud/p/q1$a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/p/q1$a$a;->d:Lio/dcloud/p/q1$a$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/p/q1$a$a;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/p/q1$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/p/q1$a$a;

    return-object p0
.end method

.method public static values()[Lio/dcloud/p/q1$a$a;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/p/q1$a$a;->e:[Lio/dcloud/p/q1$a$a;

    invoke-virtual {v0}, [Lio/dcloud/p/q1$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/p/q1$a$a;

    return-object v0
.end method

###### Class io.dcloud.p.q1.b (io.dcloud.p.q1$b)
.class public interface abstract Lio/dcloud/p/q1$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lio/dcloud/p/q1$a;)V
.end method

.method public abstract b(Lio/dcloud/p/q1$a;)Z
.end method

.method public abstract onNoOnePicked()V
.end method
