###### Class com.hjq.permissions.PhoneRomUtils (com.hjq.permissions.PhoneRomUtils)
.class final Lcom/hjq/permissions/PhoneRomUtils;
.super Ljava/lang/Object;
.source "PhoneRomUtils.java"


# static fields
.field private static final ROM_360:[Ljava/lang/String;

.field private static final ROM_HONOR:[Ljava/lang/String;

.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final ROM_LEECO:[Ljava/lang/String;

.field private static final ROM_NAME_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final ROM_NUBIA:[Ljava/lang/String;

.field private static final ROM_ONEPLUS:[Ljava/lang/String;

.field private static final ROM_OPPO:[Ljava/lang/String;

.field private static final ROM_SAMSUNG:[Ljava/lang/String;

.field private static final ROM_VIVO:[Ljava/lang/String;

.field private static final ROM_XIAOMI:[Ljava/lang/String;

.field private static final ROM_ZTE:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_360:Ljava/lang/String; = "ro.build.uiversion"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final VERSION_PROPERTY_LEECO:Ljava/lang/String; = "ro.letv.release.version"

.field private static final VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_NUBIA:Ljava/lang/String; = "ro.build.rom.id"

.field private static final VERSION_PROPERTY_ONEPLUS:Ljava/lang/String; = "ro.rom.version"

.field private static final VERSION_PROPERTY_OPPO:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_VIVO:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final VERSION_PROPERTY_XIAOMI:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final VERSION_PROPERTY_ZTE:Ljava/lang/String; = "ro.build.MiFavor_version"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const-string v0, "huawei"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "vivo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_VIVO:[Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "xiaomi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    .line 29
    const-string v0, "oppo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_OPPO:[Ljava/lang/String;

    .line 30
    const-string v0, "leeco"

    const-string v1, "letv"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_LEECO:[Ljava/lang/String;

    .line 31
    const-string v0, "360"

    const-string v1, "qiku"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_360:[Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "zte"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ZTE:[Ljava/lang/String;

    .line 33
    const-string v0, "oneplus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    .line 34
    const-string v0, "nubia"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    .line 35
    const-string v0, "samsung"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    .line 36
    const-string v0, "honor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    .line 43
    const-string v0, "ro.build.version.opporom"

    const-string v1, "ro.build.version.oplusrom.display"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    .line 54
    const-string v0, "msc.config.magic.version"

    const-string v1, "ro.build.version.magic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBrand()Ljava/lang/String;
    .registers 1

    .line 243
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 1

    .line 247
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 253
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method static getRomVersionName()Ljava/lang/String;
    .registers 6

    .line 171
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_34

    .line 174
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_25

    .line 177
    aget-object v0, v1, v4

    return-object v0

    .line 180
    :cond_25
    const-string v1, "EmotionUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 181
    const-string v1, "EmotionUI\\s*"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_33
    return-object v0

    .line 186
    :cond_34
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_VIVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 188
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_43
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 191
    const-string v0, "ro.build.version.incremental"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_52
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_OPPO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_71

    .line 194
    sget-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    array-length v1, v0

    :goto_5e
    if-ge v4, v1, :cond_70

    aget-object v2, v0, v4

    .line 195
    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_6f
    return-object v5

    :cond_70
    return-object v3

    .line 203
    :cond_71
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_LEECO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 204
    const-string v0, "ro.letv.release.version"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_80
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_360:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 208
    const-string v0, "ro.build.uiversion"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_8f
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ZTE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 211
    const-string v0, "ro.build.MiFavor_version"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_9e
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 214
    const-string v0, "ro.rom.version"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_ad
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 217
    const-string v0, "ro.build.rom.id"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_bc
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 220
    sget-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

    array-length v1, v0

    :goto_c7
    if-ge v4, v1, :cond_d9

    aget-object v2, v0, v4

    .line 221
    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    :cond_d8
    return-object v5

    :cond_d9
    return-object v3

    .line 230
    :cond_da
    invoke-static {v3}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 259
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 263
    :cond_b
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_21

    .line 267
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_21

    .line 268
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 316
    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 317
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 318
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_25} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_25} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_25} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_39

    :catch_2b
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_39

    :catch_30
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_39

    :catch_35
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_39
    return-object v0
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "getprop "

    const/4 v1, 0x0

    .line 276
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 277
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_27} :catch_42
    .catchall {:try_start_3 .. :try_end_27} :catchall_40

    .line 278
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_3d
    .catchall {:try_start_27 .. :try_end_2b} :catchall_3a

    if-eqz p0, :cond_36

    .line 287
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p0

    .line 287
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4c

    goto :goto_50

    :catchall_3a
    move-exception p0

    move-object v1, v0

    goto :goto_53

    :catch_3d
    move-exception p0

    move-object v1, v0

    goto :goto_43

    :catchall_40
    move-exception p0

    goto :goto_53

    :catch_42
    move-exception p0

    .line 283
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    if-eqz v1, :cond_50

    .line 287
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :cond_50
    :goto_50
    const-string p0, ""

    return-object p0

    :goto_53
    if-eqz v1, :cond_5d

    .line 287
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    :cond_5d
    :goto_5d
    throw p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 298
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 299
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 300
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 302
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 303
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_1e} :catch_24
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    :catch_24
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_28
    return-object v0
.end method

.method static isColorOs()Z
    .registers 5

    .line 76
    sget-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 77
    invoke-static {v4}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    return v2
.end method

.method static isEmui()Z
    .registers 1

    .line 62
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isHarmonyOs()Z
    .registers 4

    .line 120
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 124
    :cond_8
    :try_start_8
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    const-string v2, "getOsBrand"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    const-string v2, "Harmony"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method static isMagicOs()Z
    .registers 3

    .line 137
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isMiui()Z
    .registers 1

    .line 69
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isMiuiOptimization()Z
    .registers 8

    const/4 v0, 0x1

    .line 149
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 150
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 151
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ro.miui.cts"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v4, "getBoolean"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 153
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "persist.sys.miui_optimization"

    aput-object v5, v3, v6

    aput-object v2, v3, v0

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_58} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_58} :catch_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_58} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_58} :catch_59

    return v0

    :catch_59
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6c

    :catch_5e
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_6c

    :catch_63
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6c

    :catch_68
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_6c
    return v0
.end method

.method static isOneUi()Z
    .registers 3

    .line 98
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isOriginOs()Z
    .registers 1

    .line 90
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 234
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_19

    aget-object v3, p2, v2

    .line 235
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method
