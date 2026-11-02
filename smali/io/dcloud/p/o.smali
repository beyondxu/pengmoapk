###### Class io.dcloud.p.o (io.dcloud.p.o)
.class abstract Lio/dcloud/p/o;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/o$c;,
        Lio/dcloud/p/o$a;,
        Lio/dcloud/p/o$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/dcloud/p/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Lio/dcloud/p/o$c;)Lio/dcloud/p/o$a;
    .registers 3

    .line 46
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lio/dcloud/p/o;->a(Ljava/lang/String;Lio/dcloud/p/o$c;Ljava/lang/String;)Lio/dcloud/p/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lio/dcloud/p/o$c;Ljava/lang/String;)Lio/dcloud/p/o$a;
    .registers 3

    .line 47
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lio/dcloud/p/o;->a([BLio/dcloud/p/o$c;)Lio/dcloud/p/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLio/dcloud/p/o$c;)Lio/dcloud/p/o$a;
    .registers 6

    .line 48
    invoke-static {}, Lio/dcloud/p/o;->b()[B

    move-result-object v0

    .line 49
    invoke-static {}, Lio/dcloud/common/util/AESUtil;->getDefaultTransformation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/dcloud/p/o$c;->a()Ljava/security/Key;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 56
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 57
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Lio/dcloud/p/o$a;->a([B[B)[B

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lio/dcloud/p/o$c;->b()Ljava/security/Key;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/p/o;->a([BLjava/security/Key;)[B

    move-result-object p1

    .line 61
    new-instance v1, Lio/dcloud/p/o$a;

    invoke-direct {v1, p0, v0, p1}, Lio/dcloud/p/o$a;-><init>([B[B[B)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/p/o$c;
    .registers 7

    .line 1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    const/4 v0, 0x0

    .line 7
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 8
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_41

    const/4 v3, 0x1

    .line 11
    aget-object p0, p0, v3

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 12
    array-length v1, p0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_39

    .line 16
    new-instance v1, Lio/dcloud/p/o$c;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    array-length v4, v2

    const-string v5, "AES"

    invoke-direct {v3, v2, v0, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 18
    invoke-static {}, Lio/dcloud/p/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lio/dcloud/p/o$c;-><init>(Ljava/security/Key;Ljava/security/Key;)V

    return-object v1

    .line 19
    :cond_39
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Base64 decoded key is not 256 bytes"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_41
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Base64 decoded key is not 128 bytes"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot parse aesKey:hmacKey"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;[BI)Lio/dcloud/p/o$c;
    .registers 5

    .line 22
    invoke-static {}, Lio/dcloud/p/o;->a()V

    .line 24
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v1, 0x180

    invoke-direct {v0, p0, p1, p2, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 27
    const-string p0, "PBKDF2WithHmacSHA1"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0x10

    .line 31
    invoke-static {p0, p1, p2}, Lio/dcloud/p/o;->a([BII)[B

    move-result-object p1

    const/16 v0, 0x30

    .line 32
    invoke-static {p0, p2, v0}, Lio/dcloud/p/o;->a([BII)[B

    move-result-object p0

    .line 36
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lio/dcloud/p/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    new-instance p0, Lio/dcloud/p/o$c;

    invoke-direct {p0, p2, p1}, Lio/dcloud/p/o$c;-><init>(Ljava/security/Key;Ljava/security/Key;)V

    return-object p0
.end method

.method public static a(Lio/dcloud/p/o$a;Lio/dcloud/p/o$c;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/p/o;->a(Lio/dcloud/p/o$a;Lio/dcloud/p/o$c;)[B

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a()V
    .registers 3

    .line 62
    sget-object v0, Lio/dcloud/p/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 63
    const-class v1, Lio/dcloud/p/o$b;

    monitor-enter v1

    .line 64
    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_18

    .line 65
    invoke-static {}, Lio/dcloud/p/o$b;->a()V

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    return-void
.end method

.method public static a([B[B)Z
    .registers 7

    .line 84
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_14

    .line 89
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    if-nez v1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v2
.end method

.method private static a(I)[B
    .registers 2

    .line 42
    invoke-static {}, Lio/dcloud/p/o;->a()V

    .line 43
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 44
    new-array p0, p0, [B

    .line 45
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static a(Lio/dcloud/p/o$a;Lio/dcloud/p/o$c;)[B
    .registers 5

    .line 70
    invoke-virtual {p0}, Lio/dcloud/p/o$a;->b()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/p/o$a;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/p/o$a;->a([B[B)[B

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lio/dcloud/p/o$c;->b()Ljava/security/Key;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/p/o;->a([BLjava/security/Key;)[B

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lio/dcloud/p/o$a;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/p/o;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 73
    invoke-static {}, Lio/dcloud/common/util/AESUtil;->getDefaultTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lio/dcloud/p/o$c;->a()Ljava/security/Key;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 75
    invoke-virtual {p0}, Lio/dcloud/p/o$a;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    .line 76
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {p0}, Lio/dcloud/p/o$a;->a()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 80
    :cond_40
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "MAC stored in civ does not match computed MAC."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([BII)[B
    .registers 5

    sub-int/2addr p2, p1

    .line 90
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a([BLjava/security/Key;)[B
    .registers 3

    .line 81
    invoke-static {}, Lio/dcloud/p/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 83
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/dcloud/p/o$a;Lio/dcloud/p/o$c;)Ljava/lang/String;
    .registers 3

    .line 2
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lio/dcloud/p/o;->a(Lio/dcloud/p/o$a;Lio/dcloud/p/o$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()[B
    .registers 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lio/dcloud/p/o;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static c()Lio/dcloud/p/o$c;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/p/o;->a()V

    .line 2
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 5
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 6
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/16 v1, 0x20

    .line 9
    invoke-static {v1}, Lio/dcloud/p/o;->a(I)[B

    move-result-object v1

    .line 10
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lio/dcloud/p/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    new-instance v1, Lio/dcloud/p/o$c;

    invoke-direct {v1, v0, v2}, Lio/dcloud/p/o$c;-><init>(Ljava/security/Key;Ljava/security/Key;)V

    return-object v1
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "##U1d4Z1lsSkpRRE0wTnc9PSo2YTNkODhmYS00YmEwLTQ3OWYtOTQyMi1lNWFhYmUxNTg5N2I2NQ=="

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lio/dcloud/common/util/Base64;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.p.o.a (io.dcloud.p.o$a)
.class public Lio/dcloud/p/o$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    const/4 v0, 0x0

    .line 13
    aget-object v0, p1, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/o$a;->b:[B

    const/4 v0, 0x1

    .line 14
    aget-object v0, p1, v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/o$a;->c:[B

    .line 15
    aget-object p1, p1, v1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/o$a;->a:[B

    return-void

    .line 16
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot parse iv:ciphertext:mac"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B[B)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/dcloud/p/o$a;->a:[B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lio/dcloud/p/o$a;->b:[B

    .line 5
    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p1, p3

    new-array p1, p1, [B

    iput-object p1, p0, Lio/dcloud/p/o$a;->c:[B

    .line 7
    array-length p2, p3

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([B[B)[B
    .registers 5

    .line 2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$a;->a:[B

    return-object v0
.end method

.method public b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$a;->b:[B

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$a;->c:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 3
    :cond_13
    check-cast p1, Lio/dcloud/p/o$a;

    .line 4
    iget-object v2, p0, Lio/dcloud/p/o$a;->a:[B

    iget-object v3, p1, Lio/dcloud/p/o$a;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 6
    :cond_20
    iget-object v2, p0, Lio/dcloud/p/o$a;->b:[B

    iget-object v3, p1, Lio/dcloud/p/o$a;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 8
    :cond_2b
    iget-object v2, p0, Lio/dcloud/p/o$a;->c:[B

    iget-object p1, p1, Lio/dcloud/p/o$a;->c:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_36

    return v1

    :cond_36
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$a;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/dcloud/p/o$a;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/dcloud/p/o$a;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$a;->b:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lio/dcloud/p/o$a;->a:[B

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lio/dcloud/p/o$a;->c:[B

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.p.o.b (io.dcloud.p.o$b)
.class public abstract Lio/dcloud/p/o$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/o$b$b;,
        Lio/dcloud/p/o$b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/p/o$b;->d()[B

    move-result-object v0

    sput-object v0, Lio/dcloud/p/o$b;->a:[B

    return-void
.end method

.method public static a()V
    .registers 0

    .line 1
    invoke-static {}, Lio/dcloud/p/o$b;->b()V

    .line 2
    invoke-static {}, Lio/dcloud/p/o$b;->f()V

    return-void
.end method

.method private static b()V
    .registers 0

    return-void
.end method

.method private static c()[B
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    sget-object v2, Lio/dcloud/p/o$b;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d()[B
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_c
    invoke-static {}, Lio/dcloud/p/o$b;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    return-object v0

    .line 13
    :catch_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static f()V
    .registers 0

    return-void
.end method

###### Class io.dcloud.p.o.b.a (io.dcloud.p.o$b$a)
.class public abstract Lio/dcloud/p/o$b$a;
.super Ljava/security/SecureRandomSpi;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

###### Class io.dcloud.p.o.b.C0071b (io.dcloud.p.o$b$b)
.class Lio/dcloud/p/o$b$b;
.super Ljava/security/Provider;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    const-string v2, "A Linux-specific random number provider that uses /dev/urandom"

    const-string v3, "LinuxPRNG"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 7
    const-class v0, Lio/dcloud/p/o$b$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureRandom.SHA1PRNG"

    invoke-virtual {p0, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.p.o.c (io.dcloud.p.o$c)
.class public Lio/dcloud/p/o$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/security/Key;

.field private b:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/security/Key;Ljava/security/Key;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/o$c;->a(Ljava/security/Key;)V

    .line 3
    invoke-virtual {p0, p2}, Lio/dcloud/p/o$c;->b(Ljava/security/Key;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Key;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$c;->a:Ljava/security/Key;

    return-object v0
.end method

.method public a(Ljava/security/Key;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/o$c;->a:Ljava/security/Key;

    return-void
.end method

.method public b()Ljava/security/Key;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$c;->b:Ljava/security/Key;

    return-object v0
.end method

.method public b(Ljava/security/Key;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/o$c;->b:Ljava/security/Key;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 3
    :cond_13
    check-cast p1, Lio/dcloud/p/o$c;

    .line 4
    iget-object v2, p0, Lio/dcloud/p/o$c;->b:Ljava/security/Key;

    iget-object v3, p1, Lio/dcloud/p/o$c;->b:Ljava/security/Key;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 6
    :cond_20
    iget-object v2, p0, Lio/dcloud/p/o$c;->a:Ljava/security/Key;

    iget-object p1, p1, Lio/dcloud/p/o$c;->a:Ljava/security/Key;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v1

    :cond_2b
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o$c;->a:Ljava/security/Key;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/dcloud/p/o$c;->b:Ljava/security/Key;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/o$c;->a()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/o$c;->b()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
