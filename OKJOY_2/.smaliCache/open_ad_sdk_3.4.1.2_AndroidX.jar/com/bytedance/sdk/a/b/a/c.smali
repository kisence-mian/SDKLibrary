.class public final Lcom/bytedance/sdk/a/b/a/c;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lcom/bytedance/sdk/a/b/ab;

.field public static final d:Lcom/bytedance/sdk/a/b/z;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Ljava/util/TimeZone;

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/bytedance/sdk/a/a/f;

.field private static final j:Lcom/bytedance/sdk/a/a/f;

.field private static final k:Lcom/bytedance/sdk/a/a/f;

.field private static final l:Lcom/bytedance/sdk/a/a/f;

.field private static final m:Lcom/bytedance/sdk/a/a/f;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/nio/charset/Charset;

.field private static final q:Ljava/nio/charset/Charset;

.field private static final r:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->b:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 56
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->d:Lcom/bytedance/sdk/a/b/z;

    .line 58
    const-string v0, "efbbbf"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->i:Lcom/bytedance/sdk/a/a/f;

    .line 59
    const-string v0, "feff"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->j:Lcom/bytedance/sdk/a/a/f;

    .line 60
    const-string v0, "fffe"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->k:Lcom/bytedance/sdk/a/a/f;

    .line 61
    const-string v0, "0000ffff"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->l:Lcom/bytedance/sdk/a/a/f;

    .line 62
    const-string v0, "ffff0000"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->m:Lcom/bytedance/sdk/a/a/f;

    .line 64
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    .line 65
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->f:Ljava/nio/charset/Charset;

    .line 66
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->n:Ljava/nio/charset/Charset;

    .line 67
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->o:Ljava/nio/charset/Charset;

    .line 68
    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->p:Ljava/nio/charset/Charset;

    .line 69
    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->q:Ljava/nio/charset/Charset;

    .line 74
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    .line 76
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/c$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->h:Ljava/util/Comparator;

    .line 93
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->r:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(C)I
    .registers 3

    .line 508
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    .line 509
    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 510
    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_22

    const/16 v1, 0x46

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 511
    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;II)I
    .registers 4

    .line 320
    nop

    :goto_1
    if-ge p1, p2, :cond_f

    .line 321
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 329
    return p1

    .line 327
    :sswitch_b
    nop

    .line 320
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 332
    :cond_f
    return p2

    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .registers 5

    .line 380
    nop

    :goto_1
    if-ge p1, p2, :cond_d

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_a

    return p1

    .line 380
    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 383
    :cond_d
    return p2
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    .line 369
    nop

    :goto_1
    if-ge p1, p2, :cond_12

    .line 370
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    return p1

    .line 369
    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 372
    :cond_12
    return p2
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 9

    .line 495
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_56

    .line 496
    if-eqz p3, :cond_4e

    .line 497
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 498
    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_35

    .line 499
    cmp-long p3, p1, v0

    if-nez p3, :cond_33

    if-gtz v2, :cond_1a

    goto :goto_33

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too small."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_33
    :goto_33
    long-to-int p0, p1

    return p0

    .line 498
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too large."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_4e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 495
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 302
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    .line 303
    aget-object v2, p1, v1

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 302
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .registers 3

    .line 504
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/AssertionError;

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Z)Ljava/lang/String;
    .registers 5

    .line 265
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 267
    :cond_2a
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_2e
    if-nez p1, :cond_40

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3f

    goto :goto_40

    .line 269
    :cond_3f
    goto :goto_59

    .line 268
    :cond_40
    :goto_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 269
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_59
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 396
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 398
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2d

    :cond_24
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 401
    :goto_2d
    if-nez v0, :cond_30

    return-object v1

    .line 402
    :cond_30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 403
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3e

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 408
    :cond_5d
    :try_start_5d
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    return-object v1

    .line 412
    :cond_6e
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;)Z

    move-result v0
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_72} :catch_76

    if-eqz v0, :cond_75

    .line 413
    return-object v1

    .line 416
    :cond_75
    return-object p0

    .line 417
    :catch_76
    move-exception p0

    .line 418
    return-object v1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 467
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .line 632
    nop

    .line 633
    nop

    .line 634
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    :goto_6
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_28

    .line 635
    move v4, v2

    .line 636
    :goto_c
    if-ge v4, v5, :cond_1b

    aget-byte v6, p0, v4

    if-nez v6, :cond_1b

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1b

    .line 637
    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    .line 639
    :cond_1b
    sub-int v5, v4, v2

    .line 640
    if-le v5, v3, :cond_25

    const/4 v6, 0x4

    if-lt v5, v6, :cond_25

    .line 641
    nop

    .line 642
    move v1, v2

    move v3, v5

    .line 634
    :cond_25
    add-int/lit8 v2, v4, 0x2

    goto :goto_6

    .line 647
    :cond_28
    new-instance v2, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 648
    nop

    :cond_2e
    :goto_2e
    array-length v4, p0

    if-ge v0, v4, :cond_58

    .line 649
    const/16 v4, 0x3a

    if-ne v0, v1, :cond_3f

    .line 650
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 651
    add-int/2addr v0, v3

    .line 652
    if-ne v0, v5, :cond_2e

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_2e

    .line 654
    :cond_3f
    if-lez v0, :cond_44

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 655
    :cond_44
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 656
    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    .line 657
    add-int/lit8 v0, v0, 0x2

    .line 658
    goto :goto_2e

    .line 660
    :cond_58
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/a/a/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->i:Lcom/bytedance/sdk/a/a/f;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/e;->a(JLcom/bytedance/sdk/a/a/f;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 472
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 473
    sget-object p0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    return-object p0

    .line 475
    :cond_15
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->j:Lcom/bytedance/sdk/a/a/f;

    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/e;->a(JLcom/bytedance/sdk/a/a/f;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 476
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 477
    sget-object p0, Lcom/bytedance/sdk/a/b/a/c;->n:Ljava/nio/charset/Charset;

    return-object p0

    .line 479
    :cond_28
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->k:Lcom/bytedance/sdk/a/a/f;

    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/e;->a(JLcom/bytedance/sdk/a/a/f;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 480
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 481
    sget-object p0, Lcom/bytedance/sdk/a/b/a/c;->o:Ljava/nio/charset/Charset;

    return-object p0

    .line 483
    :cond_3b
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->l:Lcom/bytedance/sdk/a/a/f;

    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/e;->a(JLcom/bytedance/sdk/a/a/f;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 484
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 485
    sget-object p0, Lcom/bytedance/sdk/a/b/a/c;->p:Ljava/nio/charset/Charset;

    return-object p0

    .line 487
    :cond_4e
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->m:Lcom/bytedance/sdk/a/a/f;

    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/e;->a(JLcom/bytedance/sdk/a/a/f;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 488
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 489
    sget-object p0, Lcom/bytedance/sdk/a/b/a/c;->q:Ljava/nio/charset/Charset;

    return-object p0

    .line 491
    :cond_61
    return-object p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 214
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/b/a/c$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .registers 10

    .line 100
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-ltz p0, :cond_12

    .line 103
    return-void

    .line 101
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    .line 117
    if-eqz p0, :cond_a

    .line 119
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 123
    goto :goto_a

    .line 122
    :catch_6
    move-exception p0

    goto :goto_a

    .line 120
    :catch_8
    move-exception p0

    .line 121
    throw p0

    .line 125
    :cond_a
    :goto_a
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 2

    .line 132
    if-eqz p0, :cond_13

    .line 134
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 140
    :goto_5
    goto :goto_13

    .line 139
    :catch_6
    move-exception p0

    goto :goto_13

    .line 137
    :catch_8
    move-exception p0

    .line 138
    throw p0

    .line 135
    :catch_a
    move-exception p0

    .line 136
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    goto :goto_5

    .line 136
    :cond_12
    throw p0

    .line 142
    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    .line 166
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c;->b(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 167
    :catch_5
    move-exception p0

    .line 168
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .registers 2

    .line 297
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 298
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 297
    :goto_1b
    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 109
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

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

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    .line 592
    nop

    .line 594
    move v0, p4

    :goto_2
    const/4 v1, 0x0

    if-ge p1, p2, :cond_46

    .line 595
    array-length v2, p3

    if-ne v0, v2, :cond_9

    return v1

    .line 598
    :cond_9
    if-eq v0, p4, :cond_16

    .line 599
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_14

    return v1

    .line 600
    :cond_14
    add-int/lit8 p1, p1, 0x1

    .line 604
    :cond_16
    nop

    .line 605
    move v2, p1

    move v3, v1

    .line 606
    :goto_19
    if-ge v2, p2, :cond_39

    .line 607
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 608
    const/16 v5, 0x30

    if-lt v4, v5, :cond_39

    const/16 v6, 0x39

    if-le v4, v6, :cond_28

    goto :goto_39

    .line 609
    :cond_28
    if-nez v3, :cond_2d

    if-eq p1, v2, :cond_2d

    .line 610
    return v1

    .line 611
    :cond_2d
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    .line 612
    const/16 v4, 0xff

    if-le v3, v4, :cond_36

    return v1

    .line 606
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 614
    :cond_39
    :goto_39
    sub-int p1, v2, p1

    .line 615
    if-nez p1, :cond_3e

    return v1

    .line 618
    :cond_3e
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    aput-byte v1, p3, v0

    .line 619
    move v0, p1

    move p1, v2

    goto :goto_2

    .line 621
    :cond_46
    add-int/lit8 p4, p4, 0x4

    if-eq v0, p4, :cond_4b

    return v1

    .line 622
    :cond_4b
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p1, v3

    .line 233
    array-length v5, p2

    move v6, v2

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p2, v6

    .line 234
    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1c

    .line 235
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_1f

    .line 233
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 232
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 240
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 309
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 310
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 312
    return-object v1
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 448
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 449
    const/16 v3, 0x1f

    if-le v2, v3, :cond_17

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    goto :goto_17

    .line 447
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 450
    :cond_17
    :goto_17
    return v1

    .line 453
    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/String;II)I
    .registers 4

    .line 340
    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_12

    .line 341
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 349
    add-int/lit8 p2, p2, 0x1

    return p2

    .line 347
    :sswitch_e
    nop

    .line 340
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 352
    :cond_12
    return p1

    nop

    :sswitch_data_14
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static b(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 178
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/t;->c()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    .line 179
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/t;->c_()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    .line 181
    :goto_1e
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    .line 183
    :try_start_2f
    new-instance p1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 184
    :goto_34
    const-wide/16 v7, 0x2000

    invoke-interface {p0, p1, v7, v8}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_44

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/c;->r()V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_43} :catch_70
    .catchall {:try_start_2f .. :try_end_43} :catchall_5a

    goto :goto_34

    .line 187
    :cond_44
    const/4 p1, 0x1

    .line 191
    cmp-long p2, v5, v3

    if-nez p2, :cond_51

    .line 192
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    goto :goto_59

    .line 194
    :cond_51
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    .line 187
    :goto_59
    return p1

    .line 191
    :catchall_5a
    move-exception p1

    cmp-long p2, v5, v3

    if-nez p2, :cond_67

    .line 192
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    goto :goto_6f

    .line 194
    :cond_67
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    .line 196
    :goto_6f
    throw p1

    .line 188
    :catch_70
    move-exception p1

    .line 189
    const/4 p1, 0x0

    .line 191
    cmp-long p2, v5, v3

    if-nez p2, :cond_7e

    .line 192
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    goto :goto_86

    .line 194
    :cond_7e
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    .line 189
    :goto_86
    return p1
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    array-length v1, p1

    if-eqz v1, :cond_27

    array-length v1, p2

    if-nez v1, :cond_c

    goto :goto_27

    .line 254
    :cond_c
    array-length v1, p1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    .line 255
    array-length v4, p2

    move v5, v0

    :goto_14
    if-ge v5, v4, :cond_23

    aget-object v6, p2, v5

    .line 256
    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    .line 257
    const/4 p0, 0x1

    return p0

    .line 255
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 254
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 261
    :cond_26
    return v0

    .line 252
    :cond_27
    :goto_27
    return v0
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    .line 359
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II)I

    move-result p1

    .line 360
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;II)I

    move-result p2

    .line 361
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .line 460
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 14

    .line 518
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 519
    nop

    .line 520
    nop

    .line 521
    nop

    .line 523
    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_c
    const/4 v7, 0x0

    if-ge p1, p2, :cond_81

    .line 524
    if-ne v4, v0, :cond_12

    return-object v7

    .line 527
    :cond_12
    add-int/lit8 v8, p1, 0x2

    if-gt v8, p2, :cond_2c

    const-string v9, "::"

    const/4 v10, 0x2

    invoke-virtual {p0, p1, v9, v3, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 529
    if-eq v5, v2, :cond_22

    return-object v7

    .line 530
    :cond_22
    nop

    .line 531
    add-int/lit8 v4, v4, 0x2

    .line 532
    nop

    .line 533
    move v5, v4

    if-ne v8, p2, :cond_2a

    goto :goto_81

    :cond_2a
    move v6, v8

    goto :goto_51

    .line 534
    :cond_2c
    if-eqz v4, :cond_50

    .line 536
    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v3, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 537
    add-int/lit8 p1, p1, 0x1

    move v6, p1

    goto :goto_51

    .line 538
    :cond_3b
    const-string v8, "."

    invoke-virtual {p0, p1, v8, v3, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 540
    add-int/lit8 p1, v4, -0x2

    invoke-static {p0, v6, p2, v1, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_4c

    return-object v7

    .line 541
    :cond_4c
    add-int/lit8 v4, v4, 0x2

    .line 542
    goto :goto_81

    .line 544
    :cond_4f
    return-object v7

    .line 534
    :cond_50
    move v6, p1

    .line 549
    :goto_51
    nop

    .line 550
    move v8, v3

    move p1, v6

    .line 551
    :goto_54
    if-ge p1, p2, :cond_67

    .line 552
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 553
    invoke-static {v9}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result v9

    .line 554
    if-ne v9, v2, :cond_61

    goto :goto_67

    .line 555
    :cond_61
    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v9

    .line 551
    add-int/lit8 p1, p1, 0x1

    goto :goto_54

    .line 557
    :cond_67
    :goto_67
    sub-int v9, p1, v6

    .line 558
    if-eqz v9, :cond_80

    const/4 v10, 0x4

    if-le v9, v10, :cond_6f

    goto :goto_80

    .line 561
    :cond_6f
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 562
    add-int/lit8 v4, v7, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 563
    goto :goto_c

    .line 558
    :cond_80
    :goto_80
    return-object v7

    .line 574
    :cond_81
    :goto_81
    if-eq v4, v0, :cond_92

    .line 575
    if-ne v5, v2, :cond_86

    return-object v7

    .line 576
    :cond_86
    sub-int p0, v4, v5

    rsub-int/lit8 p1, p0, 0x10

    invoke-static {v1, v5, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    invoke-static {v1, v5, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 581
    :cond_92
    :try_start_92
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_96
    .catch Ljava/net/UnknownHostException; {:try_start_92 .. :try_end_96} :catch_97

    return-object p0

    .line 582
    :catch_97
    move-exception p0

    .line 583
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 6

    .line 423
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 424
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 428
    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_16

    goto :goto_23

    .line 434
    :cond_16
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 435
    return v4

    .line 423
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 429
    :cond_23
    :goto_23
    return v4

    .line 438
    :cond_24
    return v0
.end method
