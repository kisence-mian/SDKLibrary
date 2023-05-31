.class public Lcom/ss/android/socialbase/appdownloader/e/a/e;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# direct methods
.method public static a(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 11
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    .line 21
    :try_start_3
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 22
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    move-object v0, v1

    .line 24
    :cond_d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 25
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_d

    .line 30
    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 37
    :cond_2b
    if-eqz v0, :cond_39

    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 38
    :cond_39
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a/c;

    const-string v1, "\u6ca1\u6709\u627e\u5230AndroidManifest.xml entry"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_41} :catch_41

    .line 90
    :catch_41
    move-exception v0

    .line 91
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_67
    :try_start_67
    new-instance v4, Lcom/ss/android/socialbase/appdownloader/e/a/a;

    invoke-direct {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/a;-><init>()V

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a(Ljava/io/InputStream;)V

    .line 44
    :cond_73
    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b()I

    move-result v0

    .line 45
    const/4 v2, 0x1

    if-ne v0, v2, :cond_82

    .line 46
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a/c;

    const-string v1, "\u5df2\u8fbe\u5230END_DOCUMENT"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_82
    const/4 v2, 0x2

    if-ne v0, v2, :cond_73

    .line 57
    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e()I

    move-result v5

    .line 58
    const/4 v0, 0x0

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_8d
    if-eq v3, v5, :cond_c4

    .line 59
    const-string v8, "versionName"

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 61
    invoke-static {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/e;->a(Lcom/ss/android/socialbase/appdownloader/e/a/a;I)Ljava/lang/String;

    move-result-object v2

    .line 58
    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 63
    :cond_a2
    const-string v8, "versionCode"

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 65
    invoke-static {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/e;->a(Lcom/ss/android/socialbase/appdownloader/e/a/a;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9f

    .line 67
    :cond_b3
    const-string v8, "package"

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 69
    invoke-static {v4, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/e;->a(Lcom/ss/android/socialbase/appdownloader/e/a/a;I)Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_c2} :catch_41

    move-result-object v0

    goto :goto_9f

    .line 75
    :cond_c4
    :try_start_c4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c7
    .catch Lcom/ss/android/socialbase/appdownloader/e/a/c; {:try_start_c4 .. :try_end_c7} :catch_e5
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_41

    move-result-wide v4

    .line 79
    :goto_c8
    cmp-long v3, v4, v6

    if-nez v3, :cond_e8

    .line 80
    :try_start_cc
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionCode\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catch_e5
    move-exception v3

    move-wide v4, v6

    goto :goto_c8

    .line 83
    :cond_e8
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 84
    iput-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 85
    long-to-int v2, v4

    iput v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 86
    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_f4} :catch_41

    .line 88
    return-object v1
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    ushr-int/lit8 v0, p0, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 97
    const-string v0, "android:"

    .line 100
    :goto_7
    return-object v0

    :cond_8
    const-string v0, ""

    goto :goto_7
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/e/a/a;I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 104
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b(I)I

    move-result v0

    .line 105
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c(I)I

    move-result v1

    .line 107
    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    .line 108
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_12
    return-object v0

    .line 111
    :cond_13
    if-ne v0, v3, :cond_2a

    .line 112
    const-string v0, "?%s%08X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/e;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 115
    :cond_2a
    const/16 v2, 0x10

    if-lt v0, v2, :cond_37

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_37

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 119
    :cond_37
    const-string v2, "<0x%X, type 0x%02X>"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
