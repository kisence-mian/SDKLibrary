.class public Lcom/facebook/internal/FacebookSignatureValidator;
.super Ljava/lang/Object;
.source "FacebookSignatureValidator.java"


# static fields
.field private static final FBF_HASH:Ljava/lang/String; = "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL2_HASH:Ljava/lang/String; = "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

.field private static final FBL_HASH:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final FBR2_HASH:Ljava/lang/String; = "cc2751449a350f668590264ed76692694a80308a"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final MSR_HASH:Ljava/lang/String; = "9b8f518b086098de3d77736f9458a3d2f6f95a37"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Lcom/facebook/internal/FacebookSignatureValidator;->buildAppSignatureHashes()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookSignatureValidator;->validAppSignatureHashes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppSignatureHashes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "cc2751449a350f668590264ed76692694a80308a"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "9b8f518b086098de3d77736f9458a3d2f6f95a37"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0
.end method

.method public static validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 63
    .local v0, "brand":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 64
    .local v1, "applicationFlags":I
    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_16

    .line 67
    return v3

    .line 72
    :cond_16
    const/4 v2, 0x0

    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_21} :catch_4a

    .line 77
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 80
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_49

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-gtz v5, :cond_2c

    goto :goto_49

    .line 84
    :cond_2c
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_48

    aget-object v8, v5, v7

    .line 85
    .local v8, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "hashedSignature":Ljava/lang/String;
    sget-object v10, Lcom/facebook/internal/FacebookSignatureValidator;->validAppSignatureHashes:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_45

    .line 87
    return v2

    .line 84
    .end local v8    # "signature":Landroid/content/pm/Signature;
    .end local v9    # "hashedSignature":Ljava/lang/String;
    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 91
    :cond_48
    return v3

    .line 81
    :cond_49
    :goto_49
    return v2

    .line 75
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_4a
    move-exception v3

    .line 76
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method
