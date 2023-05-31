.class public Lcom/tencent/turingfd/sdk/ams/ad/short;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Fb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static Gb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/short;->Fb:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/short;->Gb:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "18C867F0717AA67B2AB7347505BA07ED"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/short;->Fb:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->va:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "31223B0BDF1DEF1FE8252971ADA3B577"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "CCD4AD38DC6669F875BC37E3F8840648"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "AA3978F41FD96FF9914A669E186474C7"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "775E696D09856872FDD8AB4F3F06B1E0"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "A6B745BF24A2C277527716F6F36EB68D"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "A01EECAB85E9E3BA2B0F6A158C855C29"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/short;->Fb:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->wa:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/short;->Gb:Ljava/util/Map;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->va:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x19a9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/short;->Gb:Ljava/util/Map;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->wa:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x19ada

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/turingfd/sdk/ams/ad/public;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v2

    .line 19
    :goto_10
    return-object v0

    .line 3
    :cond_11
    const-string v1, ""

    const/4 v4, 0x0

    .line 4
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 7
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 8
    aget-object v3, v3, v6

    const/16 v6, 0x40

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 10
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_3e} :catch_a0
    .catchall {:try_start_14 .. :try_end_3e} :catchall_98

    const-string v0, "X.509"

    .line 11
    :try_start_40
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 12
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c([B)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_51} :catch_8f
    .catchall {:try_start_40 .. :try_end_51} :catchall_a9

    move-result-object v0

    .line 13
    :try_start_52
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_a3

    .line 16
    :goto_55
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/catch;->nb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_10

    .line 13
    :catch_8f
    move-exception v0

    move-object v0, v3

    .line 14
    :goto_91
    if-eqz v0, :cond_96

    .line 15
    :try_start_93
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_a7

    :cond_96
    :goto_96
    move-object v0, v1

    goto :goto_55

    .line 13
    :catchall_98
    move-exception v0

    move-object v3, v4

    :goto_9a
    if-eqz v3, :cond_9f

    :try_start_9c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_a5

    .line 14
    :cond_9f
    :goto_9f
    throw v0

    :catch_a0
    move-exception v0

    move-object v0, v4

    goto :goto_91

    .line 13
    :catch_a3
    move-exception v1

    goto :goto_55

    :catch_a5
    move-exception v1

    goto :goto_9f

    :catch_a7
    move-exception v0

    goto :goto_96

    :catchall_a9
    move-exception v0

    goto :goto_9a
.end method
