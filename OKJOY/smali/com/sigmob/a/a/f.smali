.class public Lcom/sigmob/a/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xff


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[BII)I
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    if-ge v0, p3, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    :goto_16
    if-ge v0, p3, :cond_1f

    add-int v2, p2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1f
    add-int v0, p2, p3

    return v0
.end method

.method public static a([B)J
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_f

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-wide v2
.end method

.method public static a([BII)J
    .registers 10

    const-wide/16 v0, 0x0

    const/16 v6, 0x20

    add-int v4, p1, p2

    const/4 v2, 0x2

    if-ge p2, v2, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be at least 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v2, 0x1

    move v3, p1

    :goto_2a
    if-ge v3, v4, :cond_31

    aget-byte v5, p0, v3

    if-eqz v5, :cond_34

    const/4 v2, 0x0

    :cond_31
    if-eqz v2, :cond_81

    :cond_33
    return-wide v0

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :goto_37
    if-ge v2, v4, :cond_40

    aget-byte v3, p0, v2

    if-ne v3, v6, :cond_40

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_40
    add-int/lit8 v3, v4, -0x1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_48

    if-ne v3, v6, :cond_6a

    :cond_48
    add-int/lit8 v3, v4, -0x1

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p0, v4

    if-eqz v4, :cond_52

    if-ne v4, v6, :cond_54

    :cond_52
    add-int/lit8 v3, v3, -0x1

    :cond_54
    :goto_54
    if-ge v2, v3, :cond_33

    aget-byte v4, p0, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_60

    const/16 v5, 0x37

    if-le v4, v5, :cond_76

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v2, v4}, Lcom/sigmob/a/a/f;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v4, -0x1

    invoke-static {p0, p1, p2, v1, v3}, Lcom/sigmob/a/a/f;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    const/4 v5, 0x3

    shl-long/2addr v0, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_54

    :cond_81
    move v2, p1

    goto :goto_37
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J[BII)V
    .registers 15

    const/16 v8, 0x30

    const-wide/16 v6, 0x0

    add-int/lit8 v1, p4, -0x1

    cmp-long v0, p0, v6

    if-nez v0, :cond_18

    add-int/lit8 v0, v1, -0x1

    add-int/2addr v1, p3

    aput-byte v8, p2, v1

    :cond_f
    :goto_f
    if-ltz v0, :cond_60

    add-int v1, p3, v0

    aput-byte v8, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_18
    move-wide v2, p0

    move v0, v1

    :goto_1a
    if-ltz v0, :cond_31

    cmp-long v1, v2, v6

    if-eqz v1, :cond_31

    add-int v1, p3, v0

    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    const/4 v1, 0x3

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_31
    cmp-long v1, v2, v6

    if-eqz v1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will not fit in octal number buffer of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    return-void
.end method

.method public static a([BI)Z
    .registers 4

    const/4 v0, 0x1

    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(J[BII)I
    .registers 9

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sigmob/a/a/f;->a(J[BII)V

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    add-int v0, p3, v1

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method

.method public static b([BII)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int v1, p1, p2

    :goto_7
    if-ge p1, v1, :cond_d

    aget-byte v2, p0, p1

    if-nez v2, :cond_12

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7
.end method

.method public static c(J[BII)I
    .registers 7

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sigmob/a/a/f;->a(J[BII)V

    add-int/2addr v0, p3

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method

.method public static d(J[BII)I
    .registers 9

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sigmob/a/a/f;->a(J[BII)V

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    add-int v0, p3, v1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    add-int v0, p3, p4

    return v0
.end method
