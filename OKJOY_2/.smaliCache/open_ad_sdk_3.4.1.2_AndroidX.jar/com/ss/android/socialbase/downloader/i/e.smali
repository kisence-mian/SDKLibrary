.class public Lcom/ss/android/socialbase/downloader/i/e;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;

.field private static volatile d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/aj;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:[C

.field private static g:Ljava/util/regex/Pattern;

.field private static h:Ljava/util/regex/Pattern;

.field private static i:Landroid/net/ConnectivityManager;

.field private static j:Ljava/lang/Boolean;

.field private static k:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    const-class v0, Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    .line 91
    nop

    .line 92
    const-string v0, ".*\\d+ *- *(\\d+) */ *\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->b:Ljava/util/regex/Pattern;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->c:Ljava/lang/String;

    .line 113
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    .line 114
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/i/e;->e:Landroid/util/SparseArray;

    .line 116
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_30

    sput-object v1, Lcom/ss/android/socialbase/downloader/i/e;->f:[C

    .line 232
    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->g:Ljava/util/regex/Pattern;

    .line 233
    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->h:Ljava/util/regex/Pattern;

    return-void

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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)D
    .registers 4

    .line 625
    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)I
    .registers 2

    .line 567
    invoke-static {p1, p0}, Lcom/ss/android/ttmd5/TTMd5;->checkMd5(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Object;I)I
    .registers 2

    .line 1877
    :try_start_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 1878
    :catch_7
    move-exception p0

    .line 1879
    return p1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/g;)J
    .registers 5

    .line 171
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    .line 172
    return-wide v0

    .line 174
    :cond_5
    const-string v2, "Content-Length"

    invoke-static {p0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    nop

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 178
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v0

    goto :goto_23

    .line 181
    :cond_1e
    :try_start_1e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_24

    .line 184
    nop

    .line 186
    :goto_23
    return-wide v0

    .line 182
    :catch_24
    move-exception p0

    .line 183
    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    .line 1173
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->i:Landroid/net/ConnectivityManager;

    .line 1174
    if-nez v0, :cond_f

    .line 1175
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1176
    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->i:Landroid/net/ConnectivityManager;

    .line 1178
    :cond_f
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 277
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_42

    .line 280
    :cond_1e
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p2, 0x40b

    new-instance v1, Ljava/io/IOException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "path is :%s, path is directory:%B:"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 282
    :cond_42
    :goto_42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_89

    .line 284
    :try_start_48
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_59

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_65

    .line 286
    :cond_59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_73

    .line 287
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_69

    .line 295
    :cond_65
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 298
    goto :goto_89

    .line 288
    :cond_69
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x406

    const-string p2, "download savePath directory can not created"

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 291
    :cond_73
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 292
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x407

    const-string p2, "download savePath is not directory"

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_80} :catch_80

    .line 296
    :catch_80
    move-exception p0

    .line 297
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p2, 0x40c

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 301
    :cond_89
    :goto_89
    new-instance p0, Lcom/ss/android/socialbase/downloader/model/e;

    invoke-direct {p0, v0, p2}, Lcom/ss/android/socialbase/downloader/model/e;-><init>(Ljava/io/File;I)V

    return-object p0

    .line 276
    :cond_8f
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x3fd

    new-instance p2, Ljava/io/IOException;

    const-string v0, "path must be not empty"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 263
    nop

    .line 264
    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 267
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_15
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1885
    :try_start_0
    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_3

    return-object p0

    .line 1886
    :catch_3
    move-exception p0

    .line 1887
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 154
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_2e

    .line 156
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 157
    :try_start_17
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_27

    .line 160
    goto :goto_2b

    .line 158
    :catch_27
    move-exception v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 163
    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_37

    .line 166
    move-object p0, v0

    goto :goto_3b

    .line 164
    :catch_37
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :goto_3b
    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1732
    if-nez p1, :cond_5

    .line 1733
    const-string p0, ""

    return-object p0

    .line 1736
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_12

    goto :goto_18

    .line 1740
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1737
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;
    .registers 4

    .line 1750
    nop

    .line 1752
    if-eqz p1, :cond_63

    .line 1753
    const-string v0, "download_dir"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1754
    if-eqz p1, :cond_63

    .line 1755
    const-string v0, "dir_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1758
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1760
    :cond_24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1761
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    goto :goto_51

    .line 1765
    :cond_45
    :try_start_45
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_50

    .line 1767
    move-object p1, p0

    goto :goto_51

    .line 1766
    :catchall_50
    move-exception p0

    .line 1770
    :goto_51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xff

    if-le p0, v0, :cond_65

    .line 1771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    .line 1776
    :cond_63
    const-string p1, ""

    :cond_65
    :goto_65
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 356
    :cond_d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 360
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 361
    :cond_13
    return-object v1

    .line 363
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 364
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    .line 366
    :cond_1f
    invoke-static {p0, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    :goto_23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 368
    return-object v1

    .line 369
    :cond_2a
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "%s.tp"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .line 125
    if-eqz p0, :cond_9

    .line 127
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "bytes is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 12

    .line 134
    if-eqz p0, :cond_3a

    .line 136
    if-ltz p1, :cond_34

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_34

    .line 138
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 140
    nop

    .line 141
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, p2, :cond_2e

    .line 142
    add-int v5, v3, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 143
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/ss/android/socialbase/downloader/i/e;->f:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    .line 144
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 146
    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 137
    :cond_34
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 135
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/util/SparseArray;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TK;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TK;>;"
        }
    .end annotation

    .line 1616
    if-nez p0, :cond_4

    .line 1617
    const/4 p0, 0x0

    return-object p0

    .line 1619
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1620
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1621
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    .line 1622
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1623
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1624
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1626
    :cond_22
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 306
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 308
    if-nez v3, :cond_1d

    .line 309
    goto :goto_e

    .line 310
    :cond_1d
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 311
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 313
    if-eqz v4, :cond_4d

    .line 314
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/socialbase/downloader/model/b;

    .line 315
    invoke-virtual {v6, v3}, Lcom/ss/android/socialbase/downloader/model/b;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 316
    goto :goto_3a

    .line 317
    :cond_4a
    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/model/b;->a(Ljava/util/List;)V

    .line 319
    :cond_4d
    goto :goto_8a

    .line 320
    :cond_4e
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/b;

    .line 321
    if-eqz v4, :cond_6f

    .line 322
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v5

    .line 323
    if-nez v5, :cond_68

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/model/b;->a(Ljava/util/List;)V

    .line 327
    :cond_68
    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/model/b;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 328
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    goto :goto_8a

    .line 330
    :cond_6f
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 331
    if-nez v4, :cond_87

    .line 332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    :cond_87
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_8a
    goto :goto_e

    .line 341
    :cond_8b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    const/4 v2, 0x0

    :goto_91
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 343
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 344
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 347
    :cond_a5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 348
    goto :goto_ad

    .line 347
    :cond_ac
    move-object p0, v1

    .line 350
    :goto_ad
    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 1061
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/c;

    .line 1062
    if-eqz v1, :cond_22

    .line 1063
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_22
    goto :goto_11

    .line 1067
    :cond_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 1068
    new-instance p0, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v1, "If-Match"

    invoke-direct {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_33
    new-instance p0, Lcom/ss/android/socialbase/downloader/model/c;

    const-string p1, "Accept-Encoding"

    const-string v1, "identity"

    invoke-direct {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    const-wide/16 p0, 0x0

    cmp-long p0, p4, p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-gtz p0, :cond_56

    .line 1073
    new-array p0, p1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "bytes=%s-"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6b

    .line 1075
    :cond_56
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    const-string p1, "bytes=%s-%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1077
    :goto_6b
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v1, "Range"

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    sget-object p1, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " range CurrentOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " EndOffset:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", range = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/b;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 1053
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 6

    .line 874
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 875
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 876
    if-eqz v1, :cond_29

    .line 877
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/aj;

    .line 878
    if-eqz v2, :cond_28

    .line 879
    if-eqz p1, :cond_25

    .line 880
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    goto :goto_28

    .line 882
    :cond_25
    invoke-interface {v2, p2}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 885
    :cond_28
    :goto_28
    goto :goto_11

    .line 887
    :cond_29
    sget-object p1, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTempSaveCallback id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object p1, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 889
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public static a(Landroid/util/SparseArray;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TK;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TK;>;)V"
        }
    .end annotation

    .line 1631
    if-eqz p1, :cond_28

    if-nez p0, :cond_5

    goto :goto_28

    .line 1634
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1635
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1636
    if-eqz v1, :cond_26

    .line 1637
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1638
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1640
    :cond_26
    goto :goto_d

    .line 1641
    :cond_27
    return-void

    .line 1632
    :cond_28
    :goto_28
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 398
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 399
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/depend/aj;)V
    .registers 12

    .line 629
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFileAsTargetName targetName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v1, 0x40e

    :try_start_1e
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    nop

    .line 633
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    .line 637
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_1a4

    const-string v6, "targetFile exist"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_93

    .line 638
    :try_start_53
    const-string v5, "tempFile not exist"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 640
    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 642
    const-string p0, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    if-eqz p1, :cond_75

    .line 644
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    .line 645
    :cond_75
    return-void

    .line 647
    :cond_76
    if-eqz v4, :cond_10f

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 648
    invoke-virtual {v4, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->registerTempFileSaveCallback(Lcom/ss/android/socialbase/downloader/depend/aj;)V

    .line 649
    return-void

    .line 653
    :cond_82
    const-string v5, "targetFile not exist"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    if-eqz v4, :cond_10f

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 655
    invoke-virtual {v4, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->registerTempFileSaveCallback(Lcom/ss/android/socialbase/downloader/depend/aj;)V

    .line 656
    return-void

    .line 660
    :cond_93
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 661
    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 663
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 664
    const-string p0, "tempFile exist , targetFile exists and md5 check valid"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    if-eqz p1, :cond_b4

    .line 666
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    .line 667
    :cond_b4
    return-void

    .line 669
    :cond_b5
    if-eqz v4, :cond_c1

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 670
    invoke-virtual {v4, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->registerTempFileSaveCallback(Lcom/ss/android/socialbase/downloader/depend/aj;)V

    .line 671
    return-void

    .line 673
    :cond_c1
    if-eqz v4, :cond_c6

    .line 674
    invoke-virtual {v4, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setIsSaveTempFile(Z)V

    .line 676
    :cond_c6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveFileAsTargetName: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 678
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x40d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/i/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 679
    if-eqz p1, :cond_109

    .line 680
    invoke-interface {p1, p0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 681
    :cond_109
    if-eqz v4, :cond_10e

    .line 682
    invoke-virtual {v4, v7, p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->handleTempSaveCallback(ZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 684
    :cond_10e
    return-void

    .line 692
    :cond_10f
    if-eqz v4, :cond_114

    .line 693
    invoke-virtual {v4, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setIsSaveTempFile(Z)V
    :try_end_114
    .catchall {:try_start_53 .. :try_end_114} :catchall_1a4

    .line 696
    :cond_114
    nop

    .line 698
    const/4 v0, 0x0

    :try_start_116
    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v5
    :try_end_11a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_116 .. :try_end_11a} :catch_11d
    .catchall {:try_start_116 .. :try_end_11a} :catchall_1a4

    xor-int/2addr v5, v8

    .line 701
    move-object v6, v0

    goto :goto_120

    .line 699
    :catch_11d
    move-exception v5

    .line 700
    move-object v6, v5

    move v5, v7

    .line 703
    :goto_120
    const/4 v9, 0x2

    if-eqz v5, :cond_162

    .line 704
    if-nez v6, :cond_157

    .line 705
    :try_start_125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 706
    new-instance v6, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s), temp file is exist: %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v5

    const/4 p0, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, p0

    .line 706
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 709
    :cond_157
    if-eqz p1, :cond_15c

    .line 710
    invoke-interface {p1, v6}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 711
    :cond_15c
    if-eqz v4, :cond_1a3

    .line 712
    invoke-virtual {v4, v7, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->handleTempSaveCallback(ZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_1a3

    .line 716
    :cond_162
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v5, "download_finish_check_ttmd5"

    invoke-virtual {v2, v5, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 717
    if-lez v2, :cond_199

    .line 718
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 719
    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTTMd5CheckStatus(I)V

    .line 720
    if-lt v2, v9, :cond_199

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_199

    .line 721
    if-eqz p1, :cond_195

    .line 722
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x40a

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 724
    :cond_195
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 725
    return-void

    .line 728
    :cond_199
    if-eqz p1, :cond_19e

    .line 729
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    .line 731
    :cond_19e
    if-eqz v4, :cond_1a3

    .line 732
    invoke-virtual {v4, v8, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->handleTempSaveCallback(ZLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_1a3
    .catchall {:try_start_125 .. :try_end_1a3} :catchall_1a4

    .line 739
    :cond_1a3
    :goto_1a3
    goto :goto_1d1

    .line 735
    :catchall_1a4
    move-exception p0

    .line 736
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFileAsTargetName throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    if-eqz p1, :cond_1d1

    .line 738
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "saveFileAsTargetName"

    invoke-static {p0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 740
    :cond_1d1
    :goto_1d1
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/depend/aj;)V
    .registers 20

    .line 743
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFileAsTargetName targetName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/16 v4, 0x40e

    :try_start_24
    sget-object v5, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_243

    .line 747
    :try_start_27
    sget-object v6, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_39

    move v6, v8

    goto :goto_3a

    :cond_39
    move v6, v9

    .line 748
    :goto_3a
    if-eqz v6, :cond_64

    .line 750
    const-string v0, "has another same task is saving temp file"

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    if-eqz v2, :cond_62

    .line 753
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->e:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 754
    if-nez v0, :cond_5f

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    sget-object v3, Lcom/ss/android/socialbase/downloader/i/e;->e:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    :cond_5f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_62
    monitor-exit v5

    return-void

    .line 763
    :cond_64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveTempFileStatusMap put id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v6, Lcom/ss/android/socialbase/downloader/i/e;->d:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 766
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_27 .. :try_end_8a} :catchall_240

    .line 768
    :try_start_8a
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    nop

    .line 770
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    nop

    .line 773
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/16 v10, 0x3ed

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v7, :cond_163

    .line 774
    const-string v7, "targetFile exist"

    invoke-static {v3, v7}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/lang/String;)I

    move-result v7

    .line 776
    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result v15

    if-eqz v15, :cond_dc

    .line 777
    const-string v0, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTTMd5CheckStatus(I)V

    .line 779
    if-eqz v2, :cond_d2

    .line 780
    invoke-interface/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    .line 782
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0, v8, v13}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    move v3, v9

    goto/16 :goto_162

    .line 784
    :cond_dc
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11c

    .line 785
    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v15, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist and target file is exist but md5 verify invalid :%s"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v8

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v11

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/e;->b(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v12

    .line 785
    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v10, v13}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 787
    if-eqz v2, :cond_113

    .line 788
    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 790
    :cond_113
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10, v9, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 791
    move v3, v9

    goto :goto_11d

    .line 792
    :cond_11c
    move v3, v8

    .line 794
    :goto_11d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_162

    .line 795
    if-nez v3, :cond_136

    .line 796
    if-eqz v0, :cond_162

    .line 797
    new-instance v7, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v10, "tempFile is not exist and target file is exist but md5 verify invalid, delete target file failed"

    invoke-direct {v7, v4, v10}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v10

    invoke-static {v0, v1, v7, v10}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    goto :goto_162

    .line 800
    :cond_136
    nop

    .line 801
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x40d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/e;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 802
    if-eqz v2, :cond_15a

    .line 803
    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 805
    :cond_15a
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3, v9, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    move v3, v9

    .line 809
    :cond_162
    :goto_162
    goto :goto_19d

    .line 810
    :cond_163
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19c

    .line 811
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v3, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist"

    new-array v7, v12, [Ljava/lang/Object;

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v14

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v11

    .line 811
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v10, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 813
    if-eqz v2, :cond_193

    .line 814
    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 816
    :cond_193
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3, v9, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_19a
    .catchall {:try_start_8a .. :try_end_19a} :catchall_243

    .line 817
    move v3, v9

    goto :goto_19d

    .line 818
    :cond_19c
    move v3, v8

    .line 823
    :goto_19d
    if-eqz v3, :cond_23f

    .line 824
    nop

    .line 826
    :try_start_1a0
    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_1a4
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1a0 .. :try_end_1a4} :catch_1a7
    .catchall {:try_start_1a0 .. :try_end_1a4} :catchall_243

    xor-int/2addr v0, v8

    .line 832
    const/4 v3, 0x0

    goto :goto_1be

    .line 827
    :catch_1a7
    move-exception v0

    .line 828
    nop

    .line 829
    :try_start_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v5, "fix_file_rename_failed"

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 830
    move-object v3, v0

    move v0, v8

    goto :goto_1be

    .line 829
    :cond_1bc
    move-object v3, v0

    move v0, v9

    .line 834
    :goto_1be
    if-eqz v0, :cond_1f4

    .line 835
    if-nez v3, :cond_1e7

    .line 836
    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v0, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s)"

    new-array v5, v12, [Ljava/lang/Object;

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 836
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 839
    :cond_1e7
    if-eqz v2, :cond_1ec

    .line 840
    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 842
    :cond_1ec
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0, v9, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_23f

    .line 845
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v3, "download_finish_check_ttmd5"

    invoke-virtual {v0, v3, v14}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 846
    if-lez v0, :cond_232

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 848
    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTTMd5CheckStatus(I)V

    .line 849
    if-lt v0, v14, :cond_232

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_232

    .line 850
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v5, 0x40a

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 851
    if-eqz v2, :cond_227

    .line 852
    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 854
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3, v9, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 855
    invoke-static/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 856
    return-void

    .line 859
    :cond_232
    if-eqz v2, :cond_237

    .line 860
    invoke-interface/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    .line 862
    :cond_237
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(IZLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_23f
    .catchall {:try_start_1a9 .. :try_end_23f} :catchall_243

    .line 870
    :cond_23f
    :goto_23f
    goto :goto_270

    .line 766
    :catchall_240
    move-exception v0

    :try_start_241
    monitor-exit v5
    :try_end_242
    .catchall {:try_start_241 .. :try_end_242} :catchall_240

    :try_start_242
    throw v0
    :try_end_243
    .catchall {:try_start_242 .. :try_end_243} :catchall_243

    .line 865
    :catchall_243
    move-exception v0

    .line 866
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFileAsTargetName throwable "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    if-eqz v2, :cond_270

    .line 868
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v3, "saveFileAsTargetName"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 871
    :cond_270
    :goto_270
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 893
    if-eqz p0, :cond_9c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_9c

    .line 895
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    sget-object v2, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileFromExistFileWithSameName: existFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targetFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_6b

    .line 901
    :cond_61
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x40d

    const-string v0, "targetPath file exists but can\'t delete"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 903
    :cond_6b
    :goto_6b
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 904
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_74

    .line 908
    return-void

    .line 905
    :cond_74
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3e9

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 906
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, p1

    .line 905
    const-string p0, "Can\'t copy the exist file(%s/%s) to the target file(%s/%s)"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 894
    :cond_9c
    :goto_9c
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .registers 3

    .line 402
    if-nez p0, :cond_3

    .line 403
    return-void

    .line 406
    :cond_3
    if-eqz p1, :cond_10

    .line 407
    :try_start_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_10
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 411
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    .line 415
    :cond_24
    goto :goto_29

    .line 413
    :catchall_25
    move-exception p0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    :goto_29
    return-void
.end method

.method public static a(Ljava/io/IOException;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1451
    if-nez p1, :cond_4

    .line 1452
    const-string p1, ""

    .line 1454
    :cond_4
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1455
    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_d6

    .line 1457
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_ce

    .line 1459
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-nez v0, :cond_c6

    .line 1461
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-nez v0, :cond_be

    .line 1463
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-nez v0, :cond_b6

    .line 1465
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_ae

    .line 1467
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_a6

    .line 1469
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-nez v0, :cond_9e

    .line 1471
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_96

    .line 1473
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-nez v0, :cond_8e

    .line 1475
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_86

    .line 1477
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_7e

    .line 1479
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-nez v0, :cond_76

    .line 1481
    instance-of v0, p0, Ljava/io/EOFException;

    if-nez v0, :cond_6e

    .line 1483
    instance-of v0, p0, Lokhttp3/internal/http2/StreamResetException;

    if-nez v0, :cond_66

    .line 1485
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_5e

    .line 1487
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 1488
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x3ee

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1490
    :cond_56
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x3ff

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1486
    :cond_5e
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x3f3

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1484
    :cond_66
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x42b

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1482
    :cond_6e
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x42a

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1480
    :cond_76
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x429

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1478
    :cond_7e
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x428

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1476
    :cond_86
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x427

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1474
    :cond_8e
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x426

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1472
    :cond_96
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x425

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1470
    :cond_9e
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x424

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1468
    :cond_a6
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x423

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1466
    :cond_ae
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x418

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1464
    :cond_b6
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x422

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1462
    :cond_be
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x421

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1460
    :cond_c6
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x420

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1458
    :cond_ce
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x41f

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1456
    :cond_d6
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x411

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1423
    nop

    .line 1424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1425
    move-object v0, p1

    goto :goto_b

    .line 1424
    :cond_9
    const-string v0, ""

    .line 1426
    :goto_b
    instance-of v1, p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v1, :cond_a3

    .line 1429
    instance-of v1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_97

    .line 1431
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1433
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->e(Ljava/lang/Throwable;)Z

    move-result v1

    const/16 v2, 0x3ec

    if-nez v1, :cond_7f

    .line 1435
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->f(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 1437
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 1439
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1441
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1443
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_43

    .line 1444
    check-cast p0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/IOException;Ljava/lang/String;)V

    .line 1448
    return-void

    .line 1446
    :cond_43
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3e8

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1442
    :cond_4f
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x411

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1440
    :cond_5b
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x419

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1438
    :cond_67
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x417

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1436
    :cond_73
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/b;

    const/16 v1, 0x1a0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw p1

    .line 1434
    :cond_7f
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/b;

    const/16 v1, 0x19c

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw p1

    .line 1432
    :cond_8b
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x418

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1430
    :cond_97
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3f3

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1427
    :cond_a3
    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->setErrorMsg(Ljava/lang/String;)V

    .line 1428
    throw p0
.end method

.method public static a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")V"
        }
    .end annotation

    .line 1843
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getThrottleNetSpeed()J

    move-result-wide v0

    .line 1844
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_18

    .line 1845
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_throttle_net_speed"

    invoke-direct {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1847
    :cond_18
    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .registers 4

    .line 1711
    if-nez p0, :cond_3

    .line 1712
    return-void

    .line 1714
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 1715
    if-nez v2, :cond_c

    goto :goto_14

    .line 1717
    :cond_c
    :try_start_c
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 1720
    goto :goto_14

    .line 1718
    :catchall_10
    move-exception v2

    .line 1719
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1714
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1722
    :cond_17
    return-void
.end method

.method public static a()Z
    .registers 3

    .line 1280
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1283
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->j:Ljava/lang/Boolean;

    goto :goto_3a

    .line 1287
    :cond_23
    if-eqz v0, :cond_34

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    :cond_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->j:Ljava/lang/Boolean;

    .line 1289
    :goto_3a
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(I)Z
    .registers 2

    .line 562
    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static a(ILjava/lang/String;)Z
    .registers 6

    .line 1000
    const/high16 v0, 0x1000000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    const/16 v1, 0xce

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    .line 1001
    if-eq p0, v1, :cond_10

    if-ne p0, v3, :cond_11

    :cond_10
    move v2, v3

    :cond_11
    return v2

    .line 1003
    :cond_12
    const/16 v0, 0x190

    if-lt p0, v0, :cond_17

    .line 1004
    return v2

    .line 1006
    :cond_17
    if-eq p0, v1, :cond_23

    if-eq p0, v3, :cond_23

    const-string p0, "bytes"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_23
    move v2, v3

    :cond_24
    return v2
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1164
    const/4 v0, -0x3

    if-ne p0, v0, :cond_b

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 1165
    const/4 p0, 0x1

    return p0

    .line 1167
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 487
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_12

    .line 489
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    .line 490
    if-nez p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 488
    :cond_12
    :goto_12
    return v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 2

    .line 1406
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p0

    const/16 v0, 0x41b

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 7

    .line 1558
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1559
    return v0

    .line 1561
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p0

    .line 1563
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq p0, v1, :cond_49

    const/16 v1, 0x408

    if-eq p0, v1, :cond_49

    const/16 v1, 0x409

    if-eq p0, v1, :cond_49

    const/16 v1, 0x40a

    if-eq p0, v1, :cond_49

    const/16 v1, 0x3f0

    if-eq p0, v1, :cond_49

    const/16 v1, 0x402

    if-eq p0, v1, :cond_49

    const/16 v1, 0x403

    if-eq p0, v1, :cond_49

    const/16 v1, 0x414

    if-eq p0, v1, :cond_49

    const/16 v1, 0x3fc

    if-ne p0, v1, :cond_2e

    goto :goto_49

    .line 1576
    :cond_2e
    const/16 v1, 0x419

    if-eq p0, v1, :cond_48

    const/16 v1, 0x41f

    if-eq p0, v1, :cond_48

    const/16 v1, 0x3ee

    if-eq p0, v1, :cond_48

    .line 1579
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide p0

    const-wide/32 v3, 0x800000

    cmp-long p0, p0, v3

    if-gez p0, :cond_48

    .line 1581
    return v2

    .line 1584
    :cond_48
    return v0

    .line 1572
    :cond_49
    :goto_49
    return v2
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z
    .registers 6

    .line 498
    const/4 v0, 0x0

    if-nez p1, :cond_41

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_41

    .line 503
    :cond_18
    :try_start_18
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_37} :catch_3c

    if-eqz p0, :cond_3b

    .line 505
    const/4 p0, 0x1

    return p0

    .line 510
    :cond_3b
    goto :goto_40

    .line 508
    :catch_3c
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 512
    :goto_40
    return v0

    .line 499
    :cond_41
    :goto_41
    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 3

    .line 1813
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1814
    return v0

    .line 1816
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1817
    return v0

    .line 1819
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_1a

    if-nez p0, :cond_18

    .line 1820
    return v0

    .line 1822
    :cond_18
    const/4 p0, 0x1

    return p0

    .line 1823
    :catch_1a
    move-exception p0

    .line 1824
    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 911
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 917
    const/4 v0, 0x0

    if-eqz p0, :cond_bd

    if-eqz p1, :cond_bd

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 918
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto/16 :goto_bd

    .line 921
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1
    :try_end_25
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_25} :catch_bb
    .catchall {:try_start_5 .. :try_end_25} :catchall_b4

    .line 922
    const-string v2, "Destination \'"

    if-eqz v1, :cond_55

    .line 923
    :try_start_29
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_55

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_55

    .line 924
    :cond_36
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x41d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' directory cannot be created"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 927
    :cond_55
    :goto_55
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile: srcFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " destFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_af

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_af

    .line 929
    :cond_92
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' exists but is read-only and delete failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 931
    :cond_af
    :goto_af
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_b2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_29 .. :try_end_b2} :catch_bb
    .catchall {:try_start_29 .. :try_end_b2} :catchall_b4

    .line 932
    const/4 p0, 0x1

    return p0

    .line 935
    :catchall_b4
    move-exception p0

    .line 936
    const-string p1, "CopyFile"

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 938
    return v0

    .line 933
    :catch_bb
    move-exception p0

    .line 934
    throw p0

    .line 919
    :cond_bd
    :goto_bd
    return v0
.end method

.method public static a(Ljava/lang/Object;Z)Z
    .registers 2

    .line 1893
    :try_start_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 1894
    :catch_7
    move-exception p0

    .line 1895
    return p1
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1349
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1350
    return v0

    .line 1351
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_24

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "time out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 1353
    const-string p0, "Time-out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 1352
    :goto_25
    return v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)Z"
        }
    .end annotation

    .line 1693
    if-ne p0, p1, :cond_4

    .line 1694
    const/4 p0, 0x1

    return p0

    .line 1696
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_a

    goto :goto_24

    .line 1700
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 1701
    return v0

    .line 1704
    :cond_15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1705
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1707
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1697
    :cond_24
    :goto_24
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {p2, v0}, Lcom/ss/android/ttmd5/TTMd5;->checkMd5(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/network/g;)J
    .registers 6

    .line 190
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    .line 191
    return-wide v0

    .line 193
    :cond_5
    const-string v2, "Content-Range"

    invoke-static {p0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 195
    return-wide v0

    .line 197
    :cond_12
    nop

    .line 199
    :try_start_13
    const-string v2, "bytes (\\d+)-(\\d+)/\\d+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 200
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 202
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 203
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_3b

    .line 204
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    .line 208
    :cond_3a
    goto :goto_54

    .line 206
    :catch_3b
    move-exception p0

    .line 207
    sget-object v2, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse content-length from content-range failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_54
    return-wide v0
.end method

.method public static b(Ljava/lang/String;)J
    .registers 6

    .line 218
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 220
    :cond_5
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 221
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_30

    .line 223
    const/4 v3, 0x1

    :try_start_10
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_16} :catch_17

    return-wide v0

    .line 224
    :catch_17
    move-exception v2

    .line 225
    sget-object v2, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse instance length failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_30
    return-wide v0
.end method

.method public static b(Ljava/util/List;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)J"
        }
    .end annotation

    .line 390
    nop

    .line 391
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/b;

    .line 392
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->o()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 393
    goto :goto_7

    .line 394
    :cond_19
    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ttmd5 check code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    sparse-switch p0, :sswitch_data_c2

    goto/16 :goto_c0

    .line 600
    :sswitch_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "unknown error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    goto/16 :goto_c0

    .line 597
    :sswitch_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "get file md5 error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    goto/16 :goto_c0

    .line 594
    :sswitch_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "file not exist"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    goto :goto_c0

    .line 591
    :sswitch_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ttmd5 tag parser error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    goto :goto_c0

    .line 588
    :sswitch_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ttmd5 version not support"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    goto :goto_c0

    .line 585
    :sswitch_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "md5 empty"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    goto :goto_c0

    .line 582
    :sswitch_98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "md5 not match"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    goto :goto_c0

    .line 579
    :sswitch_ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "md5 match"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    nop

    .line 604
    :goto_c0
    return-object v0

    nop

    :sswitch_data_c2
    .sparse-switch
        0x0 -> :sswitch_ac
        0x1 -> :sswitch_98
        0x2 -> :sswitch_84
        0x3 -> :sswitch_70
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_48
        0x6 -> :sswitch_33
        0x63 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1854
    if-eqz p0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 1857
    :cond_9
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "fix_get_http_resp_head_ignore_case"

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 1860
    if-nez v1, :cond_1b

    .line 1862
    return-object v0

    .line 1864
    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1866
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1868
    :cond_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1870
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    :cond_37
    return-object v0

    .line 1855
    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 374
    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 377
    move-object p0, p1

    goto :goto_17

    .line 379
    :cond_16
    nop

    .line 380
    :goto_17
    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1588
    if-nez p1, :cond_7

    .line 1589
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1591
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 419
    if-nez p0, :cond_3

    .line 420
    return-void

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 423
    const-string v1, "download_dir"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_7a

    .line 426
    const-string v2, "ins_desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 429
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_26
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 435
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 438
    :cond_34
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 443
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    :goto_52
    if-eqz v1, :cond_7a

    if-eqz v0, :cond_7a

    .line 447
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 448
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->j(Ljava/lang/String;)Z

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_52

    .line 457
    :cond_7a
    return-void
.end method

.method private static b(Ljava/io/File;Ljava/io/File;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_30

    .line 945
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_30
    :goto_30
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 949
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_fc

    .line 948
    nop

    .line 950
    :try_start_3a
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_eb

    .line 948
    nop

    .line 951
    :try_start_40
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_dc

    .line 948
    nop

    .line 952
    :try_start_45
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    .line 953
    nop

    .line 954
    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    .line 955
    :goto_4e
    cmp-long v3, v16, v12

    if-gez v3, :cond_6e

    .line 956
    sub-long v3, v12, v16

    .line 957
    const-wide/32 v5, 0x1e00000

    cmp-long v7, v3, v5

    if-lez v7, :cond_5d

    move-wide v7, v5

    goto :goto_5e

    :cond_5d
    move-wide v7, v3

    .line 958
    :goto_5e
    move-object v3, v11

    move-object v4, v9

    move-wide/from16 v5, v16

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v3
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_cb

    .line 959
    cmp-long v5, v3, v14

    if-nez v5, :cond_6b

    .line 960
    goto :goto_6e

    .line 962
    :cond_6b
    add-long v16, v16, v3

    .line 963
    goto :goto_4e

    .line 964
    :cond_6e
    :goto_6e
    if-eqz v11, :cond_73

    :try_start_70
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_dc

    :cond_73
    :try_start_73
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_eb

    if-eqz v9, :cond_7b

    :try_start_78
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_fc

    :cond_7b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 966
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 967
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 968
    cmp-long v6, v2, v4

    if-nez v6, :cond_94

    .line 972
    if-eqz p2, :cond_93

    .line 973
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 975
    :cond_93
    return-void

    .line 969
    :cond_94
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy full contents from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' to \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' Expected length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 948
    :catchall_cb
    move-exception v0

    move-object v1, v0

    :try_start_cd
    throw v1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    .line 964
    :catchall_ce
    move-exception v0

    move-object v3, v0

    if-eqz v11, :cond_db

    :try_start_d2
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_db

    :catchall_d6
    move-exception v0

    move-object v4, v0

    :try_start_d8
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_db
    :goto_db
    throw v3
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_dc

    .line 948
    :catchall_dc
    move-exception v0

    move-object v1, v0

    :try_start_de
    throw v1
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    .line 964
    :catchall_df
    move-exception v0

    move-object v3, v0

    :try_start_e1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    goto :goto_ea

    :catchall_e5
    move-exception v0

    move-object v4, v0

    :try_start_e7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ea
    throw v3
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_eb

    .line 948
    :catchall_eb
    move-exception v0

    move-object v1, v0

    :try_start_ed
    throw v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ee

    .line 964
    :catchall_ee
    move-exception v0

    move-object v3, v0

    if-eqz v9, :cond_fb

    :try_start_f2
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_fb

    :catchall_f6
    move-exception v0

    move-object v4, v0

    :try_start_f8
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fb
    :goto_fb
    throw v3
    :try_end_fc
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_fc

    .line 948
    :catchall_fc
    move-exception v0

    move-object v1, v0

    :try_start_fe
    throw v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    .line 964
    :catchall_ff
    move-exception v0

    move-object v3, v0

    :try_start_101
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_105

    goto :goto_10a

    :catchall_105
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10a
    throw v3
.end method

.method public static b()Z
    .registers 2

    .line 1293
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public static b(J)Z
    .registers 4

    .line 1018
    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 1183
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 1184
    if-nez p0, :cond_8

    .line 1185
    return v0

    .line 1186
    :cond_8
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1187
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1e

    .line 1190
    :cond_15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1f

    const/4 v1, 0x1

    if-ne v1, p0, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    .line 1188
    :cond_1e
    :goto_1e
    return v0

    .line 1191
    :catch_1f
    move-exception p0

    .line 1194
    return v0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 3

    .line 1410
    instance-of v0, p0, Lcom/ss/android/socialbase/downloader/exception/b;

    if-eqz v0, :cond_18

    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/b;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/b;->a()I

    move-result v0

    const/16 v1, 0x19c

    if-eq v0, v1, :cond_16

    .line 1411
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/b;->a()I

    move-result p0

    const/16 v0, 0x1a0

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 1410
    :goto_19
    return p0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 1903
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 1904
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 1903
    :goto_15
    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 978
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

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

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 980
    if-nez v1, :cond_62

    .line 981
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 983
    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFile2: src:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5e

    .line 987
    goto :goto_62

    .line 985
    :catchall_5e
    move-exception p0

    .line 986
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 989
    :cond_62
    :goto_62
    return v1
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 571
    invoke-static {p1, p0}, Lcom/ss/android/ttmd5/TTMd5;->checkMd5(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    .line 572
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 5

    .line 1357
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1358
    return v0

    .line 1359
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    instance-of v2, p0, Lcom/ss/android/socialbase/downloader/exception/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    .line 1361
    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/b;

    .line 1362
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/b;->a()I

    move-result p0

    const/16 v2, 0x193

    if-eq p0, v2, :cond_27

    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "403"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1363
    :cond_27
    return v3

    .line 1366
    :cond_28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_37

    const-string p0, "Forbidden"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    move v0, v3

    :cond_37
    return v0
.end method

.method public static c(J)J
    .registers 4

    .line 1850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static c(Ljava/util/List;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)J"
        }
    .end annotation

    .line 1660
    nop

    .line 1661
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_46

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1662
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v2, v0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1663
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_34

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_44

    :cond_34
    cmp-long v5, v2, v0

    if-eqz v5, :cond_40

    .line 1664
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_44

    .line 1665
    :cond_40
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    .line 1667
    :cond_44
    goto :goto_10

    .line 1662
    :cond_45
    move-wide v0, v2

    .line 1669
    :cond_46
    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 384
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 385
    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s.tp"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 477
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 478
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 480
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 484
    :cond_3c
    return-void
.end method

.method public static c()Z
    .registers 3

    .line 1299
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1302
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    if-eqz v0, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

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

    if-eqz v0, :cond_3c

    .line 1304
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->k:Ljava/lang/Boolean;

    goto :goto_43

    .line 1306
    :cond_3c
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/e;->k:Ljava/lang/Boolean;

    .line 1308
    :goto_43
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c(I)Z
    .registers 2

    .line 1010
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_d

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .line 1199
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 1200
    if-nez p0, :cond_8

    .line 1201
    return v0

    .line 1203
    :cond_8
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1204
    if-nez p0, :cond_f

    .line 1205
    return v0

    .line 1207
    :cond_f
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return p0

    .line 1208
    :catch_14
    move-exception p0

    .line 1211
    return v0
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 4

    .line 1415
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1416
    return v0

    .line 1418
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_1a

    .line 1419
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    .line 1418
    :cond_1b
    return v0
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 494
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForce()Z

    move-result v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/network/g;)Z
    .registers 8

    .line 1022
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1023
    return v0

    .line 1025
    :cond_4
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_27

    .line 1026
    const-string v1, "Transfer-Encoding"

    invoke-interface {p0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "chunked"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_26

    :cond_25
    move v0, v2

    :cond_26
    return v0

    .line 1028
    :cond_27
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_30

    move v0, v2

    :cond_30
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 557
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 558
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1370
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1371
    return v0

    .line 1372
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "network not available"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J
    .registers 6

    .line 1644
    if-nez p0, :cond_5

    .line 1645
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1647
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v0

    .line 1648
    nop

    .line 1649
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_20

    .line 1650
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    goto :goto_31

    .line 1651
    :cond_20
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_31

    .line 1652
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/util/List;)J

    move-result-wide v0

    .line 1653
    cmp-long p0, v0, v3

    if-ltz p0, :cond_31

    .line 1654
    move-wide v3, v0

    .line 1656
    :cond_31
    :goto_31
    return-wide v3
.end method

.method public static d(Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 610
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 611
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_10

    .line 612
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_1c

    .line 614
    :cond_10
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_19} :catch_27
    .catchall {:try_start_0 .. :try_end_19} :catchall_1e

    int-to-long v3, p0

    mul-long v0, v1, v3

    .line 620
    :goto_1c
    nop

    .line 621
    return-wide v0

    .line 618
    :catchall_1e
    move-exception p0

    .line 619
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x41c

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 616
    :catch_27
    move-exception p0

    .line 617
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x41a

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1228
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->c:Ljava/lang/String;

    .line 1229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1230
    return-object v0

    .line 1233
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1234
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1235
    if-eqz p0, :cond_55

    .line 1236
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1237
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_54

    .line 1238
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 1239
    const-string p0, "Process"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_4f
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/ss/android/socialbase/downloader/i/e;->c:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_53} :catch_56

    .line 1242
    return-object p0

    .line 1244
    :cond_54
    goto :goto_1f

    .line 1248
    :cond_55
    goto :goto_5a

    .line 1246
    :catch_56
    move-exception p0

    .line 1247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1249
    :goto_5a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->h()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/i/e;->c:Ljava/lang/String;

    .line 1250
    return-object p0
.end method

.method public static d()Z
    .registers 2

    .line 1322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static d(I)Z
    .registers 2

    .line 1014
    const/16 v0, 0xce

    if-eq p0, v0, :cond_b

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 993
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 995
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    .line 994
    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1377
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1378
    return v0

    .line 1379
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Exception in connect"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J
    .registers 7

    .line 1673
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 1674
    return-wide v0

    .line 1675
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v2

    .line 1676
    nop

    .line 1677
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v3

    .line 1679
    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 1680
    :goto_1b
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBreakpointAvailable()Z

    move-result v5

    .line 1681
    if-eqz v5, :cond_34

    .line 1682
    if-eqz v4, :cond_30

    .line 1683
    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne v3, p0, :cond_34

    .line 1684
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_34

    .line 1686
    :cond_30
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    .line 1689
    :cond_34
    :goto_34
    return-wide v0
.end method

.method public static e(I)Lcom/ss/android/socialbase/downloader/constants/g;
    .registers 3

    .line 1606
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    .line 1607
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_d

    .line 1608
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    goto :goto_17

    .line 1609
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_17

    .line 1610
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    .line 1611
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    .line 1780
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 1783
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getGlobalSaveDir()Ljava/io/File;

    move-result-object v1

    .line 1784
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1785
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1787
    :cond_17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1788
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3e

    if-ne v1, v3, :cond_2b

    .line 1789
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    if-le v1, v3, :cond_3e

    .line 1792
    :cond_2d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1793
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1794
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1798
    :cond_3e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->f()Ljava/io/File;

    move-result-object v1

    .line 1799
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1800
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1803
    :cond_4d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1804
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1805
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1808
    :cond_5e
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1216
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_24

    .line 1218
    :cond_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1219
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1220
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1221
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    return-object p0

    .line 1222
    :catch_22
    move-exception p0

    .line 1223
    return-object v0

    .line 1217
    :cond_24
    :goto_24
    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1392
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1393
    return v0

    .line 1394
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Precondition Failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static f()Ljava/io/File;
    .registers 2

    .line 1831
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 1834
    goto :goto_8

    .line 1832
    :catch_5
    move-exception v0

    .line 1833
    const-string v0, ""

    .line 1835
    :goto_8
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1836
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1838
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 3

    .line 1312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1313
    return v1

    .line 1314
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1316
    return v1

    .line 1318
    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1399
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1400
    return v0

    .line 1401
    :cond_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Requested Range Not Satisfiable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_33

    .line 1338
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1339
    const/16 v5, 0x1f

    if-le v4, v5, :cond_1e

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1a

    goto :goto_1e

    .line 1342
    :cond_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 1340
    :cond_1e
    :goto_1e
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1345
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g()Z
    .registers 2

    .line 1911
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 1912
    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static g(Ljava/lang/Throwable;)Z
    .registers 6

    .line 1495
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1496
    return v0

    .line 1498
    :cond_4
    instance-of v1, p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "ENOSPC"

    const/4 v3, 0x1

    if-eqz v1, :cond_42

    .line 1499
    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1500
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    .line 1501
    const/16 v4, 0x3ee

    if-ne v1, v4, :cond_16

    .line 1502
    return v3

    .line 1505
    :cond_16
    const/16 v4, 0x3ff

    if-eq v1, v4, :cond_2d

    const/16 v4, 0x40f

    if-eq v1, v4, :cond_2d

    const/16 v4, 0x410

    if-eq v1, v4, :cond_2d

    const/16 v4, 0x41e

    if-eq v1, v4, :cond_2d

    const/16 v4, 0x428

    if-ne v1, v4, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v1, v3

    .line 1510
    :goto_2e
    if-eqz v1, :cond_58

    .line 1511
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 1512
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    move v0, v3

    :cond_41
    return v0

    .line 1514
    :cond_42
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_58

    .line 1515
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1516
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_57

    move v0, v3

    :cond_57
    return v0

    .line 1514
    :cond_58
    nop

    .line 1518
    return v0
.end method

.method public static h(Ljava/lang/String;)J
    .registers 4

    .line 1916
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 1917
    return-wide v1

    .line 1919
    :cond_9
    nop

    .line 1920
    nop

    .line 1921
    const-string v0, "max-age=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1922
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1923
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1925
    const/4 v0, 0x1

    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1926
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_25

    .line 1929
    goto :goto_29

    .line 1927
    :catchall_25
    move-exception p0

    .line 1928
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1931
    :cond_29
    :goto_29
    return-wide v1
.end method

.method private static h()Ljava/lang/String;
    .registers 8

    .line 1254
    nop

    .line 1256
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1258
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cmdline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "iso-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_72

    .line 1261
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    :goto_37
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-lez v5, :cond_42

    .line 1263
    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1265
    :cond_42
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1266
    const-string v5, "Process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get processName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_68
    .catchall {:try_start_32 .. :try_end_68} :catchall_70

    .line 1272
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 1268
    return-object v2

    .line 1269
    :catchall_70
    move-exception v4

    goto :goto_74

    :catchall_72
    move-exception v3

    move-object v3, v2

    .line 1272
    :goto_74
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 1273
    nop

    .line 1274
    return-object v2
.end method

.method public static h(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1525
    instance-of v0, p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1526
    return v1

    .line 1528
    :cond_6
    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1529
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p0

    .line 1530
    const/16 v0, 0x41f

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3ff

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x411

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3fe

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x418

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x420

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x421

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x422

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x423

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x424

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x425

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x42b

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x419

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x417

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x41b

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3f3

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_59

    goto :goto_5a

    .line 1551
    :cond_59
    return v1

    .line 1549
    :cond_5a
    :goto_5a
    const/4 p0, 0x1

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 237
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 238
    return-object v0

    .line 242
    :cond_4
    :try_start_4
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->g:Ljava/util/regex/Pattern;

    if-nez v1, :cond_10

    .line 243
    const-string v1, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/i/e;->g:Ljava/util/regex/Pattern;

    .line 245
    :cond_10
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_22
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->h:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2e

    .line 251
    const-string v1, "attachment;\\s*filename\\s*=\\s*(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/i/e;->h:Ljava/util/regex/Pattern;

    .line 253
    :cond_2e
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/e;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 255
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    return-object p0

    .line 258
    :cond_3f
    goto :goto_41

    .line 257
    :catch_40
    move-exception p0

    .line 259
    :goto_41
    return-object v0
.end method

.method public static i(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 1595
    if-nez p0, :cond_5

    .line 1596
    const-string p0, ""

    return-object p0

    .line 1598
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p0

    .line 1599
    :catchall_a
    move-exception p0

    .line 1600
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1602
    const-string p0, "throwable getMsg error"

    return-object p0
.end method

.method private static j(Ljava/lang/String;)Z
    .registers 4

    .line 460
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/e;->a:Ljava/lang/String;

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

    .line 461
    nop

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    .line 463
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 465
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_3b

    .line 466
    const-string p0, "deleteDirIfEmpty return false"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v2

    .line 469
    :cond_3b
    const/4 p0, 0x1

    return p0

    .line 473
    :cond_3d
    return v2
.end method
