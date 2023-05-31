.class public Lcom/sigmob/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/a/a;
.implements Lcom/sigmob/a/a/e;


# static fields
.field public static final b:I = 0x1f

.field public static final c:I = 0x41ed

.field public static final d:I = 0x81a4

.field public static final e:I = 0x3e8


# instance fields
.field private ac:Ljava/lang/String;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:J

.field private ah:J

.field private ai:B

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:I

.field private ap:I

.field private aq:Z

.field private ar:J

.field private as:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .registers 5

    const/16 v3, 0x1f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ak:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/sigmob/a/a/a;->al:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_28

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_28
    iput v2, p0, Lcom/sigmob/a/a/a;->ae:I

    iput v2, p0, Lcom/sigmob/a/a/a;->af:I

    iput-object v0, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/a/a/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sigmob/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 v0, 0x41ed

    iput v0, p0, Lcom/sigmob/a/a/a;->ad:I

    const/16 v0, 0x35

    iput-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4f

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    :goto_3d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ag:J

    :goto_41
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ah:J

    iput v4, p0, Lcom/sigmob/a/a/a;->ao:I

    iput v4, p0, Lcom/sigmob/a/a/a;->ap:I

    return-void

    :cond_4f
    iput-object p2, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    goto :goto_3d

    :cond_52
    const v0, 0x81a4

    iput v0, p0, Lcom/sigmob/a/a/a;->ad:I

    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ag:J

    iput-object p2, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    goto :goto_41
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/a/a/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sigmob/a/a/a;-><init>(Ljava/lang/String;)V

    iput-byte p2, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_11

    const-string v0, "ustar "

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ak:Ljava/lang/String;

    const-string v0, " \u0000"

    iput-object v0, p0, Lcom/sigmob/a/a/a;->al:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sigmob/a/a/a;-><init>()V

    invoke-static {p1, p2}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iput v4, p0, Lcom/sigmob/a/a/a;->ao:I

    iput v4, p0, Lcom/sigmob/a/a/a;->ap:I

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    if-eqz v1, :cond_47

    const/16 v0, 0x41ed

    :goto_18
    iput v0, p0, Lcom/sigmob/a/a/a;->ad:I

    if-eqz v1, :cond_4b

    const/16 v0, 0x35

    :goto_1e
    iput-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    iput v4, p0, Lcom/sigmob/a/a/a;->ae:I

    iput v4, p0, Lcom/sigmob/a/a/a;->af:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ag:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ah:J

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    iput v4, p0, Lcom/sigmob/a/a/a;->ao:I

    iput v4, p0, Lcom/sigmob/a/a/a;->ap:I

    return-void

    :cond_47
    const v0, 0x81a4

    goto :goto_18

    :cond_4b
    const/16 v0, 0x30

    goto :goto_1e
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/a/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->b([B)V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_40

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_40

    const/16 v1, 0x61

    if-lt v0, v1, :cond_34

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3c

    :cond_34
    const/16 v1, 0x41

    if-lt v0, v1, :cond_40

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_40

    :cond_3c
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_40
    :goto_40
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_48
    if-nez p1, :cond_6c

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_57
    const-string v1, "netware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_40

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_40

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    :cond_6c
    return-object v0
.end method

.method private c([B)I
    .registers 4

    const/16 v0, 0x101

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ustar "

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x2

    :goto_18
    return v0

    :cond_19
    const-string v1, "ustar\u0000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x3

    goto :goto_18

    :cond_2b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/a/a/a;->ad:I

    return-void
.end method

.method public a(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->b(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/a/a/a;->c(I)V

    return-void
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ah:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/a/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ah:J

    return-void
.end method

.method public a([B)V
    .registers 11

    const/16 v8, 0x64

    const/16 v3, 0xc

    const/16 v7, 0x20

    const/4 v2, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-static {v0, p1, v2, v8}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget v1, p0, Lcom/sigmob/a/a/a;->ad:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/sigmob/a/a/f;->b(J[BII)I

    move-result v0

    iget v1, p0, Lcom/sigmob/a/a/a;->ae:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/sigmob/a/a/f;->b(J[BII)I

    move-result v0

    iget v1, p0, Lcom/sigmob/a/a/a;->af:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/sigmob/a/a/f;->b(J[BII)I

    move-result v0

    iget-wide v4, p0, Lcom/sigmob/a/a/a;->ag:J

    invoke-static {v4, v5, p1, v0, v3}, Lcom/sigmob/a/a/f;->c(J[BII)I

    move-result v0

    iget-wide v4, p0, Lcom/sigmob/a/a/a;->ah:J

    invoke-static {v4, v5, p1, v0, v3}, Lcom/sigmob/a/a/f;->c(J[BII)I

    move-result v3

    move v0, v2

    move v1, v3

    :goto_32
    if-ge v0, v6, :cond_3c

    add-int/lit8 v4, v1, 0x1

    aput-byte v7, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_32

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    iget-byte v4, p0, Lcom/sigmob/a/a/a;->ai:B

    aput-byte v4, p1, v1

    iget-object v1, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    invoke-static {v1, p1, v0, v8}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->ak:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v1, p1, v0, v4}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->al:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, p1, v0, v4}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    invoke-static {v1, p1, v0, v7}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    invoke-static {v1, p1, v0, v7}, Lcom/sigmob/a/a/f;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget v1, p0, Lcom/sigmob/a/a/a;->ao:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/sigmob/a/a/f;->b(J[BII)I

    move-result v0

    iget v1, p0, Lcom/sigmob/a/a/a;->ap:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/sigmob/a/a/f;->b(J[BII)I

    move-result v0

    :goto_70
    array-length v1, p1

    if-ge v0, v1, :cond_79

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_70

    :cond_79
    invoke-static {p1}, Lcom/sigmob/a/a/f;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1, p1, v3, v6}, Lcom/sigmob/a/a/f;->d(J[BII)I

    return-void
.end method

.method public a(Lcom/sigmob/a/a/a;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/a/a;->ag:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/a/a/a;->ae:I

    return-void
.end method

.method public b(J)V
    .registers 6

    const-wide v0, 0x1ffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_28

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iput-wide p1, p0, Lcom/sigmob/a/a/a;->ag:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .registers 8

    const/16 v5, 0x20

    const/16 v4, 0x64

    const/16 v3, 0xc

    const/16 v2, 0x8

    const/4 v0, 0x0

    invoke-static {p1, v0, v4}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-static {p1, v4, v2}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->ad:I

    const/16 v0, 0x6c

    invoke-static {p1, v0, v2}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->ae:I

    const/16 v0, 0x74

    invoke-static {p1, v0, v2}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->af:I

    const/16 v0, 0x7c

    invoke-static {p1, v0, v3}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ag:J

    const/16 v0, 0x88

    invoke-static {p1, v0, v3}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ah:J

    const/16 v0, 0x9c

    const/16 v1, 0x9d

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    invoke-static {p1, v1, v4}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ak:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->al:Ljava/lang/String;

    const/16 v0, 0x109

    invoke-static {p1, v0, v5}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    const/16 v0, 0x129

    invoke-static {p1, v0, v5}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    const/16 v0, 0x149

    invoke-static {p1, v0, v2}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->ao:I

    const/16 v0, 0x151

    invoke-static {p1, v0, v2}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/a/a/a;->ap:I

    const/16 v0, 0x159

    invoke-direct {p0, p1}, Lcom/sigmob/a/a/a;->c([B)I

    move-result v1

    packed-switch v1, :pswitch_data_e4

    const/16 v1, 0x9b

    invoke-static {p1, v0, v1}, Lcom/sigmob/a/a/f;->b([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    :cond_b0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    :cond_d1
    :goto_d1
    return-void

    :pswitch_d2
    const/16 v0, 0x1e2

    invoke-static {p1, v0}, Lcom/sigmob/a/a/f;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/a/a/a;->aq:Z

    const/16 v0, 0x1e3

    invoke-static {p1, v0, v3}, Lcom/sigmob/a/a/f;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/a/a/a;->ar:J

    goto :goto_d1

    nop

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_d2
    .end packed-switch
.end method

.method public b(Lcom/sigmob/a/a/a;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/a/a/a;->af:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x35

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public d()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->j()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->aj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    check-cast p1, Lcom/sigmob/a/a/a;

    invoke-virtual {p0, p1}, Lcom/sigmob/a/a/a;->a(Lcom/sigmob/a/a/a;)Z

    move-result v0

    goto :goto_d
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/a;->ae:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/a;->af:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->am:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->an:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .registers 7

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sigmob/a/a/a;->ah:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public k()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/a;->ad:I

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/a/a/a;->aq:Z

    return v0
.end method

.method public n()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/a/a;->ar:J

    return-wide v0
.end method

.method public o()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public p()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/sigmob/a/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "././@LongLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public q()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public r()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public s()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-byte v1, p0, Lcom/sigmob/a/a/a;->ai:B

    if-eqz v1, :cond_b

    iget-byte v1, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v2, 0x30

    if-eq v1, v2, :cond_b

    invoke-virtual {p0}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public t()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public u()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public v()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public w()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public x()Z
    .registers 3

    iget-byte v0, p0, Lcom/sigmob/a/a/a;->ai:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public y()[Lcom/sigmob/a/a/a;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    new-array v0, v0, [Lcom/sigmob/a/a/a;

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Lcom/sigmob/a/a/a;

    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    new-instance v3, Lcom/sigmob/a/a/a;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sigmob/a/a/a;->as:Ljava/io/File;

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/sigmob/a/a/a;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    move-object v0, v1

    goto :goto_f
.end method
