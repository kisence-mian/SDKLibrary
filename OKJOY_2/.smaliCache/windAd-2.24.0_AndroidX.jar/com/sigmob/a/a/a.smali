.class public Lcom/sigmob/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:J

.field private q:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lcom/sigmob/a/a/a;->i:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/sigmob/a/a/a;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/a/a/a;->h:Ljava/lang/String;

    const-string v1, "user.name"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-le v2, v3, :cond_24

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_24
    iput v4, p0, Lcom/sigmob/a/a/a;->c:I

    iput v4, p0, Lcom/sigmob/a/a/a;->d:I

    iput-object v1, p0, Lcom/sigmob/a/a/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/a/a/a;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->q:Ljava/io/File;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/a/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->a([B)V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    const-string v2, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_54

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_54

    const/16 v3, 0x61

    if-lt v0, v3, :cond_33

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3b

    :cond_33
    const/16 v3, 0x41

    if-lt v0, v3, :cond_54

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_54

    :cond_3b
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_40
    const-string v2, "netware"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_54

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_54

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_54
    :goto_54
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_5c
    if-nez p1, :cond_6b

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    :cond_6b
    return-object p0
.end method

.method private b([B)I
    .registers 4

    const/16 v0, 0x101

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "ustar "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x2

    return p1

    :cond_19
    const-string v0, "ustar\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/a/a/a;->c:I

    return-void
.end method

.method public a(J)V
    .registers 6

    const-wide v0, 0x1ffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    iput-wide p1, p0, Lcom/sigmob/a/a/a;->e:J

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {p1, v1, v0}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sigmob/a/a/a;->b:I

    const/16 v2, 0x6c

    invoke-static {p1, v2, v0}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sigmob/a/a/a;->c:I

    const/16 v2, 0x74

    invoke-static {p1, v2, v0}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sigmob/a/a/a;->d:I

    const/16 v2, 0x7c

    const/16 v3, 0xc

    invoke-static {p1, v2, v3}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sigmob/a/a/a;->e:J

    const/16 v2, 0x88

    invoke-static {p1, v2, v3}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sigmob/a/a/a;->f:J

    const/16 v2, 0x9c

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/sigmob/a/a/a;->g:B

    const/16 v2, 0x9d

    invoke-static {p1, v2, v1}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->h:Ljava/lang/String;

    const/16 v1, 0x101

    const/4 v2, 0x6

    invoke-static {p1, v1, v2}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->i:Ljava/lang/String;

    const/16 v1, 0x107

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->j:Ljava/lang/String;

    const/16 v1, 0x109

    const/16 v2, 0x20

    invoke-static {p1, v1, v2}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->k:Ljava/lang/String;

    const/16 v1, 0x129

    invoke-static {p1, v1, v2}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->l:Ljava/lang/String;

    const/16 v1, 0x149

    invoke-static {p1, v1, v0}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/sigmob/a/a/a;->m:I

    const/16 v1, 0x151

    invoke-static {p1, v1, v0}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->n:I

    invoke-direct {p0, p1}, Lcom/sigmob/a/a/a;->b([B)I

    move-result v0

    packed-switch v0, :pswitch_data_e0

    const/16 v0, 0x9b

    const/16 v1, 0x159

    invoke-static {p1, v1, v0}, Lcom/sigmob/a/a/e;->b([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->g()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    goto :goto_c0

    :pswitch_af
    const/16 v0, 0x1e2

    invoke-static {p1, v0}, Lcom/sigmob/a/a/e;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/a/a/a;->o:Z

    const/16 v0, 0x1e3

    invoke-static {p1, v0, v3}, Lcom/sigmob/a/a/e;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->p:J

    goto :goto_df

    :cond_c0
    :goto_c0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_df

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    :cond_df
    :goto_df
    return-void

    :pswitch_data_e0
    .packed-switch 0x2
        :pswitch_af
    .end packed-switch
.end method

.method public a(Lcom/sigmob/a/a/a;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/a/a;->e:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/a/a/a;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/a/a/a;->o:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->l:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->g:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public e()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->g:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/sigmob/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "././@LongLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_14

    :cond_d
    check-cast p1, Lcom/sigmob/a/a/a;

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->a(Lcom/sigmob/a/a/a;)Z

    move-result p1

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->g:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_d

    const/16 v1, 0x58

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/a;->q:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    :cond_9
    iget-byte v0, p0, Lcom/sigmob/a/a/a;->g:B

    const/16 v1, 0x35

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
