.class public Lcom/tencent/turingfd/sdk/ams/ad/for;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Landroid/content/Context;


# direct methods
.method public static a(IZI)I
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    goto :goto_5
.end method

.method public static a(Landroid/util/SparseArray;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    const-class v1, Ljava/lang/Integer;

    invoke-static {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v0, -0x1

    .line 42
    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c
.end method

.method public static a([BIC)I
    .registers 6

    .prologue
    add-int/lit8 v0, p1, -0x1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 43
    array-length v2, p0

    if-ge v0, v2, :cond_f

    .line 44
    array-length v0, p0

    if-eq v1, v0, :cond_e

    aget-byte v0, p0, v1

    if-ne v0, p2, :cond_11

    :cond_e
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_2
.end method

.method public static a()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 40
    :cond_3
    :goto_3
    return-object v0

    .line 39
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7

    .prologue
    const-string v0, ""

    .line 24
    :try_start_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_5c

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    :try_start_7
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-static {v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([BIC)I

    move-result v2

    .line 26
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 27
    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 28
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_30} :catch_5c

    const-string v2, "/proc/%d/status"

    const/4 v3, 0x1

    :try_start_33
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_54

    const/4 v2, 0x6

    const/4 v0, 0x7

    const/16 v3, 0xa

    .line 29
    invoke-static {v1, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([BIC)I
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4f} :catch_5c

    move-result v3

    if-nez v3, :cond_55

    const-string v0, ""

    .line 30
    :cond_54
    :goto_54
    return-object v0

    :cond_55
    :try_start_55
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_54

    :catch_5c
    move-exception v0

    const-string v0, ""

    goto :goto_54
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 60
    :cond_3
    :goto_3
    return-object v0

    .line 4294967295
    :cond_4
    const/16 v1, 0x2f

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/app/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^/data/user/\\d+/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".so"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b4

    const-string v2, ".jar"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    const/4 v2, 0x1

    :goto_87
    if-nez v4, :cond_8b

    if-eqz v2, :cond_3

    :cond_8b
    if-eqz v4, :cond_b1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    :try_start_a5
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_b6

    move-result-object v2

    :goto_a9
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_b1
    move-object v0, v1

    goto/16 :goto_3

    .line 56
    :cond_b4
    const/4 v2, 0x0

    goto :goto_87

    .line 59
    :catch_b6
    move-exception v2

    move-object v2, v0

    goto :goto_a9
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 33
    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_2b

    .line 34
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 37
    :cond_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 38
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    const-string v0, "turingfd_protect_105548_38_adMini"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    if-eqz p0, :cond_5

    .line 14
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a([B[I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 5
    array-length v1, p0

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    :goto_5
    if-ge v2, v3, :cond_3b

    add-int/lit8 v1, v0, 0x1

    .line 6
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    .line 7
    aget v0, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 8
    aget v0, p1, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 9
    aget v0, p1, v2

    add-int/lit8 v1, v5, 0x1

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    aput v0, p1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_5

    .line 10
    :cond_3b
    array-length v1, p0

    if-ge v0, v1, :cond_5a

    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    const/16 v0, 0x8

    .line 12
    :goto_48
    array-length v3, p0

    if-ge v1, v3, :cond_5a

    .line 13
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_48

    :cond_5a
    return-void
.end method

.method public static a([II[B)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 15
    array-length v0, p2

    shr-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_7

    move v0, p1

    :cond_7
    move v3, v1

    move v2, v1

    :goto_9
    if-ge v3, v0, :cond_39

    add-int/lit8 v1, v2, 0x1

    .line 16
    aget v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v1, 0x1

    .line 17
    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v1, v2, 0x1

    .line 18
    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v1, 0x1

    .line 19
    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_9

    :cond_39
    if-le p1, v0, :cond_5e

    .line 20
    array-length v0, p2

    if-ge v2, v0, :cond_5e

    add-int/lit8 v1, v2, 0x1

    .line 21
    aget v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    const/16 v0, 0x8

    :goto_49
    const/16 v2, 0x18

    if-gt v0, v2, :cond_5e

    .line 22
    array-length v2, p2

    if-ge v1, v2, :cond_5e

    add-int/lit8 v2, v1, 0x1

    .line 23
    aget v4, p0, v3

    ushr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_49

    :cond_5e
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    .line 103
    :goto_8
    return v0

    .line 98
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 99
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_2b

    move-result v0

    goto :goto_8

    .line 100
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 101
    array-length v3, v2

    move v1, v0

    :goto_1c
    if-ge v1, v3, :cond_26

    aget-object v4, v2, v1

    .line 102
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 103
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2d

    move-result v0

    goto :goto_8

    .line 99
    :catch_2b
    move-exception v1

    goto :goto_8

    .line 103
    :catch_2d
    move-exception v1

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;I)[B
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 69
    :goto_d
    return-object v3

    .line 63
    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_3f
    .catchall {:try_start_e .. :try_end_13} :catchall_3c

    .line 64
    :try_start_13
    new-array v1, p1, [B

    :cond_15
    sub-int v4, p1, v0

    .line 65
    invoke-virtual {v2, v1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_45
    .catchall {:try_start_13 .. :try_end_1a} :catchall_36

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    add-int/2addr v0, v4

    if-lt v0, p1, :cond_15

    :cond_21
    move v4, v0

    if-nez v4, :cond_28

    .line 66
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    goto :goto_d

    :cond_28
    if-ge v4, p1, :cond_47

    .line 67
    :try_start_2a
    new-array v0, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_31} :catch_45
    .catchall {:try_start_2a .. :try_end_31} :catchall_36

    .line 69
    :goto_31
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    move-object v3, v0

    goto :goto_d

    :catchall_36
    move-exception v0

    move-object v1, v2

    :goto_38
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v0

    :catchall_3c
    move-exception v0

    move-object v1, v3

    goto :goto_38

    :catch_3f
    move-exception v0

    move-object v2, v3

    :goto_41
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    goto :goto_d

    :catch_45
    move-exception v0

    goto :goto_41

    :cond_47
    move-object v0, v1

    goto :goto_31
.end method

.method public static a([B[B)[B
    .registers 15

    .prologue
    .line 76
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->d([B)[B

    move-result-object v2

    if-eqz p0, :cond_b

    if-eqz v2, :cond_b

    .line 77
    array-length v0, p0

    if-nez v0, :cond_c

    .line 96
    :cond_b
    :goto_b
    return-object p0

    .line 78
    :cond_c
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_16

    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    .line 96
    :cond_16
    const/4 p0, 0x0

    goto :goto_b

    .line 79
    :cond_18
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    .line 80
    new-array v4, v0, [I

    .line 81
    invoke-static {p0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[I)V

    .line 82
    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_37

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    :goto_28
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2c

    const/4 v0, 0x4

    .line 83
    :cond_2c
    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_3d

    const/4 v3, 0x0

    .line 84
    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 82
    :cond_37
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 85
    :cond_3d
    invoke-static {v2, v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[I)V

    .line 86
    array-length v0, v4

    add-int/lit8 v2, v0, -0x1

    .line 87
    aget v0, v4, v2

    const/4 v0, 0x0

    aget v1, v4, v0

    const v6, -0x61c88647

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x34

    .line 88
    div-int v0, v3, v0

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v6

    move v3, v0

    move v0, v1

    :goto_56
    if-eqz v3, :cond_a3

    ushr-int/lit8 v1, v3, 0x2

    and-int/lit8 v7, v1, 0x3

    move v1, v2

    :goto_5d
    if-lez v1, :cond_80

    add-int/lit8 v8, v1, -0x1

    .line 89
    aget v8, v4, v8

    .line 90
    aget v9, v4, v1

    ushr-int/lit8 v10, v8, 0x5

    shl-int/lit8 v11, v0, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v0, 0x3

    shl-int/lit8 v12, v8, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v0, v3

    and-int/lit8 v11, v1, 0x3

    xor-int/2addr v11, v7

    aget v11, v5, v11

    xor-int/2addr v8, v11

    add-int/2addr v0, v8

    xor-int/2addr v0, v10

    sub-int v0, v9, v0

    aput v0, v4, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_5d

    .line 91
    :cond_80
    aget v8, v4, v2

    const/4 v9, 0x0

    .line 92
    aget v9, v4, v9

    ushr-int/lit8 v10, v8, 0x5

    shl-int/lit8 v11, v0, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v0, 0x3

    shl-int/lit8 v12, v8, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v0, v3

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v7

    aget v1, v5, v1

    xor-int/2addr v1, v8

    add-int/2addr v0, v1

    xor-int/2addr v0, v10

    sub-int v1, v9, v0

    const/4 v0, 0x0

    aput v1, v4, v0

    sub-int v0, v3, v6

    move v3, v0

    move v0, v1

    goto :goto_56

    .line 93
    :cond_a3
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    if-ltz v0, :cond_b1

    .line 94
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_b4

    .line 96
    :cond_b1
    const/4 p0, 0x0

    goto/16 :goto_b

    .line 95
    :cond_b4
    new-array p0, v0, [B

    .line 96
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([II[B)V

    goto/16 :goto_b
.end method

.method public static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_22
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    move-result-object v1

    :cond_5
    const/4 v2, 0x0

    .line 71
    :try_start_6
    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    if-eqz p1, :cond_14

    .line 72
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_30
    .catchall {:try_start_6 .. :try_end_13} :catchall_32

    move-result-object v0

    .line 73
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_2c

    .line 75
    :cond_17
    :goto_17
    return-object v0

    .line 73
    :catchall_18
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1c
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2e

    .line 74
    :cond_21
    :goto_21
    throw v0

    :catch_22
    move-exception v1

    move-object v1, v0

    :goto_24
    if-eqz v1, :cond_17

    .line 75
    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_17

    :catch_2a
    move-exception v1

    goto :goto_17

    :catch_2c
    move-exception v1

    goto :goto_17

    :catch_2e
    move-exception v1

    goto :goto_21

    .line 73
    :catch_30
    move-exception v2

    goto :goto_24

    :catchall_32
    move-exception v0

    goto :goto_1c
.end method

.method public static b(I)Lcom/tencent/turingfd/sdk/ams/ad/native;
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 35
    :try_start_3
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_9b

    move-result-object v1

    .line 36
    :try_start_7
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_b} :catch_51

    const-string v4, "/proc/%d/status"

    const/4 v6, 0x1

    :try_start_e
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 37
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_27} :catch_51

    const-string v3, "\n"

    .line 38
    :try_start_29
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 39
    array-length v3, v2

    :goto_2e
    if-ge v0, v3, :cond_60

    aget-object v6, v2, v0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_51

    const-string v8, ":"

    .line 40
    :try_start_34
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 41
    array-length v8, v6

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3f

    .line 42
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 41
    :cond_3f
    const/4 v8, 0x0

    .line 42
    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_50} :catch_51

    goto :goto_3c

    .line 45
    :catch_51
    move-exception v0

    move-object v0, v1

    move v2, v7

    move v1, v7

    :goto_55
    move-object v3, v0

    move v6, v7

    move v4, v1

    :goto_58
    if-eqz v3, :cond_5e

    if-eq v2, v7, :cond_5e

    if-ne v4, v7, :cond_a0

    :cond_5e
    move-object v0, v5

    .line 46
    :goto_5f
    return-object v0

    .line 42
    :cond_60
    const-string v0, "PPid"

    .line 43
    :try_start_62
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6b} :catch_51

    move-result v3

    const-string v0, "Uid"

    .line 44
    :try_start_6e
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_74} :catch_96

    const-string v2, "\\s+"

    :try_start_76
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_80} :catch_96

    move-result v2

    const-string v0, "TracerPid"

    .line 45
    :try_start_83
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8c} :catch_91

    move-result v6

    move v4, v2

    move v2, v3

    move-object v3, v1

    goto :goto_58

    :catch_91
    move-exception v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    goto :goto_55

    :catch_96
    move-exception v0

    move-object v0, v1

    move v2, v3

    move v1, v7

    goto :goto_55

    :catch_9b
    move-exception v0

    move-object v0, v5

    move v1, v7

    move v2, v7

    goto :goto_55

    .line 46
    :cond_a0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/native;

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/turingfd/sdk/ams/ad/native;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_5f
.end method

.method public static b(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x6a

    .line 47
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :cond_e
    return-object v0
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string v0, "AndroidManifest.xml"

    .line 28
    :try_start_c
    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    const/16 v3, 0x2000

    .line 29
    new-array v3, v3, [B

    .line 30
    invoke-static {v2, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 31
    array-length v4, v3

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v4, :cond_34

    aget-object v5, v3, v0

    .line 32
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c([B)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_33
    .catchall {:try_start_c .. :try_end_2b} :catchall_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catchall_2e
    move-exception v0

    .line 34
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    throw v0

    :catch_33
    move-exception v0

    :cond_34
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    return-object v1
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    if-eqz p0, :cond_5

    .line 2
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static final b()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "android.app.ActivityThread"

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_23

    move-result-object v0

    const-string v3, "currentApplication"

    const/4 v4, 0x0

    :try_start_b
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_23

    :goto_1f
    if-nez v0, :cond_42

    move v0, v1

    .line 1
    :goto_22
    return v0

    .line 4294967295
    :catch_23
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityThread:currentApplication --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpenIdHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_1f

    :cond_42
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/try;->d()Lcom/tencent/turingfd/sdk/ams/ad/try;

    move-result-object v2

    .line 1
    invoke-virtual {v2, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_22
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_50
    .catchall {:try_start_1 .. :try_end_6} :catchall_4d

    .line 49
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_49
    .catchall {:try_start_6 .. :try_end_f} :catchall_43

    const/16 v0, 0x1000

    .line 50
    :try_start_11
    new-array v0, v0, [B

    .line 51
    :goto_13
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_2f

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1e} :catch_1f
    .catchall {:try_start_11 .. :try_end_1e} :catchall_53

    goto :goto_13

    .line 56
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 57
    :goto_21
    :try_start_21
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v1

    .line 58
    :goto_28
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v1

    .line 53
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_1f
    .catchall {:try_start_2f .. :try_end_32} :catchall_53

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 55
    :goto_35
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    return-object v0

    .line 53
    :cond_3c
    const-string v0, ""

    .line 54
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_1f
    .catchall {:try_start_3e .. :try_end_41} :catchall_53

    move-result-object v0

    goto :goto_35

    .line 56
    :catchall_43
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_28

    :catch_49
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_21

    :catchall_4d
    move-exception v1

    move-object v2, v0

    goto :goto_28

    :catch_50
    move-exception v1

    move-object v2, v0

    goto :goto_21

    .line 57
    :catchall_53
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_28
.end method

.method public static b([B)[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3
    :try_start_1
    new-instance v1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_3} :catch_18

    const-string v2, "4D4435"

    :try_start_5
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public static b([B[B)[B
    .registers 19

    .prologue
    .line 6
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->d([B)[B

    move-result-object v3

    if-eqz p0, :cond_d

    if-eqz v3, :cond_d

    .line 7
    move-object/from16 v0, p0

    array-length v1, v0

    if-nez v1, :cond_e

    .line 25
    :cond_d
    :goto_d
    return-object p0

    .line 8
    :cond_e
    move-object/from16 v0, p0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_41

    move-object/from16 v0, p0

    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 9
    :goto_1c
    new-array v6, v1, [I

    .line 10
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[I)V

    add-int/lit8 v1, v1, -0x1

    .line 11
    move-object/from16 v0, p0

    array-length v2, v0

    aput v2, v6, v1

    .line 12
    array-length v1, v3

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_49

    array-length v1, v3

    ushr-int/lit8 v1, v1, 0x2

    :goto_32
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    const/4 v1, 0x4

    .line 13
    :cond_36
    new-array v7, v1, [I

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_4f

    const/4 v4, 0x0

    .line 14
    aput v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 8
    :cond_41
    move-object/from16 v0, p0

    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1c

    .line 12
    :cond_49
    array-length v1, v3

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 15
    :cond_4f
    invoke-static {v3, v7}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[I)V

    .line 16
    array-length v1, v6

    add-int/lit8 v8, v1, -0x1

    .line 17
    aget v3, v6, v8

    const/4 v1, 0x0

    aget v1, v6, v1

    const v9, -0x61c88647

    const/4 v2, 0x0

    add-int/lit8 v1, v8, 0x1

    const/16 v4, 0x34

    .line 18
    div-int v1, v4, v1

    add-int/lit8 v1, v1, 0x6

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_6b
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_b8

    add-int v5, v3, v9

    ushr-int/lit8 v1, v5, 0x2

    and-int/lit8 v10, v1, 0x3

    const/4 v1, 0x0

    move v3, v2

    :goto_77
    if-ge v1, v8, :cond_98

    add-int/lit8 v2, v1, 0x1

    .line 19
    aget v11, v6, v2

    .line 20
    aget v12, v6, v1

    ushr-int/lit8 v13, v3, 0x5

    shl-int/lit8 v14, v11, 0x2

    xor-int/2addr v13, v14

    ushr-int/lit8 v14, v11, 0x3

    shl-int/lit8 v15, v3, 0x4

    xor-int/2addr v14, v15

    add-int/2addr v13, v14

    xor-int/2addr v11, v5

    and-int/lit8 v14, v1, 0x3

    xor-int/2addr v14, v10

    aget v14, v7, v14

    xor-int/2addr v3, v14

    add-int/2addr v3, v11

    xor-int/2addr v3, v13

    add-int/2addr v3, v12

    aput v3, v6, v1

    move v1, v2

    goto :goto_77

    :cond_98
    const/4 v2, 0x0

    .line 21
    aget v2, v6, v2

    .line 22
    aget v11, v6, v8

    ushr-int/lit8 v12, v3, 0x5

    shl-int/lit8 v13, v2, 0x2

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v2, 0x3

    shl-int/lit8 v14, v3, 0x4

    xor-int/2addr v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v2, v5

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v10

    aget v1, v7, v1

    xor-int/2addr v1, v3

    add-int/2addr v1, v2

    xor-int/2addr v1, v12

    add-int v2, v11, v1

    aput v2, v6, v8

    move v1, v4

    move v3, v5

    goto :goto_6b

    .line 23
    :cond_b8
    array-length v1, v6

    shl-int/lit8 v1, v1, 0x2

    .line 24
    new-array v0, v1, [B

    move-object/from16 p0, v0

    .line 25
    array-length v1, v6

    move-object/from16 v0, p0

    invoke-static {v6, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([II[B)V

    goto/16 :goto_d
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    const-string v0, "turingfd"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 14
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/io/File;

    const-string v2, "mpdc1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static c([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b([B)[B

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x15

    .line 1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_8} :catch_9e

    const-string v2, "http://pmir.3g.qq.com"

    const/16 v3, 0x15

    .line 2
    :try_start_c
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, -0x24

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, -0x2e

    aput v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, -0x2d

    aput v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, -0x4d

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, -0x16

    aput v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, -0xa

    aput v5, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x2f

    aput v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, -0x4d

    aput v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, -0x48

    aput v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, -0x45

    aput v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, -0x20

    aput v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0x19

    aput v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0x15

    aput v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, -0x15

    aput v5, v3, v4

    const/16 v4, 0xe

    const/4 v5, -0x6

    aput v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, -0x4b

    aput v5, v3, v4

    const/16 v4, 0x10

    const/16 v5, -0x47

    aput v5, v3, v4

    const/16 v4, 0x11

    const/16 v5, 0x1f

    aput v5, v3, v4

    const/16 v4, 0x12

    const/16 v5, -0x27

    aput v5, v3, v4

    const/16 v4, 0x13

    const/16 v5, -0x31

    aput v5, v3, v4

    const/16 v4, 0x14

    const/16 v5, -0x31

    aput v5, v3, v4

    :goto_83
    if-ge v0, v6, :cond_93

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, v3, v0

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 5
    :cond_93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_96} :catch_9e

    move-result-object v0

    const-string v1, "UTF-8"

    :try_start_99
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_99 .. :try_end_9c} :catch_9e

    move-result-object v0

    .line 6
    :goto_9d
    return-object v0

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_9d
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 10
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_22

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 11
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    return-object v2
.end method

.method public static d(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string v0, "turingfd_protect_105548_38_adMini"

    .line 1
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "301"

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d([B)[B
    .registers 3

    .prologue
    if-eqz p0, :cond_14

    .line 3
    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_14

    const-string v0, "MD5"

    .line 4
    :try_start_9
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_13} :catch_15

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0

    :catch_15
    move-exception v0

    const/4 p0, 0x0

    goto :goto_14
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .registers 22

    .prologue
    const-class v10, Lcom/tencent/turingfd/sdk/ams/ad/for;

    monitor-enter v10

    .line 1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_d
    :goto_d
    const/4 v2, 0x0

    .line 26
    :goto_e
    if-nez v2, :cond_120

    const-string v2, ""
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_111

    .line 72
    :cond_12
    :goto_12
    monitor-exit v10

    return-object v2

    .line 3
    :cond_14
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_111

    move-result-object v2

    const/16 v3, 0x40

    .line 4
    :try_start_1a
    invoke-virtual {v2, v11, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_248
    .catchall {:try_start_1a .. :try_end_1d} :catchall_111

    move-result-object v6

    .line 5
    :try_start_1e
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_d

    .line 6
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 7
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_111

    const-wide/16 v2, -0x1

    .line 9
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_102
    .catchall {:try_start_2f .. :try_end_32} :catchall_111

    move-result-wide v2

    move-wide v4, v2

    :goto_34
    const-wide/16 v2, -0x1

    .line 10
    :try_start_36
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long v2, v8, v14
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3e} :catch_106
    .catchall {:try_start_36 .. :try_end_3e} :catchall_111

    move-wide v8, v2

    .line 11
    :goto_3f
    :try_start_3f
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 12
    iget v15, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 13
    iget-wide v0, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v16, v0

    .line 14
    iget-wide v0, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v18, v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, ""

    .line 16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_7f

    array-length v6, v2

    if-lez v6, :cond_7f

    const/4 v6, 0x0

    .line 17
    aget-object v2, v2, v6
    :try_end_5e
    .catchall {:try_start_3f .. :try_end_5e} :catchall_111

    const/4 v7, 0x0

    .line 18
    :try_start_5f
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_11a
    .catchall {:try_start_5f .. :try_end_68} :catchall_114

    :try_start_68
    const-string v2, "X.509"
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_111

    .line 19
    :try_start_6a
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 20
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c([B)Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_7b} :catch_10a
    .catchall {:try_start_6a .. :try_end_7b} :catchall_267

    move-result-object v3

    .line 21
    :try_start_7c
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 22
    :cond_7f
    :goto_7f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_111

    move-result v2

    if-eqz v2, :cond_11e

    .line 23
    :try_start_85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11e

    const/4 v6, 0x0

    .line 25
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_9e} :catch_11d
    .catchall {:try_start_85 .. :try_end_9e} :catchall_111

    move-result-object v2

    .line 26
    :goto_9f
    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 9
    :catch_102
    move-exception v4

    move-wide v4, v2

    goto/16 :goto_34

    .line 10
    :catch_106
    move-exception v7

    move-wide v8, v2

    goto/16 :goto_3f

    .line 21
    :catch_10a
    move-exception v2

    move-object v2, v6

    :goto_10c
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V
    :try_end_10f
    .catchall {:try_start_9f .. :try_end_10f} :catchall_111

    goto/16 :goto_7f

    .line 4294967295
    :catchall_111
    move-exception v2

    monitor-exit v10

    throw v2

    .line 21
    :catchall_114
    move-exception v2

    move-object v6, v7

    :goto_116
    :try_start_116
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v2

    :catch_11a
    move-exception v2

    move-object v2, v7

    goto :goto_10c

    :catch_11d
    move-exception v2

    :cond_11e
    move-object v2, v3

    .line 25
    goto :goto_9f

    .line 27
    :cond_120
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b([B)[B

    move-result-object v3

    .line 28
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_139

    const/4 v3, 0x0

    .line 52
    :goto_133
    if-nez v3, :cond_1cc

    const-string v2, ""

    goto/16 :goto_12

    .line 30
    :cond_139
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_142

    const-string v3, ""

    goto :goto_133

    .line 31
    :cond_142
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_14e

    .line 32
    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/File;)Z

    const-string v3, ""

    goto :goto_133

    :cond_14e
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 33
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_155
    .catchall {:try_start_116 .. :try_end_155} :catchall_111

    const/4 v6, 0x0

    .line 34
    :try_start_156
    new-instance v3, Ljava/io/RandomAccessFile;
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_158} :catch_1c2
    .catchall {:try_start_156 .. :try_end_158} :catchall_1ab

    :try_start_158
    const-string v11, "rw"
    :try_end_15a
    .catchall {:try_start_158 .. :try_end_15a} :catchall_111

    :try_start_15a
    invoke-direct {v3, v8, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_15a .. :try_end_15d} :catch_1c2
    .catchall {:try_start_15a .. :try_end_15d} :catchall_1ab

    .line 35
    :try_start_15d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_160
    .catch Ljava/lang/Throwable; {:try_start_15d .. :try_end_160} :catch_24b
    .catchall {:try_start_15d .. :try_end_160} :catchall_24e

    move-result-object v5

    .line 36
    :try_start_161
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_164} :catch_251
    .catchall {:try_start_161 .. :try_end_164} :catchall_254

    move-result-object v6

    const/16 v4, 0x20

    .line 37
    :try_start_167
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 38
    :goto_16b
    invoke-virtual {v5, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    if-lez v8, :cond_196

    .line 39
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_179} :catch_17a
    .catchall {:try_start_167 .. :try_end_179} :catchall_264

    goto :goto_16b

    .line 42
    :catch_17a
    move-exception v4

    .line 47
    :goto_17b
    const/4 v4, 0x0

    if-eqz v6, :cond_26a

    .line 48
    :try_start_17e
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_181
    .catchall {:try_start_17e .. :try_end_181} :catchall_111

    move-result v8

    if-eqz v8, :cond_26a

    .line 49
    :try_start_184
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_1c5
    .catchall {:try_start_184 .. :try_end_187} :catchall_111

    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v4, v20

    .line 50
    :goto_18c
    :try_start_18c
    invoke-static {v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 51
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 52
    invoke-static {v9}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V
    :try_end_195
    .catchall {:try_start_18c .. :try_end_195} :catchall_111

    goto :goto_133

    .line 40
    :cond_196
    :try_start_196
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_196 .. :try_end_199} :catch_17a
    .catchall {:try_start_196 .. :try_end_199} :catchall_264

    move-result-object v4

    if-eqz v6, :cond_1c6

    .line 41
    :try_start_19c
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_111

    move-result v8

    if-eqz v8, :cond_1c6

    .line 42
    :try_start_1a2
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1c5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_111

    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v4, v20

    goto :goto_18c

    :catchall_1ab
    move-exception v2

    move-object v3, v4

    :goto_1ad
    if-eqz v6, :cond_1b8

    .line 43
    :try_start_1af
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_1b2
    .catchall {:try_start_1af .. :try_end_1b2} :catchall_111

    move-result v4

    if-eqz v4, :cond_1b8

    .line 44
    :try_start_1b5
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_257
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_111

    .line 45
    :cond_1b8
    :goto_1b8
    :try_start_1b8
    invoke-static {v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 46
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 47
    invoke-static {v9}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v2

    :catch_1c2
    move-exception v3

    move-object v3, v4

    goto :goto_17b

    :catch_1c5
    move-exception v6

    :cond_1c6
    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v4, v20

    goto :goto_18c

    .line 53
    :cond_1cc
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    const-string v2, ""

    goto/16 :goto_12

    .line 54
    :cond_1d6
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c(Landroid/content/Context;)Ljava/io/File;
    :try_end_1d9
    .catchall {:try_start_1b8 .. :try_end_1d9} :catchall_111

    move-result-object v8

    if-eqz v8, :cond_12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 55
    :try_start_1df
    new-instance v3, Ljava/io/RandomAccessFile;
    :try_end_1e1
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e1} :catch_244
    .catchall {:try_start_1df .. :try_end_1e1} :catchall_240

    :try_start_1e1
    const-string v9, "rw"
    :try_end_1e3
    .catchall {:try_start_1e1 .. :try_end_1e3} :catchall_111

    :try_start_1e3
    invoke-direct {v3, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/lang/Throwable; {:try_start_1e3 .. :try_end_1e6} :catch_244
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_240

    .line 56
    :try_start_1e6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1e9
    .catch Ljava/lang/Throwable; {:try_start_1e6 .. :try_end_1e9} :catch_23d
    .catchall {:try_start_1e6 .. :try_end_1e9} :catchall_229

    move-result-object v4

    .line 57
    :try_start_1ea
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1ed
    .catch Ljava/lang/Throwable; {:try_start_1ea .. :try_end_1ed} :catch_25a
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_25c

    move-result-object v5

    .line 58
    :try_start_1ee
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 59
    array-length v7, v6

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 60
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    :goto_1fd
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_21b

    .line 63
    invoke-virtual {v4, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_206
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_206} :catch_207
    .catchall {:try_start_1ee .. :try_end_206} :catchall_262

    goto :goto_1fd

    .line 65
    :catch_207
    move-exception v6

    .line 68
    :goto_208
    if-eqz v5, :cond_213

    .line 69
    :try_start_20a
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_20d
    .catchall {:try_start_20a .. :try_end_20d} :catchall_111

    move-result v6

    if-eqz v6, :cond_213

    .line 70
    :goto_210
    :try_start_210
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_260
    .catchall {:try_start_210 .. :try_end_213} :catchall_111

    .line 71
    :cond_213
    :goto_213
    :try_start_213
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 72
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V
    :try_end_219
    .catchall {:try_start_213 .. :try_end_219} :catchall_111

    goto/16 :goto_12

    .line 64
    :cond_21b
    :try_start_21b
    array-length v6, v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_220} :catch_207
    .catchall {:try_start_21b .. :try_end_220} :catchall_262

    if-eqz v5, :cond_213

    .line 65
    :try_start_222
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_213

    goto :goto_210

    :catchall_229
    move-exception v2

    move-object v4, v6

    :goto_22b
    if-eqz v5, :cond_236

    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_230
    .catchall {:try_start_222 .. :try_end_230} :catchall_111

    move-result v6

    if-eqz v6, :cond_236

    .line 66
    :try_start_233
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_236} :catch_25e
    .catchall {:try_start_233 .. :try_end_236} :catchall_111

    .line 67
    :cond_236
    :goto_236
    :try_start_236
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v2
    :try_end_23d
    .catchall {:try_start_236 .. :try_end_23d} :catchall_111

    .line 65
    :catch_23d
    move-exception v4

    move-object v4, v6

    goto :goto_208

    :catchall_240
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    goto :goto_22b

    .line 68
    :catch_244
    move-exception v3

    move-object v3, v4

    move-object v4, v6

    goto :goto_208

    .line 26
    :catch_248
    move-exception v2

    goto/16 :goto_d

    .line 42
    :catch_24b
    move-exception v4

    goto/16 :goto_17b

    :catchall_24e
    move-exception v2

    goto/16 :goto_1ad

    :catch_251
    move-exception v4

    goto/16 :goto_17b

    :catchall_254
    move-exception v2

    goto/16 :goto_1ad

    :catch_257
    move-exception v4

    goto/16 :goto_1b8

    .line 65
    :catch_25a
    move-exception v6

    goto :goto_208

    :catchall_25c
    move-exception v2

    goto :goto_22b

    :catch_25e
    move-exception v5

    goto :goto_236

    :catch_260
    move-exception v5

    goto :goto_213

    :catchall_262
    move-exception v2

    goto :goto_22b

    .line 42
    :catchall_264
    move-exception v2

    goto/16 :goto_1ad

    .line 21
    :catchall_267
    move-exception v2

    goto/16 :goto_116

    :cond_26a
    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v4, v20

    goto/16 :goto_18c
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/tencent/turingfd/sdk/ams/ad/for;

    monitor-enter v2

    :try_start_5
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/for;->j:Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1a

    if-eqz v3, :cond_b

    .line 3
    :goto_9
    monitor-exit v2

    return v0

    .line 1
    :cond_b
    if-nez p0, :cond_f

    move v0, v1

    goto :goto_9

    .line 2
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_17

    move v0, v1

    goto :goto_9

    .line 3
    :cond_17
    sput-object v3, Lcom/tencent/turingfd/sdk/ams/ad/for;->j:Landroid/content/Context;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    goto :goto_9

    .line 1
    :catchall_1a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized get()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/for;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/for;->j:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
