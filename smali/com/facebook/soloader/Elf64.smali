###### Class com.facebook.soloader.Elf64 (com.facebook.soloader.Elf64)
.class final Lcom/facebook/soloader/Elf64;
.super Ljava/lang/Object;
.source "Elf64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/Elf64$Shdr;,
        Lcom/facebook/soloader/Elf64$Phdr;,
        Lcom/facebook/soloader/Elf64$Ehdr;,
        Lcom/facebook/soloader/Elf64$Dyn;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.soloader.Elf64.Dyn (com.facebook.soloader.Elf64$Dyn)
.class Lcom/facebook/soloader/Elf64$Dyn;
.super Ljava/lang/Object;
.source "Elf64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/Elf64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dyn"
.end annotation


# static fields
.field public static final D_TAG:I = 0x0

.field public static final D_UN:I = 0x8


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.soloader.Elf64.Ehdr (com.facebook.soloader.Elf64$Ehdr)
.class Lcom/facebook/soloader/Elf64$Ehdr;
.super Ljava/lang/Object;
.source "Elf64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/Elf64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ehdr"
.end annotation


# static fields
.field public static final E_EHSIZE:I = 0x34

.field public static final E_ENTRY:I = 0x18

.field public static final E_FLAGS:I = 0x30

.field public static final E_IDENT:I = 0x0

.field public static final E_MACHINE:I = 0x12

.field public static final E_PHENTSIZE:I = 0x36

.field public static final E_PHNUM:I = 0x38

.field public static final E_PHOFF:I = 0x20

.field public static final E_SHENTSIZE:I = 0x3a

.field public static final E_SHNUM:I = 0x3c

.field public static final E_SHOFF:I = 0x28

.field public static final E_SHSTRNDX:I = 0x3e

.field public static final E_TYPE:I = 0x10

.field public static final E_VERSION:I = 0x14


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.soloader.Elf64.Phdr (com.facebook.soloader.Elf64$Phdr)
.class Lcom/facebook/soloader/Elf64$Phdr;
.super Ljava/lang/Object;
.source "Elf64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/Elf64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Phdr"
.end annotation


# static fields
.field public static final P_ALIGN:I = 0x30

.field public static final P_FILESZ:I = 0x20

.field public static final P_FLAGS:I = 0x4

.field public static final P_MEMSZ:I = 0x28

.field public static final P_OFFSET:I = 0x8

.field public static final P_PADDR:I = 0x18

.field public static final P_TYPE:I = 0x0

.field public static final P_VADDR:I = 0x10


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.soloader.Elf64.Shdr (com.facebook.soloader.Elf64$Shdr)
.class Lcom/facebook/soloader/Elf64$Shdr;
.super Ljava/lang/Object;
.source "Elf64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/Elf64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shdr"
.end annotation


# static fields
.field public static final SH_ADDR:I = 0x10

.field public static final SH_ADDRALIGN:I = 0x30

.field public static final SH_ENTSIZE:I = 0x38

.field public static final SH_FLAGS:I = 0x8

.field public static final SH_INFO:I = 0x2c

.field public static final SH_LINK:I = 0x28

.field public static final SH_NAME:I = 0x0

.field public static final SH_OFFSET:I = 0x18

.field public static final SH_SIZE:I = 0x20

.field public static final SH_TYPE:I = 0x4


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
