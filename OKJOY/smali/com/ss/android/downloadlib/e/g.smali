.class public Lcom/ss/android/downloadlib/e/g;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# static fields
.field static final a:[C

.field private static b:[Ljava/lang/Object;

.field private static c:[Ljava/lang/Object;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ss/android/downloadlib/e/g;->b:[Ljava/lang/Object;

    .line 64
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ss/android/downloadlib/e/g;->c:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ss/android/downloadlib/e/g;->a:[C

    .line 420
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/e/g;->d:Ljava/lang/String;

    return-void

    .line 82
    :array_18
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 678
    .line 680
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 681
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_13

    .line 685
    :goto_12
    return v0

    .line 682
    :catch_13
    move-exception v1

    .line 683
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 811
    :try_start_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    move v0, v3

    .line 848
    :cond_11
    :goto_11
    return v0

    .line 814
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v2

    .line 815
    goto :goto_11

    .line 817
    :cond_1a
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 818
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 821
    array-length v4, v6

    array-length v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v2

    move v4, v2

    .line 824
    :goto_2e
    if-ge v4, v8, :cond_42

    aget-object v5, v6, v4

    .line 825
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v9, v7, v4

    .line 826
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int/2addr v5, v9

    if-nez v5, :cond_42

    .line 827
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 830
    :cond_42
    if-nez v5, :cond_66

    move v5, v4

    .line 831
    :goto_45
    array-length v8, v6

    if-ge v5, v8, :cond_53

    .line 832
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_11

    .line 831
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_53
    move v0, v4

    .line 836
    :goto_54
    array-length v4, v7

    if-ge v0, v4, :cond_64

    .line 837
    aget-object v4, v7, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5c} :catch_6a

    move-result v4

    if-lez v4, :cond_61

    move v0, v1

    .line 838
    goto :goto_11

    .line 836
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_64
    move v0, v2

    .line 841
    goto :goto_11

    .line 843
    :cond_66
    if-gtz v5, :cond_11

    move v0, v1

    goto :goto_11

    .line 845
    :catch_6a
    move-exception v0

    move v0, v3

    .line 848
    goto :goto_11
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 196
    if-nez p0, :cond_5

    .line 205
    :goto_4
    return-wide v0

    .line 201
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_4

    .line 203
    :catch_12
    move-exception v2

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 366
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 381
    :cond_9
    :goto_9
    return-object v0

    .line 369
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 370
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_9

    .line 372
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 373
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 374
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 376
    :try_start_1b
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_9

    .line 377
    :catch_20
    move-exception v1

    .line 378
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/a/b/b;
    .registers 6

    .prologue
    .line 459
    new-instance v0, Lcom/ss/android/downloadlib/a/b/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/b/b;-><init>()V

    .line 460
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 477
    :cond_b
    :goto_b
    return-object v0

    .line 464
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_b

    .line 467
    sget v2, Lcom/ss/android/downloadlib/a/b/b;->b:I

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/a/b/b;->a(I)Lcom/ss/android/downloadlib/a/b/b;

    .line 468
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->h()Lcom/ss/android/a/a/a/l;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/ss/android/a/a/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 470
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2, p1, v1, p2}, Lcom/ss/android/downloadlib/e/g;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 471
    sget v1, Lcom/ss/android/downloadlib/a/b/b;->c:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/b;->a(I)Lcom/ss/android/downloadlib/a/b/b;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_3c

    goto :goto_b

    .line 475
    :catch_3c
    move-exception v1

    goto :goto_b
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 896
    if-nez p0, :cond_a

    .line 897
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_a
    array-length v1, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_16

    aget-object v2, p0, v0

    .line 900
    if-eqz v2, :cond_13

    .line 901
    return-object v2

    .line 899
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 904
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_5b
    .catchall {:try_start_2 .. :try_end_7} :catchall_4a

    move-result-object v2

    .line 94
    if-nez v2, :cond_15

    .line 107
    if-eqz v0, :cond_f

    .line 108
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 104
    :cond_f
    :goto_f
    return-object v0

    .line 110
    :catch_10
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 96
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_5b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4a

    .line 97
    const/16 v3, 0x2000

    :try_start_1c
    new-array v3, v3, [B

    .line 99
    :goto_1e
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_37

    .line 100
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2b
    .catchall {:try_start_1c .. :try_end_2a} :catchall_59

    goto :goto_1e

    .line 103
    :catch_2b
    move-exception v2

    .line 107
    :goto_2c
    if-eqz v1, :cond_f

    .line 108
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_f

    .line 110
    :catch_32
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 102
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/e/g;->a([B)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_2b
    .catchall {:try_start_37 .. :try_end_3e} :catchall_59

    move-result-object v0

    .line 107
    if-eqz v1, :cond_f

    .line 108
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_f

    .line 110
    :catch_45
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 106
    :catchall_4a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 107
    :goto_4e
    if-eqz v1, :cond_53

    .line 108
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 112
    :cond_53
    :goto_53
    throw v0

    .line 110
    :catch_54
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 106
    :catchall_59
    move-exception v0

    goto :goto_4e

    .line 103
    :catch_5b
    move-exception v1

    move-object v1, v0

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 737
    if-nez p1, :cond_5

    .line 738
    const-string p0, ""

    .line 745
    :cond_4
    :goto_4
    return-object p0

    .line 741
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    if-nez p0, :cond_a

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ss/android/downloadlib/e/g;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p0, :cond_b

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_b
    if-ltz p1, :cond_12

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_18

    .line 151
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 153
    :cond_18
    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 156
    :goto_1e
    if-ge v0, p2, :cond_3d

    .line 157
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 158
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/ss/android/downloadlib/e/g;->a:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v2

    .line 159
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/ss/android/downloadlib/e/g;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 161
    :cond_3d
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 853
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v0, p0, v1

    .line 854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 858
    :goto_d
    return-object v0

    .line 853
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 858
    :cond_12
    const-string v0, "ERROR"

    goto :goto_d
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 211
    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    .line 212
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_8

    .line 218
    :catch_1c
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 221
    :cond_20
    return-object p1
.end method

.method public static varargs a([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 233
    if-eqz p0, :cond_a

    array-length v1, p0

    if-nez v1, :cond_b

    .line 241
    :cond_a
    return-object v0

    .line 236
    :cond_b
    array-length v2, p0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_a

    aget-object v3, p0, v1

    .line 237
    if-eqz v3, :cond_16

    .line 238
    invoke-static {v3, v0}, Lcom/ss/android/downloadlib/e/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 236
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 862
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 863
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 865
    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 5
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 927
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 928
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-direct {v1, v3, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 930
    return-void
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 919
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 512
    if-nez p1, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 525
    :cond_9
    :goto_9
    return v0

    .line 517
    :cond_a
    if-lez p1, :cond_e

    if-ge p0, p1, :cond_9

    .line 520
    :cond_e
    invoke-static {p2, p3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    .line 525
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 249
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 250
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 253
    :cond_14
    :goto_14
    return v0

    .line 252
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 582
    .line 583
    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 617
    :cond_f
    :goto_f
    return v0

    .line 587
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 590
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_f

    .line 594
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 595
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 598
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_34} :catch_48

    .line 601
    :try_start_34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_3c} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_48

    move-result-object v1

    .line 605
    :goto_3d
    if-eqz v1, :cond_f

    .line 608
    :try_start_3f
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_48

    .line 609
    if-ne v2, v1, :cond_f

    .line 610
    const/4 v0, 0x1

    goto :goto_f

    .line 602
    :catch_45
    move-exception v1

    .line 603
    const/4 v1, 0x0

    goto :goto_3d

    .line 614
    :catch_48
    move-exception v1

    .line 615
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 4

    .prologue
    .line 536
    if-nez p0, :cond_4

    .line 537
    const/4 v0, 0x0

    .line 539
    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->p()I

    move-result v1

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/b;->a()Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 4

    .prologue
    .line 529
    if-nez p0, :cond_4

    .line 530
    const/4 v0, 0x0

    .line 532
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/b;->a()Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 756
    if-nez p0, :cond_4

    .line 771
    :cond_3
    :goto_3
    return v0

    .line 759
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v1

    .line 760
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 761
    const/16 v3, 0x3ee

    if-eq v1, v3, :cond_32

    const/16 v3, 0x41c

    if-eq v1, v3, :cond_32

    const/16 v3, 0x3ff

    if-eq v1, v3, :cond_24

    const/16 v3, 0x40f

    if-eq v1, v3, :cond_24

    const/16 v3, 0x410

    if-eq v1, v3, :cond_24

    const/16 v3, 0x40c

    if-ne v1, v3, :cond_3

    .line 767
    :cond_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ENOSPC (No space left on device)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    :cond_32
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 172
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a([B[BLjava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 716
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 717
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 718
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    if-eqz p0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 410
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 411
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 412
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v0

    .line 416
    :cond_16
    :goto_16
    return-object v0

    .line 413
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 933
    if-nez p0, :cond_4

    .line 942
    :goto_3
    return-object v0

    .line 935
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 936
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 937
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 938
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_3

    .line 939
    :catch_16
    move-exception v1

    goto :goto_3
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 923
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/Throwable;)V

    .line 924
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_4

    .line 552
    :cond_3
    :goto_3
    return v0

    .line 546
    :cond_4
    if-nez p0, :cond_a

    .line 547
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object p0

    .line 549
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 550
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    :cond_7
    :goto_7
    return v0

    .line 179
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 436
    if-nez p0, :cond_7

    .line 437
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object p0

    .line 440
    :cond_7
    if-eqz p0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 443
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1c

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 444
    const/4 v0, 0x1

    .line 450
    :cond_1b
    :goto_1b
    return v0

    .line 446
    :catch_1c
    move-exception v1

    goto :goto_1b
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 775
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 776
    const/4 v0, 0x0

    .line 785
    :cond_8
    :goto_8
    return v0

    .line 779
    :cond_9
    const-string v1, "http://ad.toutiao.com/advertiser_package/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 782
    const-string v1, "https://ad.toutiao.com/advertiser_package/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 785
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 621
    .line 622
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 653
    :cond_b
    :goto_b
    return v0

    .line 626
    :cond_c
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 629
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_b

    .line 633
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 634
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_3e

    .line 637
    :try_start_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_32} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_3e

    move-result-object v1

    .line 641
    :goto_33
    if-eqz v1, :cond_b

    .line 644
    :try_start_35
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_3e

    .line 645
    if-gt v3, v1, :cond_b

    .line 646
    const/4 v0, 0x1

    goto :goto_b

    .line 638
    :catch_3b
    move-exception v1

    .line 639
    const/4 v1, 0x0

    goto :goto_33

    .line 650
    :catch_3e
    move-exception v1

    .line 651
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 790
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 799
    :cond_8
    :goto_8
    return v0

    .line 793
    :cond_9
    const-string v2, "http://lf3-ttcdn-tos.pstatp.com/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 794
    goto :goto_8

    .line 796
    :cond_13
    const-string v2, "https://lf3-ttcdn-tos.pstatp.com/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 797
    goto :goto_8
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 658
    if-nez v1, :cond_c

    .line 670
    :goto_b
    return-object v0

    .line 662
    :cond_c
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 663
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :cond_19
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const/high16 v0, 0x200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, v1

    .line 670
    goto :goto_b
.end method
