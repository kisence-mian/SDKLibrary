.class public Lcom/sigmob/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a([BII)J
    .registers 10

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_62

    move v1, p1

    :goto_6
    if-ge v1, v0, :cond_11

    aget-byte v2, p0, v1

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    const/4 v1, 0x1

    :goto_12
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_17

    return-wide v2

    :cond_17
    move v1, p1

    :goto_18
    const/16 v4, 0x20

    if-ge v1, v0, :cond_23

    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    add-int/lit8 v5, v0, -0x1

    aget-byte v6, p0, v5

    if-eqz v6, :cond_36

    if-ne v6, v4, :cond_2c

    goto :goto_36

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v5, v6}, Lcom/sigmob/a/a/e;->a([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-eqz v5, :cond_40

    if-ne v5, v4, :cond_42

    :cond_40
    add-int/lit8 v0, v0, -0x1

    :cond_42
    :goto_42
    if-ge v1, v0, :cond_61

    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_57

    const/16 v5, 0x37

    if-gt v4, v5, :cond_57

    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v1, v4}, Lcom/sigmob/a/a/e;->a([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    return-wide v2

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " must be at least 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\u0000"

    const-string v1, "{NUL}"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " at offset "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sub-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' len="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)Z
    .registers 2

    aget-byte p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static b([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/2addr p2, p1

    :goto_6
    if-ge p1, p2, :cond_16

    aget-byte v1, p0, p1

    if-nez v1, :cond_d

    goto :goto_16

    :cond_d
    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_16
    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
