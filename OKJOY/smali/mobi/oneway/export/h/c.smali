.class public Lmobi/oneway/export/h/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lmobi/oneway/export/h/c;->c:I

    iput-boolean v0, p0, Lmobi/oneway/export/h/c;->d:Z

    iput-object p1, p0, Lmobi/oneway/export/h/c;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .registers 11

    const/4 v3, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v5, v8, [C

    move v0, v1

    :cond_8
    iget-object v4, p0, Lmobi/oneway/export/h/c;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v9, :cond_21

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-array v0, v1, [I

    iput-object v0, p0, Lmobi/oneway/export/h/c;->b:[I

    iput-boolean v2, p0, Lmobi/oneway/export/h/c;->d:Z

    :cond_20
    return-void

    :cond_21
    int-to-char v6, v4

    sget-object v4, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v9, :cond_2e

    sget-char v4, Lmobi/oneway/export/h/o;->b:C

    if-ne v6, v4, :cond_49

    :cond_2e
    add-int/lit8 v4, v0, 0x1

    aput-char v6, v5, v0

    move v0, v4

    :cond_33
    if-lt v0, v8, :cond_8

    move v0, v1

    move v4, v1

    :goto_37
    if-ge v4, v8, :cond_5f

    aget-char v6, v5, v4

    sget-char v7, Lmobi/oneway/export/h/o;->b:C

    if-eq v6, v7, :cond_59

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v4, 0xd

    if-eq v6, v4, :cond_33

    const/16 v4, 0xa

    if-eq v6, v4, :cond_33

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    if-nez v0, :cond_5c

    move v0, v2

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_5f
    const/4 v0, 0x3

    aget-char v0, v5, v0

    sget-char v4, Lmobi/oneway/export/h/o;->b:C

    if-ne v0, v4, :cond_9b

    iget-object v0, p0, Lmobi/oneway/export/h/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_76

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    iput-boolean v2, p0, Lmobi/oneway/export/h/c;->d:Z

    aget-char v0, v5, v3

    sget-char v4, Lmobi/oneway/export/h/o;->b:C

    if-ne v0, v4, :cond_99

    :goto_7e
    move v0, v1

    move v3, v1

    :goto_80
    if-ge v3, v8, :cond_9d

    aget-char v4, v5, v3

    sget-char v6, Lmobi/oneway/export/h/o;->b:C

    if-eq v4, v6, :cond_96

    sget-object v4, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    aget-char v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    rsub-int/lit8 v6, v3, 0x3

    mul-int/lit8 v6, v6, 0x6

    shl-int/2addr v4, v6

    or-int/2addr v0, v4

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_99
    move v2, v3

    goto :goto_7e

    :cond_9b
    const/4 v2, 0x3

    goto :goto_7e

    :cond_9d
    new-array v3, v2, [I

    iput-object v3, p0, Lmobi/oneway/export/h/c;->b:[I

    :goto_a1
    if-ge v1, v2, :cond_20

    iget-object v3, p0, Lmobi/oneway/export/h/c;->b:[I

    rsub-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x8

    ushr-int v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/h/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 4

    const/4 v0, -0x1

    iget-object v1, p0, Lmobi/oneway/export/h/c;->b:[I

    if-eqz v1, :cond_17

    iget v1, p0, Lmobi/oneway/export/h/c;->c:I

    iget-object v2, p0, Lmobi/oneway/export/h/c;->b:[I

    array-length v2, v2

    if-eq v1, v2, :cond_17

    iget-object v0, p0, Lmobi/oneway/export/h/c;->b:[I

    iget v1, p0, Lmobi/oneway/export/h/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/h/c;->c:I

    aget v0, v0, v1

    :cond_16
    :goto_16
    return v0

    :cond_17
    iget-boolean v1, p0, Lmobi/oneway/export/h/c;->d:Z

    if-nez v1, :cond_16

    invoke-direct {p0}, Lmobi/oneway/export/h/c;->a()V

    iget-object v1, p0, Lmobi/oneway/export/h/c;->b:[I

    array-length v1, v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/oneway/export/h/c;->b:[I

    goto :goto_16

    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lmobi/oneway/export/h/c;->c:I

    iget-object v0, p0, Lmobi/oneway/export/h/c;->b:[I

    iget v1, p0, Lmobi/oneway/export/h/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/h/c;->c:I

    aget v0, v0, v1

    goto :goto_16
.end method
