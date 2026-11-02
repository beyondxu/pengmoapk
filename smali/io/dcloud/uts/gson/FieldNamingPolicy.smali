###### Class io.dcloud.uts.gson.FieldNamingPolicy (io.dcloud.uts.gson.FieldNamingPolicy)
.class public abstract enum Lio/dcloud/uts/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lio/dcloud/uts/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/uts/gson/FieldNamingPolicy;",
        ">;",
        "Lio/dcloud/uts/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lio/dcloud/uts/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lio/dcloud/uts/gson/FieldNamingPolicy;


# direct methods
.method private static synthetic $values()[Lio/dcloud/uts/gson/FieldNamingPolicy;
    .registers 3

    const/4 v0, 0x6

    .line 33
    new-array v0, v0, [Lio/dcloud/uts/gson/FieldNamingPolicy;

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->IDENTITY:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lio/dcloud/uts/gson/FieldNamingPolicy;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->IDENTITY:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 55
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$2;

    const-string v1, "UPPER_CAMEL_CASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 74
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 92
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 115
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 138
    new-instance v0, Lio/dcloud/uts/gson/FieldNamingPolicy$6;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lio/dcloud/uts/gson/FieldNamingPolicy;

    .line 33
    invoke-static {}, Lio/dcloud/uts/gson/FieldNamingPolicy;->$values()[Lio/dcloud/uts/gson/FieldNamingPolicy;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->$VALUES:[Lio/dcloud/uts/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 151
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 152
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 157
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 166
    :goto_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_17

    if-ge v3, v0, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 168
    :cond_17
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 169
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_22

    return-object p0

    .line 173
    :cond_22
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-nez v3, :cond_3c

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/uts/gson/FieldNamingPolicy;
    .registers 2

    .line 33
    const-class v0, Lio/dcloud/uts/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/uts/gson/FieldNamingPolicy;

    return-object p0
.end method

.method public static values()[Lio/dcloud/uts/gson/FieldNamingPolicy;
    .registers 1

    .line 33
    sget-object v0, Lio/dcloud/uts/gson/FieldNamingPolicy;->$VALUES:[Lio/dcloud/uts/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lio/dcloud/uts/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/uts/gson/FieldNamingPolicy;

    return-object v0
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass1 (io.dcloud.uts.gson.FieldNamingPolicy$1)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$1;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass2 (io.dcloud.uts.gson.FieldNamingPolicy$2)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$2;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/gson/FieldNamingPolicy$2;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass3 (io.dcloud.uts.gson.FieldNamingPolicy$3)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$3;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3

    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy$3;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/gson/FieldNamingPolicy$3;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass4 (io.dcloud.uts.gson.FieldNamingPolicy$4)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$4;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    invoke-static {p1, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy$4;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass5 (io.dcloud.uts.gson.FieldNamingPolicy$5)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$5;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3

    .line 117
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-static {p1, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy$5;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.FieldNamingPolicy.AnonymousClass6 (io.dcloud.uts.gson.FieldNamingPolicy$6)
.class final enum Lio/dcloud/uts/gson/FieldNamingPolicy$6;
.super Lio/dcloud/uts/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-static {p1, v0}, Lio/dcloud/uts/gson/FieldNamingPolicy$6;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
