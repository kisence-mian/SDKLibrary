.class public Lcom/didi/virtualapk/utils/ZipVerifyUtil;
.super Ljava/lang/Object;
.source "ZipVerifyUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkZipFileForCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p0, "zipPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v3, ""

    .line 92
    .local v3, "certPath":Ljava/lang/String;
    new-instance v14, Ljava/util/zip/ZipFile;

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 97
    .local v14, "zip":Ljava/util/zip/ZipFile;
    const-string v15, "META-INF/MANIFEST.MF"

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 98
    .local v7, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/util/jar/Manifest;

    invoke-direct {v8, v7}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v8, "man":Ljava/util/jar/Manifest;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 101
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v11, "signed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_31
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_79

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 103
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/Attributes;

    invoke-virtual {v15}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4b
    :goto_4b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_31

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "attrkey":Ljava/lang/Object;
    instance-of v0, v2, Ljava/util/jar/Attributes$Name;

    move/from16 v17, v0

    if-eqz v17, :cond_4b

    check-cast v2, Ljava/util/jar/Attributes$Name;

    .line 105
    .end local v2    # "attrkey":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "-Digest"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4b

    .line 106
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 110
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :cond_79
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v4, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entry":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_82
    :goto_82
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_b6

    .line 112
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/zip/ZipEntry;

    .line 113
    .local v13, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_82

    .line 114
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "name":Ljava/lang/String;
    const-string v15, "META-INF/"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a4

    .line 116
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 117
    :cond_a4
    const-string v15, ".RSA"

    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b4

    const-string v15, ".DSA"

    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_82

    .line 118
    :cond_b4
    move-object v3, v10

    goto :goto_82

    .line 129
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "ze":Ljava/util/zip/ZipEntry;
    :cond_b6
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v12, "unsigned":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v9, "missing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V

    .line 136
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d6

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d6

    .line 139
    .end local v3    # "certPath":Ljava/lang/String;
    :goto_d5
    return-object v3

    .restart local v3    # "certPath":Ljava/lang/String;
    :cond_d6
    const/4 v3, 0x0

    goto :goto_d5
.end method

.method private static decode(Ljava/lang/String;)[B
    .registers 3
    .param p0, "base64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p0, "certificatePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 144
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "in":Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 146
    .local v0, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 147
    return-object v0
.end method

.method public static getCertificateFromZip(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 7
    .param p0, "zipPath"    # Ljava/lang/String;
    .param p1, "certPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 82
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 83
    .local v3, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 84
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 85
    .local v0, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 87
    return-object v0
.end method

.method public static verifyZip(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "test.cer"

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/ZipVerifyUtil;->verifyZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verifyZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "cerName"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 58
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 59
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 60
    .local v0, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-static {p1, v0}, Lcom/didi/virtualapk/utils/ZipVerifyUtil;->verifyZip(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_22
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v4

    .line 64
    .end local v0    # "certificate":Ljava/security/cert/Certificate;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_19
    return v4

    .line 62
    :catch_1a
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    :goto_1b
    const-string v4, "VA"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v4, 0x0

    goto :goto_19

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_22
    move-exception v2

    goto :goto_1b
.end method

.method public static verifyZip(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .registers 6
    .param p0, "zipPath"    # Ljava/lang/String;
    .param p1, "remoteCertificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/didi/virtualapk/utils/ZipVerifyUtil;->checkZipFileForCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "certPath":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/ZipVerifyUtil;->getCertificateFromZip(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 72
    .local v1, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 73
    const/4 v3, 0x1

    .line 76
    .end local v0    # "certPath":Ljava/lang/String;
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    :goto_10
    return v3

    .line 74
    :catch_11
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VA"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v3, 0x0

    goto :goto_10
.end method
