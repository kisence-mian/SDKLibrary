.class public Lcom/ss/android/socialbase/downloader/m/f;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;

.field private static volatile d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:[C

.field private static g:Ljava/util/regex/Pattern;

.field private static h:Ljava/util/regex/Pattern;

.field private static i:Ljava/lang/Boolean;

.field private static j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 84
    const-class v0, Lcom/ss/android/socialbase/downloader/m/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    .line 90
    const-string v0, ".*\\d+ *- *(\\d+) */ *\\d+"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->b:Ljava/util/regex/Pattern;

    .line 106
    sput-object v1, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->e:Landroid/util/SparseArray;

    .line 111
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_30

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->f:[C

    .line 206
    sput-object v1, Lcom/ss/android/socialbase/downloader/m/f;->g:Ljava/util/regex/Pattern;

    .line 207
    sput-object v1, Lcom/ss/android/socialbase/downloader/m/f;->h:Ljava/util/regex/Pattern;

    return-void

    .line 111
    nop

    :array_30
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)D
    .registers 6

    .prologue
    .line 529
    long-to-double v0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/i/c;)J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 145
    if-nez p0, :cond_5

    .line 160
    :goto_4
    return-wide v0

    .line 148
    :cond_5
    const-string v2, "Content-Length"

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 152
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/i/c;)J

    move-result-wide v0

    goto :goto_4

    .line 155
    :cond_1d
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_20} :catch_22

    move-result-wide v0

    goto :goto_4

    .line 156
    :catch_22
    move-exception v2

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)J
    .registers 6

    .prologue
    const-wide/16 v0, -0x1

    .line 192
    if-nez p0, :cond_5

    .line 203
    :cond_4
    :goto_4
    return-wide v0

    .line 194
    :cond_5
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 197
    const/4 v3, 0x1

    :try_start_10
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_15} :catch_17

    move-result-wide v0

    goto :goto_4

    .line 198
    :catch_17
    move-exception v2

    .line 199
    sget-object v2, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse instance length failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/i;
    .registers 4

    .prologue
    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 501
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    .line 508
    :goto_8
    return-object v0

    .line 502
    :cond_9
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 504
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->c:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8

    .line 505
    :cond_16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 506
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->d:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8

    .line 508
    :cond_1f
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/i;
    .registers 5

    .prologue
    .line 485
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 486
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    .line 496
    :goto_8
    return-object v0

    .line 487
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 489
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->b:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8

    .line 490
    :cond_17
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 492
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->c:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8

    .line 493
    :cond_24
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 494
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->d:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8

    .line 496
    :cond_2d
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/g/f;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 250
    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3fd

    new-instance v2, Ljava/io/IOException;

    const-string v3, "path must be not empty"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 251
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 254
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40b

    new-instance v3, Ljava/io/IOException;

    const-string v4, "path is :%s, path is directory:%B:"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 256
    :cond_50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_96

    .line 258
    :try_start_56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_93

    .line 260
    :cond_67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_86

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_93

    .line 262
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x406

    const-string v2, "download savePath directory can not created"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_7d} :catch_7d

    .line 270
    :catch_7d
    move-exception v0

    .line 271
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40c

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 265
    :cond_86
    :try_start_86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 266
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x407

    const-string v2, "download savePath is not directory"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 269
    :cond_93
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_96} :catch_7d

    .line 275
    :cond_96
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/f;

    invoke-direct {v1, v0, p2}, Lcom/ss/android/socialbase/downloader/g/f;-><init>(Ljava/io/File;I)V

    return-object v1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/i/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 237
    const-string v0, "Content-Disposition"

    .line 238
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 241
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_14
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 329
    :cond_c
    const/4 v0, 0x0

    .line 330
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    if-nez p0, :cond_a

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p0, :cond_b

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_b
    if-ltz p1, :cond_12

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_18

    .line 132
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_18
    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 136
    :goto_1e
    if-ge v0, p2, :cond_3d

    .line 137
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 138
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->f:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v2

    .line 139
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->f:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 141
    :cond_3d
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static a(Landroid/util/SparseArray;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TK;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TK;>;"
        }
    .end annotation

    .prologue
    .line 1484
    if-nez p0, :cond_4

    .line 1485
    const/4 v0, 0x0

    .line 1494
    :cond_3
    return-object v0

    .line 1487
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1488
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1489
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_3

    .line 1490
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1491
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 280
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 282
    if-eqz v0, :cond_e

    .line 284
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 285
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 287
    if-eqz v1, :cond_e

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/b;

    .line 289
    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/g/b;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_39

    .line 291
    :cond_49
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->a(Ljava/util/List;)V

    goto :goto_e

    .line 294
    :cond_4d
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/b;

    .line 295
    if-eqz v1, :cond_6e

    .line 296
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v2

    .line 297
    if-nez v2, :cond_67

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/b;->a(Ljava/util/List;)V

    .line 301
    :cond_67
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 302
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 304
    :cond_6e
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 305
    if-nez v1, :cond_86

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v2

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    :cond_86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 315
    :cond_8a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const/4 v0, 0x0

    :goto_90
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a4

    .line 317
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 318
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 321
    :cond_a4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 324
    :goto_aa
    return-object p0

    :cond_ab
    move-object p0, v1

    goto :goto_aa
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 939
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 941
    if-eqz p0, :cond_25

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 942
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/e;

    .line 943
    if-eqz v0, :cond_13

    .line 944
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 948
    :cond_25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 949
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/e;

    const-string v2, "If-Match"

    invoke-direct {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_35
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/e;

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "range CurrentOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EndOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-nez v0, :cond_82

    .line 955
    const-string v0, "bytes=%s-"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 959
    :goto_77
    new-instance v2, Lcom/ss/android/socialbase/downloader/g/e;

    const-string v3, "Range"

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    return-object v1

    .line 957
    :cond_82
    const-string v0, "bytes=%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_77
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/b;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(IZLcom/ss/android/socialbase/downloader/e/a;)V
    .registers 7

    .prologue
    .line 755
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 756
    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 757
    if-eqz v0, :cond_2c

    .line 758
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/ae;

    .line 759
    if-eqz v0, :cond_11

    .line 760
    if-eqz p1, :cond_28

    .line 761
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    goto :goto_11

    .line 770
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    .line 763
    :cond_28
    :try_start_28
    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_11

    .line 768
    :cond_2c
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTempSaveCallback id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 770
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_25

    .line 771
    return-void
.end method

.method public static a(Landroid/util/SparseArray;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TK;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1499
    if-eqz p1, :cond_4

    if-nez p0, :cond_5

    .line 1509
    :cond_4
    return-void

    .line 1502
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1503
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1504
    if-eqz v0, :cond_d

    .line 1505
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 372
    if-nez p0, :cond_3

    .line 379
    :cond_2
    :goto_2
    return-void

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_2
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/ae;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x40e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    sget-object v3, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFileAsTargetName targetName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :try_start_21
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v5

    .line 541
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c7

    .line 542
    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v7, "tempFile not exist"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 544
    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v7, "targetFile exist"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aS()Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v6

    .line 546
    sget-object v7, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v6, v7, :cond_7a

    .line 547
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v1, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    if-eqz p1, :cond_79

    .line 549
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    .line 631
    :cond_79
    :goto_79
    return-void

    .line 552
    :cond_7a
    if-eqz v5, :cond_14e

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->aP()Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 553
    invoke-virtual {v5, p1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/d/ae;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_85} :catch_86

    goto :goto_79

    .line 626
    :catch_86
    move-exception v0

    .line 627
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFileAsTargetName throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-eqz p1, :cond_79

    .line 629
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const-string v2, "saveFileAsTargetName"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_79

    .line 558
    :cond_b4
    :try_start_b4
    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v7, "targetFile not exist"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-eqz v5, :cond_14e

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->aP()Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 560
    invoke-virtual {v5, p1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/d/ae;)V

    goto :goto_79

    .line 565
    :cond_c7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 566
    sget-object v6, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v7, "targetFile exist"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aS()Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v6

    .line 568
    sget-object v7, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v6, v7, :cond_e9

    .line 569
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v1, "tempFile exist , targetFile exists and md5 check valid"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-eqz p1, :cond_79

    .line 571
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    goto :goto_79

    .line 574
    :cond_e9
    if-eqz v5, :cond_f5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->aP()Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 575
    invoke-virtual {v5, p1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/d/ae;)V

    goto :goto_79

    .line 578
    :cond_f5
    if-eqz v5, :cond_fb

    .line 579
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/ss/android/socialbase/downloader/g/c;->k(Z)V

    .line 581
    :cond_fb
    sget-object v7, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveFileAsTargetName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_14e

    .line 583
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x40d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/b/i;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 584
    if-eqz p1, :cond_146

    .line 585
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 586
    :cond_146
    if-eqz v5, :cond_79

    .line 587
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(ZLcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_79

    .line 597
    :cond_14e
    if-eqz v5, :cond_154

    .line 598
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/g/c;->k(Z)V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_154} :catch_86

    .line 603
    :cond_154
    :try_start_154
    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_157
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_154 .. :try_end_157} :catch_1b4
    .catch Ljava/lang/Throwable; {:try_start_154 .. :try_end_157} :catch_86

    move-result v4

    if-nez v4, :cond_1a4

    :goto_15a
    move v1, v0

    move-object v0, v2

    .line 608
    :goto_15c
    if-eqz v1, :cond_1a6

    .line 609
    if-nez v0, :cond_197

    .line 610
    :try_start_160
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 611
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40e

    const-string v3, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s), temp file is exist: %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v6

    .line 611
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 614
    :cond_197
    if-eqz p1, :cond_19c

    .line 615
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 616
    :cond_19c
    if-eqz v5, :cond_79

    .line 617
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(ZLcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_79

    :cond_1a4
    move v0, v1

    .line 603
    goto :goto_15a

    .line 620
    :cond_1a6
    if-eqz p1, :cond_1ab

    .line 621
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    .line 622
    :cond_1ab
    if-eqz v5, :cond_79

    .line 623
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(ZLcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_1b2
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_1b2} :catch_86

    goto/16 :goto_79

    .line 604
    :catch_1b4
    move-exception v0

    goto :goto_15c
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/d/ae;)V
    .registers 15

    .prologue
    const/16 v11, 0x40e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 634
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFileAsTargetName targetName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :try_start_20
    sget-object v3, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_135

    .line 638
    :try_start_23
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_5e

    move v0, v2

    .line 639
    :goto_32
    if-eqz v0, :cond_60

    .line 641
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v1, "has another same task is saving temp file"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    if-eqz p2, :cond_5c

    .line 644
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 645
    if-nez v0, :cond_59

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    :cond_59
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_5c
    monitor-exit v3

    .line 752
    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    move v0, v1

    .line 638
    goto :goto_32

    .line 654
    :cond_60
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveTempFileStatusMap put id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_23 .. :try_end_88} :catchall_164

    .line 659
    :try_start_88
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_200

    .line 665
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v5, "targetFile exist"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aS()Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v5

    .line 667
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v5, v0, :cond_167

    .line 668
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v5, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    if-eqz p2, :cond_c3

    .line 670
    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    .line 671
    :cond_c3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V

    move v0, v1

    .line 709
    :cond_cd
    :goto_cd
    if-eqz v0, :cond_5d

    .line 710
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/io/File;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v0

    .line 711
    sget-object v5, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    if-eq v0, v5, :cond_245

    .line 712
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40e

    const-string v4, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile md5 is invalid : %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/i;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 712
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 714
    if-eqz p2, :cond_113

    .line 715
    invoke-interface {p2, v1}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 716
    :cond_113
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V

    .line 717
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 718
    if-eqz p1, :cond_5d

    .line 719
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x40e

    const-string v2, "tempFile md5 is invalid ,but delete failed"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    invoke-static {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_133} :catch_135

    goto/16 :goto_5d

    .line 747
    :catch_135
    move-exception v0

    .line 748
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFileAsTargetName throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    if-eqz p2, :cond_5d

    .line 750
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const-string v2, "saveFileAsTargetName"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_5d

    .line 657
    :catchall_164
    move-exception v0

    :try_start_165
    monitor-exit v3
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    :try_start_166
    throw v0

    .line 673
    :cond_167
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1ca

    .line 674
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x3ed

    const-string v7, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist and target file is exist but md5 verify invalid :%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 675
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/b/i;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 674
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 676
    if-eqz p2, :cond_1a5

    .line 677
    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 678
    :cond_1a5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V

    move v0, v1

    .line 682
    :goto_1ae
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_cd

    .line 683
    if-nez v0, :cond_1cc

    .line 684
    if-eqz p1, :cond_cd

    .line 685
    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x40e

    const-string v7, "tempFile is not exist and target file is exist but md5 verify invalid, delete target file failed"

    invoke-direct {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v6

    invoke-static {p1, p0, v5, v6}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto/16 :goto_cd

    :cond_1ca
    move v0, v2

    .line 680
    goto :goto_1ae

    .line 689
    :cond_1cc
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x40d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/b/i;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " failed!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v5}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 690
    if-eqz p2, :cond_1f5

    .line 691
    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 692
    :cond_1f5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V

    move v0, v1

    goto/16 :goto_cd

    .line 697
    :cond_200
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_242

    .line 698
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v5, 0x3ed

    const-string v6, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 698
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 700
    if-eqz p2, :cond_237

    .line 701
    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 702
    :cond_237
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_23f
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_23f} :catch_135

    move v0, v1

    .line 703
    goto/16 :goto_cd

    :cond_242
    move v0, v2

    .line 704
    goto/16 :goto_cd

    .line 723
    :cond_245
    const/4 v0, 0x0

    .line 725
    :try_start_246
    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_249
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_246 .. :try_end_249} :catch_29c
    .catch Ljava/lang/Throwable; {:try_start_246 .. :try_end_249} :catch_135

    move-result v3

    if-nez v3, :cond_24d

    move v1, v2

    .line 730
    :cond_24d
    :goto_24d
    if-eqz v1, :cond_28c

    .line 731
    if-nez v0, :cond_27d

    .line 732
    :try_start_251
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x40e

    const-string v2, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 732
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 735
    :cond_27d
    if-eqz p2, :cond_282

    .line 736
    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 737
    :cond_282
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_5d

    .line 739
    :cond_28c
    if-eqz p2, :cond_291

    .line 740
    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V

    .line 741
    :cond_291
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(IZLcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_29a
    .catch Ljava/lang/Throwable; {:try_start_251 .. :try_end_29a} :catch_135

    goto/16 :goto_5d

    .line 726
    :catch_29c
    move-exception v0

    goto :goto_24d
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 774
    if-eqz p0, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 789
    :cond_14
    return-void

    .line 776
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v4, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFileFromExistFileWithSameName: existFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " targetFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 782
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x40d

    const-string v2, "targetPath file exists but can\'t delete"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 784
    :cond_6b
    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9b

    move v0, v1

    .line 785
    :goto_72
    if-eqz v0, :cond_14

    .line 786
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x3e9

    const-string v4, "Can\'t copy the exist file(%s/%s) to the target file(%s/%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 787
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 786
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9b
    move v0, v2

    .line 784
    goto :goto_72
.end method

.method public static a(Ljava/io/IOException;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 1319
    if-nez p1, :cond_4

    .line 1320
    const-string p1, ""

    .line 1322
    :cond_4
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1323
    instance-of v1, p0, Ljava/net/ConnectException;

    if-eqz v1, :cond_14

    .line 1324
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x411

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1325
    :cond_14
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_20

    .line 1326
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x41f

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1327
    :cond_20
    instance-of v1, p0, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_2c

    .line 1328
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x420

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1329
    :cond_2c
    instance-of v1, p0, Ljava/net/UnknownServiceException;

    if-eqz v1, :cond_38

    .line 1330
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x421

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1331
    :cond_38
    instance-of v1, p0, Ljava/net/PortUnreachableException;

    if-eqz v1, :cond_44

    .line 1332
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x422

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1333
    :cond_44
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_50

    .line 1334
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x418

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1335
    :cond_50
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_5c

    .line 1336
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x423

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1337
    :cond_5c
    instance-of v1, p0, Ljava/net/HttpRetryException;

    if-eqz v1, :cond_68

    .line 1338
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x424

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1339
    :cond_68
    instance-of v1, p0, Ljava/net/ProtocolException;

    if-eqz v1, :cond_74

    .line 1340
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x425

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1341
    :cond_74
    instance-of v1, p0, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_80

    .line 1342
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x426

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1343
    :cond_80
    instance-of v1, p0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_8c

    .line 1344
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x427

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1345
    :cond_8c
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_98

    .line 1346
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x428

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1347
    :cond_98
    instance-of v1, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v1, :cond_a4

    .line 1348
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x429

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1349
    :cond_a4
    instance-of v1, p0, Ljava/io/EOFException;

    if-eqz v1, :cond_b0

    .line 1350
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x42a

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1351
    :cond_b0
    instance-of v1, p0, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v1, :cond_bc

    .line 1352
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x42b

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1353
    :cond_bc
    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_c8

    .line 1354
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3f3

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1355
    :cond_c8
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1356
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1358
    :cond_d6
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3ff

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3ec

    .line 1291
    const-string v0, ""

    .line 1292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c8

    move-object v1, p1

    .line 1294
    :goto_b
    instance-of v0, p0, Lcom/ss/android/socialbase/downloader/e/a;

    if-eqz v0, :cond_36

    move-object v0, p0

    .line 1295
    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Ljava/lang/String;)V

    .line 1296
    check-cast p0, Lcom/ss/android/socialbase/downloader/e/a;

    throw p0

    .line 1297
    :cond_36
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_46

    .line 1298
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3f3

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1299
    :cond_46
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1300
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x418

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1301
    :cond_58
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->e(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1302
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/c;

    const/16 v2, 0x19c

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(IILjava/lang/String;)V

    throw v0

    .line 1303
    :cond_6a
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1304
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/c;

    const/16 v2, 0x1a0

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(IILjava/lang/String;)V

    throw v0

    .line 1305
    :cond_7c
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1306
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x417

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1307
    :cond_8e
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1308
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x419

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1309
    :cond_a0
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1310
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x411

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1311
    :cond_b2
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_bc

    .line 1312
    check-cast p0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/io/IOException;Ljava/lang/String;)V

    .line 1316
    return-void

    .line 1314
    :cond_bc
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3e8

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c8
    move-object v1, v0

    goto/16 :goto_b
.end method

.method public static a()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1156
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 1157
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1165
    :goto_b
    return v0

    .line 1159
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    if-eqz v1, :cond_2b

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->i:Ljava/lang/Boolean;

    .line 1165
    :goto_24
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    .line 1163
    :cond_2b
    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->i:Ljava/lang/Boolean;

    goto :goto_24
.end method

.method public static a(I)Z
    .registers 2

    .prologue
    .line 891
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_a

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_a

    if-nez p0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(ILjava/lang/String;)Z
    .registers 6

    .prologue
    const/16 v3, 0xce

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 881
    const/high16 v2, 0x1000000

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 882
    if-eq p0, v3, :cond_10

    if-ne p0, v1, :cond_11

    :cond_10
    move v0, v1

    .line 887
    :cond_11
    :goto_11
    return v0

    .line 884
    :cond_12
    const/16 v2, 0x190

    if-ge p0, v2, :cond_11

    .line 887
    if-eq p0, v3, :cond_22

    if-eq p0, v1, :cond_22

    const-string v2, "bytes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_22
    move v0, v1

    goto :goto_11
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1043
    const/4 v0, -0x3

    if-ne p0, v0, :cond_b

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/m/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1044
    const/4 v0, 0x1

    .line 1046
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1051
    :try_start_2
    const-string v0, "connectivity"

    .line 1052
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1053
    if-nez v0, :cond_d

    .line 1063
    :cond_c
    :goto_c
    return v2

    .line 1055
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1059
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_24

    move-result v0

    if-ne v1, v0, :cond_22

    move v0, v1

    :goto_20
    move v2, v0

    goto :goto_c

    :cond_22
    move v0, v2

    goto :goto_20

    .line 1060
    :catch_24
    move-exception v0

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 420
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 423
    :cond_9
    :goto_9
    return v0

    .line 422
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 423
    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 3

    .prologue
    .line 1282
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v0

    const/16 v1, 0x41b

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1426
    if-nez p0, :cond_5

    .line 1452
    :cond_4
    :goto_4
    return v0

    .line 1429
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    .line 1431
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x408

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x409

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x40a

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x3f0

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x402

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x403

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x414

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x3fc

    if-ne v2, v3, :cond_2f

    :cond_2d
    move v0, v1

    .line 1440
    goto :goto_4

    .line 1444
    :cond_2f
    const/16 v3, 0x419

    if-eq v2, v3, :cond_4

    const/16 v3, 0x41f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3ee

    if-eq v2, v3, :cond_4

    .line 1447
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    const-wide/32 v4, 0x800000

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move v0, v1

    .line 1449
    goto :goto_4
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;ZLjava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 431
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 445
    :cond_17
    :goto_17
    return v0

    .line 436
    :cond_18
    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v1

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;
    :try_end_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_39} :catch_3d

    if-ne v1, v2, :cond_17

    .line 438
    const/4 v0, 0x1

    goto :goto_17

    .line 441
    :catch_3d
    move-exception v1

    .line 442
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_17
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 798
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 799
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 819
    :cond_1f
    :goto_1f
    return v0

    .line 802
    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 803
    if-eqz v1, :cond_55

    .line 804
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_55

    .line 805
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x41d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' directory cannot be created"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_53
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_5 .. :try_end_53} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_53} :catch_b0

    .line 814
    :catch_53
    move-exception v0

    .line 815
    throw v0

    .line 808
    :cond_55
    :try_start_55
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile: srcFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 810
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is read-only and delete failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b0
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_55 .. :try_end_b0} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_b0} :catch_b0

    .line 816
    :catch_b0
    move-exception v1

    .line 817
    const-string v2, "CopyFile"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 812
    :cond_b8
    :try_start_b8
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_bb
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_b8 .. :try_end_bb} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_b0

    .line 813
    const/4 v0, 0x1

    goto/16 :goto_1f
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1225
    if-nez p0, :cond_4

    .line 1228
    :cond_3
    :goto_3
    return v0

    .line 1227
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_22

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "time out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "Time-out"

    .line 1229
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_22
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1561
    if-ne p0, p1, :cond_5

    .line 1562
    const/4 v0, 0x1

    .line 1575
    :cond_4
    :goto_4
    return v0

    .line 1564
    :cond_5
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1568
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1572
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1573
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1575
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/i/c;)J
    .registers 7

    .prologue
    const-wide/16 v0, -0x1

    .line 164
    if-nez p0, :cond_5

    .line 183
    :cond_4
    :goto_4
    return-wide v0

    .line 167
    :cond_5
    const-string v2, "Content-Range"

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
    const-string v3, "bytes (\\d+)-(\\d+)/\\d+"

    .line 173
    :try_start_13
    const-string v3, "bytes (\\d+)-(\\d+)/\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 174
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 177
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_3a

    move-result-wide v0

    .line 178
    sub-long/2addr v0, v4

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_4

    .line 180
    :catch_3a
    move-exception v2

    .line 181
    sget-object v3, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse content-length from content-range failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static b(Ljava/util/List;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 366
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->o()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 367
    goto :goto_7

    .line 368
    :cond_1a
    return-wide v2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    const/4 v0, 0x0

    .line 360
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "%s.temp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 348
    const/4 p1, 0x0

    .line 354
    :cond_d
    :goto_d
    return-object p1

    .line 350
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object p1, p0

    .line 353
    goto :goto_d
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1456
    if-nez p1, :cond_7

    .line 1457
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 382
    if-nez p0, :cond_3

    .line 394
    :cond_2
    :goto_2
    return-void

    .line 385
    :cond_3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "anti_hijack_dir"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_2

    .line 387
    const-string v1, "install_desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 390
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_22
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->h(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static b(Ljava/io/File;Ljava/io/File;Z)V
    .registers 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 826
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' exists but is a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_2d
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    .line 830
    :try_start_35
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_f1
    .catchall {:try_start_35 .. :try_end_38} :catchall_13f

    move-result-object v3

    .line 829
    const/4 v10, 0x0

    .line 831
    :try_start_3a
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_e1
    .catchall {:try_start_3a .. :try_end_41} :catchall_128

    .line 829
    const/4 v9, 0x0

    .line 832
    :try_start_42
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_d1
    .catchall {:try_start_42 .. :try_end_45} :catchall_106

    move-result-object v2

    .line 829
    const/4 v8, 0x0

    .line 833
    :try_start_47
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    .line 834
    const-wide/16 v4, 0x0

    .line 836
    :goto_4d
    cmp-long v6, v4, v14

    if-gez v6, :cond_67

    .line 837
    sub-long v6, v14, v4

    .line 838
    const-wide/32 v16, 0x1e00000

    cmp-long v16, v6, v16

    if-lez v16, :cond_5d

    const-wide/32 v6, 0x1e00000

    .line 839
    :cond_5d
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_60} :catch_109
    .catchall {:try_start_47 .. :try_end_60} :catchall_170

    move-result-wide v6

    .line 840
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-nez v16, :cond_ca

    .line 845
    :cond_67
    if-eqz v2, :cond_6e

    if-eqz v8, :cond_101

    :try_start_6b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_cc
    .catchall {:try_start_6b .. :try_end_6e} :catchall_106

    :cond_6e
    :goto_6e
    if-eqz v13, :cond_75

    if-eqz v9, :cond_12b

    :try_start_72
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_122
    .catchall {:try_start_72 .. :try_end_75} :catchall_128

    :cond_75
    :goto_75
    if-eqz v3, :cond_7c

    if-eqz v10, :cond_142

    :try_start_79
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_139
    .catchall {:try_start_79 .. :try_end_7c} :catchall_13f

    :cond_7c
    :goto_7c
    if-eqz v12, :cond_83

    if-eqz v11, :cond_156

    :try_start_80
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_150

    .line 847
    :cond_83
    :goto_83
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 848
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 849
    cmp-long v6, v2, v4

    if-eqz v6, :cond_164

    .line 850
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy full contents from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' Expected length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 843
    :cond_ca
    add-long/2addr v4, v6

    .line 844
    goto :goto_4d

    .line 845
    :catch_cc
    move-exception v2

    :try_start_cd
    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_106

    goto :goto_6e

    .line 829
    :catch_d1
    move-exception v2

    :try_start_d2
    throw v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    .line 845
    :catchall_d3
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    :goto_d9
    if-eqz v13, :cond_e0

    if-eqz v4, :cond_135

    :try_start_dd
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e0} :catch_130
    .catchall {:try_start_dd .. :try_end_e0} :catchall_128

    :cond_e0
    :goto_e0
    :try_start_e0
    throw v2
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e1} :catch_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_128

    .line 829
    :catch_e1
    move-exception v2

    :try_start_e2
    throw v2
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e3

    .line 845
    :catchall_e3
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    :goto_e9
    if-eqz v3, :cond_f0

    if-eqz v4, :cond_14c

    :try_start_ed
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f0} :catch_147
    .catchall {:try_start_ed .. :try_end_f0} :catchall_13f

    :cond_f0
    :goto_f0
    :try_start_f0
    throw v2
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f1} :catch_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_13f

    .line 829
    :catch_f1
    move-exception v2

    :try_start_f2
    throw v2
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    .line 845
    :catchall_f3
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_f9
    if-eqz v12, :cond_100

    if-eqz v3, :cond_160

    :try_start_fd
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_100} :catch_15b

    :cond_100
    :goto_100
    throw v2

    :cond_101
    :try_start_101
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_104} :catch_d1
    .catchall {:try_start_101 .. :try_end_104} :catchall_106

    goto/16 :goto_6e

    :catchall_106
    move-exception v2

    move-object v4, v9

    goto :goto_d9

    .line 829
    :catch_109
    move-exception v4

    :try_start_10a
    throw v4
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    .line 845
    :catchall_10b
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_111
    if-eqz v2, :cond_118

    if-eqz v5, :cond_11e

    :try_start_115
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_118} :catch_119
    .catchall {:try_start_115 .. :try_end_118} :catchall_106

    :cond_118
    :goto_118
    :try_start_118
    throw v4

    :catch_119
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_118

    :cond_11e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_121} :catch_d1
    .catchall {:try_start_118 .. :try_end_121} :catchall_106

    goto :goto_118

    :catch_122
    move-exception v2

    :try_start_123
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_75

    :catchall_128
    move-exception v2

    move-object v4, v10

    goto :goto_e9

    :cond_12b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_75

    :catch_130
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e0

    :cond_135
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_123 .. :try_end_138} :catch_e1
    .catchall {:try_start_123 .. :try_end_138} :catchall_128

    goto :goto_e0

    :catch_139
    move-exception v2

    :try_start_13a
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7c

    :catchall_13f
    move-exception v2

    move-object v3, v11

    goto :goto_f9

    :cond_142
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto/16 :goto_7c

    :catch_147
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f0

    :cond_14c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_14f} :catch_f1
    .catchall {:try_start_13a .. :try_end_14f} :catchall_13f

    goto :goto_f0

    :catch_150
    move-exception v2

    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_83

    :cond_156
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_83

    :catch_15b
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_100

    :cond_160
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    goto :goto_100

    .line 853
    :cond_164
    if-eqz p2, :cond_16f

    .line 854
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 856
    :cond_16f
    return-void

    .line 845
    :catchall_170
    move-exception v4

    move-object v5, v8

    goto :goto_111
.end method

.method public static b()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1169
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->g()Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static b(I)Z
    .registers 2

    .prologue
    .line 895
    const/16 v0, 0xce

    if-eq p0, v0, :cond_8

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(J)Z
    .registers 4

    .prologue
    .line 899
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1068
    :try_start_1
    const-string v0, "connectivity"

    .line 1069
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1070
    if-nez v0, :cond_d

    move v0, v1

    .line 1081
    :goto_c
    return v0

    .line 1073
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1074
    if-nez v0, :cond_15

    move v0, v1

    .line 1075
    goto :goto_c

    .line 1077
    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v0

    goto :goto_c

    .line 1078
    :catch_1a
    move-exception v0

    move v0, v1

    .line 1081
    goto :goto_c
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 3

    .prologue
    .line 1286
    instance-of v0, p0, Lcom/ss/android/socialbase/downloader/e/c;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/c;->c()I

    move-result v0

    const/16 v1, 0x19c

    if-eq v0, v1, :cond_19

    check-cast p0, Lcom/ss/android/socialbase/downloader/e/c;

    .line 1287
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/c;->c()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_1b

    :cond_19
    const/4 v0, 0x1

    .line 1286
    :goto_1a
    return v0

    .line 1287
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFile1: src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 861
    if-nez v0, :cond_61

    .line 862
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 864
    :try_start_34
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveFile2: src:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_61} :catch_62

    .line 870
    :cond_61
    :goto_61
    return v0

    .line 866
    :catch_62
    move-exception v1

    .line 867
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_61
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1233
    if-nez p0, :cond_6

    move v0, v1

    .line 1242
    :cond_5
    :goto_5
    return v0

    .line 1235
    :cond_6
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    instance-of v3, p0, Lcom/ss/android/socialbase/downloader/e/c;

    if-eqz v3, :cond_28

    .line 1237
    check-cast p0, Lcom/ss/android/socialbase/downloader/e/c;

    .line 1238
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/c;->c()I

    move-result v3

    const/16 v4, 0x193

    if-eq v3, v4, :cond_5

    :cond_1a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "403"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1242
    :cond_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "Forbidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_36
    move v0, v1

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 514
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 515
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_10

    .line 516
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 525
    :goto_f
    return-wide v0

    .line 518
    :cond_10
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_25

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_f

    .line 520
    :catch_1c
    move-exception v0

    .line 521
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x41a

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 522
    :catch_25
    move-exception v0

    .line 523
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x41c

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Ljava/util/List;)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 1528
    .line 1529
    if-eqz p0, :cond_47

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1530
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1531
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-lez v1, :cond_33

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_48

    :cond_33
    cmp-long v1, v2, v4

    if-eqz v1, :cond_3f

    .line 1532
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-lez v1, :cond_48

    .line 1533
    :cond_3f
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    move-wide v0, v2

    :goto_44
    move-wide v2, v0

    .line 1535
    goto :goto_f

    :cond_46
    move-wide v4, v2

    .line 1537
    :cond_47
    return-wide v4

    :cond_48
    move-wide v0, v2

    goto :goto_44
.end method

.method public static c(I)Lcom/ss/android/socialbase/downloader/b/h;
    .registers 3

    .prologue
    .line 1474
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    .line 1475
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_d

    .line 1476
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    .line 1479
    :cond_c
    :goto_c
    return-object v0

    .line 1477
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_c

    .line 1478
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1098
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;

    .line 1099
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1120
    :goto_8
    return-object v0

    .line 1103
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 1104
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1105
    if-eqz v0, :cond_5a

    .line 1106
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1107
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1f

    .line 1108
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1109
    const-string v1, "Process"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_4f
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;

    .line 1112
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_55} :catch_56

    goto :goto_8

    .line 1116
    :catch_56
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1119
    :cond_5a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;

    .line 1120
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->c:Ljava/lang/String;

    goto :goto_8
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 411
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 413
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 417
    :cond_3c
    return-void
.end method

.method public static c()Z
    .registers 3

    .prologue
    .line 1175
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1176
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1184
    :goto_a
    return v0

    .line 1178
    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":downloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->j:Ljava/lang/Boolean;

    .line 1184
    :goto_3d
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 1182
    :cond_44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/f;->j:Ljava/lang/Boolean;

    goto :goto_3d
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Y()Z

    move-result v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/i/c;)Z
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 903
    if-nez p0, :cond_7

    .line 909
    :cond_6
    :goto_6
    return v0

    .line 906
    :cond_7
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 907
    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-interface {p0, v3}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/i/c;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :cond_25
    move v0, v1

    goto :goto_6

    .line 909
    :cond_27
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/i/c;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    :goto_2f
    move v0, v1

    goto :goto_6

    :cond_31
    move v1, v0

    goto :goto_2f
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1246
    if-nez p0, :cond_4

    .line 1249
    :cond_3
    :goto_3
    return v0

    .line 1248
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "network not available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static d(Lcom/ss/android/socialbase/downloader/g/c;)J
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 1512
    if-nez p0, :cond_8

    .line 1513
    const-wide/16 v0, -0x1

    .line 1524
    :cond_7
    :goto_7
    return-wide v0

    .line 1515
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v0

    .line 1517
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 1518
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    goto :goto_7

    .line 1519
    :cond_1f
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2f

    .line 1520
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/util/List;)J

    move-result-wide v0

    .line 1521
    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    :cond_2f
    move-wide v0, v2

    goto :goto_7
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1086
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 1093
    :cond_9
    :goto_9
    return-object v0

    .line 1088
    :cond_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1089
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1090
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1091
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->a([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_9

    .line 1092
    :catch_22
    move-exception v1

    goto :goto_9
.end method

.method public static d()Z
    .registers 2

    .prologue
    .line 1198
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 874
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 875
    :cond_c
    const/4 v0, 0x0

    .line 877
    :goto_d
    return v0

    .line 876
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_d
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1253
    if-nez p0, :cond_4

    .line 1256
    :cond_3
    :goto_3
    return v0

    .line 1255
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Exception in connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static e(Lcom/ss/android/socialbase/downloader/g/c;)J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 1541
    if-nez p0, :cond_6

    .line 1557
    :goto_5
    return-wide v2

    .line 1543
    :cond_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v1

    .line 1545
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v4

    .line 1547
    if-le v4, v0, :cond_2e

    .line 1548
    :goto_18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aQ()Z

    move-result v5

    .line 1549
    if-eqz v5, :cond_35

    .line 1550
    if-eqz v0, :cond_30

    .line 1551
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_35

    .line 1552
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/util/List;)J

    move-result-wide v0

    :goto_2c
    move-wide v2, v0

    .line 1557
    goto :goto_5

    .line 1547
    :cond_2e
    const/4 v0, 0x0

    goto :goto_18

    .line 1554
    :cond_30
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    goto :goto_2c

    :cond_35
    move-wide v0, v2

    goto :goto_2c
.end method

.method private static e()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1126
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1128
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_84
    .catchall {:try_start_1 .. :try_end_2f} :catchall_74

    .line 1131
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    :goto_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_46

    .line 1133
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3e} :catch_3f
    .catchall {:try_start_2f .. :try_end_3e} :catchall_82

    goto :goto_34

    .line 1139
    :catch_3f
    move-exception v2

    .line 1142
    :goto_40
    if-eqz v1, :cond_45

    .line 1144
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_7e

    .line 1150
    :cond_45
    :goto_45
    return-object v0

    .line 1135
    :cond_46
    :try_start_46
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1136
    const-string v3, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_6b} :catch_3f
    .catchall {:try_start_46 .. :try_end_6b} :catchall_82

    move-result-object v0

    .line 1142
    if-eqz v1, :cond_45

    .line 1144
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_45

    .line 1145
    :catch_72
    move-exception v1

    goto :goto_45

    .line 1142
    :catchall_74
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_78
    if-eqz v1, :cond_7d

    .line 1144
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_80

    .line 1147
    :cond_7d
    :goto_7d
    throw v0

    .line 1145
    :catch_7e
    move-exception v1

    goto :goto_45

    :catch_80
    move-exception v1

    goto :goto_7d

    .line 1142
    :catchall_82
    move-exception v0

    goto :goto_78

    .line 1139
    :catch_84
    move-exception v1

    move-object v1, v0

    goto :goto_40
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1194
    :cond_7
    :goto_7
    return v0

    .line 1190
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    if-eqz v1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1194
    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static e(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1268
    if-nez p0, :cond_4

    .line 1271
    :cond_3
    :goto_3
    return v0

    .line 1270
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Precondition Failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_32

    .line 1214
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1215
    const/16 v5, 0x1f

    if-le v4, v5, :cond_19

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_2e

    .line 1216
    :cond_19
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1218
    :cond_2e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 1221
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1275
    if-nez p0, :cond_4

    .line 1278
    :cond_3
    :goto_3
    return v0

    .line 1277
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Requested Range Not Satisfiable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 211
    if-nez p0, :cond_4

    .line 233
    :cond_3
    :goto_3
    return-object v0

    .line 216
    :cond_4
    :try_start_4
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->g:Ljava/util/regex/Pattern;

    if-nez v1, :cond_10

    .line 217
    const-string v1, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/m/f;->g:Ljava/util/regex/Pattern;

    .line 219
    :cond_10
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 221
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 224
    :cond_22
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->h:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2e

    .line 225
    const-string v1, "attachment;\\s*filename\\s*=\\s*(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/m/f;->h:Ljava/util/regex/Pattern;

    .line 227
    :cond_2e
    sget-object v1, Lcom/ss/android/socialbase/downloader/m/f;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    move-result-object v0

    goto :goto_3

    .line 231
    :catch_40
    move-exception v1

    goto :goto_3
.end method

.method public static g(Ljava/lang/Throwable;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    if-nez p0, :cond_6

    move v0, v1

    .line 1386
    :cond_5
    :goto_5
    return v0

    .line 1366
    :cond_6
    instance-of v2, p0, Lcom/ss/android/socialbase/downloader/e/a;

    if-eqz v2, :cond_41

    .line 1367
    check-cast p0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 1368
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    .line 1369
    const/16 v3, 0x3ee

    if-eq v2, v3, :cond_5

    .line 1373
    const/16 v3, 0x3ff

    if-eq v2, v3, :cond_28

    const/16 v3, 0x40f

    if-eq v2, v3, :cond_28

    const/16 v3, 0x410

    if-eq v2, v3, :cond_28

    const/16 v3, 0x41e

    if-eq v2, v3, :cond_28

    const/16 v3, 0x428

    if-ne v2, v3, :cond_3f

    :cond_28
    move v2, v0

    .line 1378
    :goto_29
    if-eqz v2, :cond_59

    .line 1379
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1380
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "ENOSPC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3d
    move v0, v1

    goto :goto_5

    :cond_3f
    move v2, v1

    .line 1373
    goto :goto_29

    .line 1382
    :cond_41
    instance-of v2, p0, Ljava/io/IOException;

    if-eqz v2, :cond_59

    .line 1383
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1384
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "ENOSPC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_57
    move v0, v1

    goto :goto_5

    :cond_59
    move v0, v1

    .line 1386
    goto :goto_5
.end method

.method private static h(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 397
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDirIfEmpty on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 400
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 403
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/f;->a:Ljava/lang/String;

    const-string v1, "deleteDirIfEmpty return false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_3a
    return-void
.end method

.method public static h(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1393
    instance-of v1, p0, Lcom/ss/android/socialbase/downloader/e/a;

    if-nez v1, :cond_6

    .line 1419
    :cond_5
    :goto_5
    return v0

    .line 1396
    :cond_6
    check-cast p0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 1397
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v1

    .line 1398
    const/16 v2, 0x41f

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3ff

    if-eq v1, v2, :cond_58

    const/16 v2, 0x411

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3fe

    if-eq v1, v2, :cond_58

    const/16 v2, 0x418

    if-eq v1, v2, :cond_58

    const/16 v2, 0x420

    if-eq v1, v2, :cond_58

    const/16 v2, 0x421

    if-eq v1, v2, :cond_58

    const/16 v2, 0x422

    if-eq v1, v2, :cond_58

    const/16 v2, 0x423

    if-eq v1, v2, :cond_58

    const/16 v2, 0x424

    if-eq v1, v2, :cond_58

    const/16 v2, 0x425

    if-eq v1, v2, :cond_58

    const/16 v2, 0x42b

    if-eq v1, v2, :cond_58

    const/16 v2, 0x419

    if-eq v1, v2, :cond_58

    const/16 v2, 0x417

    if-eq v1, v2, :cond_58

    const/16 v2, 0x41b

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_58

    const/16 v2, 0x3f5

    if-ne v1, v2, :cond_5

    .line 1417
    :cond_58
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static i(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1463
    if-nez p0, :cond_5

    .line 1464
    const-string v0, ""

    .line 1470
    :goto_4
    return-object v0

    .line 1466
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    goto :goto_4

    .line 1467
    :catch_a
    move-exception v0

    .line 1468
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1470
    const-string v0, "throwable getMsg error"

    goto :goto_4
.end method
