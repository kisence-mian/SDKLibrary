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
            "Ljava/util/Comparator",
            "<",
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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    new-array v0, v1, [B

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->b:[Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    invoke-static {v2, v0}, Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 55
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    invoke-static {v2, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->d:Lcom/bytedance/sdk/a/b/z;

    .line 57
    const-string v0, "efbbbf"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->i:Lcom/bytedance/sdk/a/a/f;

    .line 58
    const-string v0, "feff"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->j:Lcom/bytedance/sdk/a/a/f;

    .line 59
    const-string v0, "fffe"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->k:Lcom/bytedance/sdk/a/a/f;

    .line 60
    const-string v0, "0000ffff"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->l:Lcom/bytedance/sdk/a/a/f;

    .line 61
    const-string v0, "ffff0000"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->m:Lcom/bytedance/sdk/a/a/f;

    .line 63
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    .line 64
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->f:Ljava/nio/charset/Charset;

    .line 65
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->n:Ljava/nio/charset/Charset;

    .line 66
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->o:Ljava/nio/charset/Charset;

    .line 67
    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->p:Ljava/nio/charset/Charset;

    .line 68
    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->q:Ljava/nio/charset/Charset;

    .line 73
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    .line 75
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/c$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->h:Ljava/util/Comparator;

    .line 92
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c;->r:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(C)I
    .registers 2

    .prologue
    .line 507
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    .line 510
    :goto_a
    return v0

    .line 508
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 509
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 510
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;II)I
    .registers 5

    .prologue
    .line 319
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_b

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    move p2, v0

    .line 331
    :cond_b
    return p2

    .line 319
    :sswitch_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    nop

    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_c
        0xa -> :sswitch_c
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .registers 6

    .prologue
    .line 379
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_a

    .line 380
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_b

    move p2, v0

    .line 382
    :cond_a
    return p2

    .line 379
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    .prologue
    .line 368
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_f

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move p2, v0

    .line 371
    :cond_f
    return p2

    .line 368
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 494
    cmp-long v0, p1, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_29
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 497
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_4d
    cmp-long v2, v0, v4

    if-nez v2, :cond_6e

    cmp-long v2, p1, v4

    if-lez v2, :cond_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_6e
    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_10

    .line 302
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    .line 304
    :goto_c
    return v0

    .line 301
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .registers 3

    .prologue
    .line 503
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/AssertionError;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_29
    if-nez p1, :cond_39

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_54

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_54
    return-object v0

    .line 266
    :cond_55
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 395
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 397
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 400
    :goto_24
    if-nez v1, :cond_31

    .line 417
    :cond_26
    :goto_26
    return-object v0

    .line 398
    :cond_27
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_24

    .line 401
    :cond_31
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 402
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3f

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 403
    :cond_3f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 407
    :cond_5e
    :try_start_5e
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 411
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->d(Ljava/lang/String;)Z
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_71} :catch_76

    move-result v2

    if-nez v2, :cond_26

    move-object v0, v1

    .line 415
    goto :goto_26

    .line 416
    :catch_76
    move-exception v1

    goto :goto_26
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x3a

    const/4 v1, 0x0

    .line 631
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 633
    :goto_9
    array-length v4, p0

    if-ge v0, v4, :cond_29

    move v5, v0

    .line 635
    :goto_d
    if-ge v5, v8, :cond_1d

    aget-byte v4, p0, v5

    if-nez v4, :cond_1d

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1d

    .line 636
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_d

    .line 638
    :cond_1d
    sub-int v4, v5, v0

    .line 639
    if-le v4, v2, :cond_26

    const/4 v6, 0x4

    if-lt v4, v6, :cond_26

    move v2, v4

    move v3, v0

    .line 633
    :cond_26
    add-int/lit8 v0, v5, 0x2

    goto :goto_9

    .line 646
    :cond_29
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 647
    :cond_2e
    :goto_2e
    array-length v4, p0

    if-ge v1, v4, :cond_56

    .line 648
    if-ne v1, v3, :cond_3d

    .line 649
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 650
    add-int/2addr v1, v2

    .line 651
    if-ne v1, v8, :cond_2e

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_2e

    .line 653
    :cond_3d
    if-lez v1, :cond_42

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 654
    :cond_42
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 655
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    .line 656
    add-int/lit8 v1, v1, 0x2

    .line 657
    goto :goto_2e

    .line 659
    :cond_56
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .prologue
    .line 213
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/b/a/c$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .registers 10

    .prologue
    .line 99
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_18

    .line 100
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 102
    :cond_18
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 116
    if-eqz p0, :cond_5

    .line 118
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 124
    :cond_5
    :goto_5
    return-void

    .line 119
    :catch_6
    move-exception v0

    .line 120
    throw v0

    .line 121
    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 3

    .prologue
    .line 131
    if-eqz p0, :cond_5

    .line 133
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_10

    .line 141
    :cond_5
    :goto_5
    return-void

    .line 134
    :catch_6
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_5

    throw v0

    .line 136
    :catch_e
    move-exception v0

    .line 137
    throw v0

    .line 138
    :catch_10
    move-exception v0

    goto :goto_5
.end method

.method public static a(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 4

    .prologue
    .line 165
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c;->b(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 167
    :goto_4
    return v0

    .line 166
    :catch_5
    move-exception v0

    .line 167
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .registers 3

    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 297
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 296
    :goto_19
    return v0

    .line 297
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 108
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 591
    move v0, p1

    move v4, p4

    .line 593
    :goto_3
    if-ge v0, p2, :cond_4a

    .line 594
    array-length v2, p3

    if-ne v4, v2, :cond_a

    move v0, v1

    .line 621
    :goto_9
    return v0

    .line 597
    :cond_a
    if-eq v4, p4, :cond_18

    .line 598
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_9

    .line 599
    :cond_16
    add-int/lit8 v0, v0, 0x1

    :cond_18
    move v2, v1

    move v3, v0

    .line 605
    :goto_1a
    if-ge v3, p2, :cond_28

    .line 606
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 607
    const/16 v6, 0x30

    if-lt v5, v6, :cond_28

    const/16 v6, 0x39

    if-le v5, v6, :cond_2e

    .line 613
    :cond_28
    sub-int v0, v3, v0

    .line 614
    if-nez v0, :cond_42

    move v0, v1

    goto :goto_9

    .line 608
    :cond_2e
    if-nez v2, :cond_34

    if-eq v0, v3, :cond_34

    move v0, v1

    .line 609
    goto :goto_9

    .line 610
    :cond_34
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 611
    const/16 v5, 0xff

    if-le v2, v5, :cond_3f

    move v0, v1

    goto :goto_9

    .line 605
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 617
    :cond_42
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 618
    goto :goto_3

    .line 620
    :cond_4a
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_50

    move v0, v1

    goto :goto_9

    .line 621
    :cond_50
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    array-length v4, p1

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_22

    aget-object v5, p1, v2

    .line 232
    array-length v6, p2

    move v0, v1

    :goto_e
    if-ge v0, v6, :cond_1b

    aget-object v7, p2, v0

    .line 233
    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1f

    .line 234
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 232
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 239
    :cond_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 308
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 309
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 311
    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_17

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 448
    const/16 v3, 0x1f

    if-le v2, v3, :cond_13

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    .line 452
    :cond_13
    :goto_13
    return v0

    .line 446
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 452
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;II)I
    .registers 5

    .prologue
    .line 339
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, p1, :cond_d

    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 348
    add-int/lit8 p1, v0, 0x1

    .line 351
    :cond_d
    return p1

    .line 339
    :sswitch_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 340
    nop

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static b(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 177
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 178
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->c_()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 180
    :goto_1c
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    .line 182
    :try_start_2d
    new-instance v4, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v4}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 183
    :goto_32
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_53

    .line 184
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/a/c;->r()V
    :try_end_41
    .catch Ljava/io/InterruptedIOException; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_73

    goto :goto_32

    .line 187
    :catch_42
    move-exception v4

    .line 188
    const/4 v4, 0x0

    .line 190
    cmp-long v2, v0, v2

    if-nez v2, :cond_6a

    .line 191
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    :goto_4f
    move v0, v4

    .line 188
    :goto_50
    return v0

    :cond_51
    move-wide v0, v2

    .line 178
    goto :goto_1c

    .line 186
    :cond_53
    const/4 v4, 0x1

    .line 190
    cmp-long v2, v0, v2

    if-nez v2, :cond_61

    .line 191
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    :goto_5f
    move v0, v4

    .line 186
    goto :goto_50

    .line 193
    :cond_61
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    goto :goto_5f

    :cond_6a
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    goto :goto_4f

    .line 190
    :catchall_73
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_80

    .line 191
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    .line 195
    :goto_7f
    throw v4

    .line 193
    :cond_80
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    goto :goto_7f
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    array-length v1, p1

    if-eqz v1, :cond_b

    array-length v1, p2

    if-nez v1, :cond_c

    .line 260
    :cond_b
    :goto_b
    return v0

    .line 253
    :cond_c
    array-length v3, p1

    move v2, v0

    :goto_e
    if-ge v2, v3, :cond_b

    aget-object v4, p1, v2

    .line 254
    array-length v5, p2

    move v1, v0

    :goto_14
    if-ge v1, v5, :cond_23

    aget-object v6, p2, v1

    .line 255
    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    .line 256
    const/4 v0, 0x1

    goto :goto_b

    .line 254
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 253
    :cond_23
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 358
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II)I

    move-result v0

    .line 359
    invoke-static {p0, v0, p2}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;II)I

    move-result v1

    .line 360
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 459
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 517
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 522
    :goto_c
    if-ge v0, p2, :cond_2b

    .line 523
    array-length v6, v8

    if-ne v2, v6, :cond_13

    move-object v0, v3

    .line 580
    :goto_12
    return-object v0

    .line 526
    :cond_13
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_32

    const-string v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 528
    if-eq v1, v7, :cond_24

    move-object v0, v3

    goto :goto_12

    .line 529
    :cond_24
    add-int/lit8 v0, v0, 0x2

    .line 530
    add-int/lit8 v1, v2, 0x2

    .line 532
    if-ne v0, p2, :cond_a1

    move v2, v1

    .line 573
    :cond_2b
    :goto_2b
    array-length v0, v8

    if-eq v2, v0, :cond_94

    .line 574
    if-ne v1, v7, :cond_85

    move-object v0, v3

    goto :goto_12

    .line 533
    :cond_32
    if-eqz v2, :cond_3e

    .line 535
    const-string v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 536
    add-int/lit8 v0, v0, 0x1

    :cond_3e
    :goto_3e
    move v4, v5

    move v6, v0

    .line 550
    :goto_40
    if-ge v6, p2, :cond_4c

    .line 551
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 552
    invoke-static {v9}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result v9

    .line 553
    if-ne v9, v7, :cond_6c

    .line 556
    :cond_4c
    sub-int v9, v6, v0

    .line 557
    if-eqz v9, :cond_53

    const/4 v10, 0x4

    if-le v9, v10, :cond_72

    :cond_53
    move-object v0, v3

    goto :goto_12

    .line 537
    :cond_55
    const-string v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 539
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_67

    move-object v0, v3

    goto :goto_12

    .line 540
    :cond_67
    add-int/lit8 v2, v2, 0x2

    .line 541
    goto :goto_2b

    :cond_6a
    move-object v0, v3

    .line 543
    goto :goto_12

    .line 554
    :cond_6c
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 550
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 560
    :cond_72
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 561
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 562
    goto :goto_c

    .line 575
    :cond_85
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 580
    :cond_94
    :try_start_94
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_97
    .catch Ljava/net/UnknownHostException; {:try_start_94 .. :try_end_97} :catch_9a

    move-result-object v0

    goto/16 :goto_12

    .line 581
    :catch_9a
    move-exception v0

    .line 582
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a1
    move v2, v1

    goto :goto_3e
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 422
    move v0, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 427
    const/16 v4, 0x1f

    if-le v3, v4, :cond_15

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_17

    :cond_15
    move v1, v2

    .line 437
    :cond_16
    :goto_16
    return v1

    .line 433
    :cond_17
    const-string v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    move v1, v2

    .line 434
    goto :goto_16

    .line 422
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
