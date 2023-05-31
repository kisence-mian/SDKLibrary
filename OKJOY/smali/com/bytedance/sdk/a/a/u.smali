.class final Lcom/bytedance/sdk/a/a/u;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(I)I
    .registers 3

    .prologue
    .line 44
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(S)S
    .registers 3

    .prologue
    .line 37
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 38
    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 40
    int-to-short v0, v0

    return v0
.end method

.method public static a(JJJ)V
    .registers 12

    .prologue
    .line 30
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_36

    .line 31
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size=%s offset=%s byteCount=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_36
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/u;->b(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public static a([BI[BII)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 77
    move v1, v0

    :goto_2
    if-ge v1, p4, :cond_12

    .line 78
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_f

    .line 80
    :goto_e
    return v0

    .line 77
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    throw p0
.end method
