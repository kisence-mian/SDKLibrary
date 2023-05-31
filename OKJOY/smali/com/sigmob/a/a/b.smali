.class public Lcom/sigmob/a/a/b;
.super Lcom/sigmob/a/c;


# static fields
.field private static final b:I = 0x100

.field private static final c:I = 0x2000


# instance fields
.field protected final a:Lcom/sigmob/a/a/d;

.field private d:Z

.field private e:J

.field private f:J

.field private g:[B

.field private h:Lcom/sigmob/a/a/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    invoke-direct {p0}, Lcom/sigmob/a/c;-><init>()V

    new-instance v0, Lcom/sigmob/a/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/b;->g:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/a/a/b;->d:Z

    return-void
.end method

.method public static a([BI)Z
    .registers 8

    const/16 v5, 0x101

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/16 v3, 0x107

    const/4 v2, 0x2

    const/16 v1, 0x109

    if-ge p1, v1, :cond_d

    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0

    :cond_d
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "00"

    invoke-static {v1, p0, v3, v2}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_1d
    const-string v1, "ustar "

    invoke-static {v1, p0, v5, v4}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, " \u0000"

    invoke-static {v1, p0, v3, v2}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "0\u0000"

    invoke-static {v1, p0, v3, v2}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_35
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "\u0000\u0000"

    invoke-static {v1, p0, v3, v2}, Lcom/sigmob/a/b/a;->a(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_45
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private h()[B
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/sigmob/a/a/b;->d:Z

    if-eqz v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v1}, Lcom/sigmob/a/a/d;->d()[B

    move-result-object v1

    if-nez v1, :cond_17

    iput-boolean v3, p0, Lcom/sigmob/a/a/b;->d:Z

    :cond_11
    :goto_11
    iget-boolean v2, p0, Lcom/sigmob/a/a/b;->d:Z

    if-nez v2, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_17
    iget-object v2, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/d;->a([B)Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v3, p0, Lcom/sigmob/a/a/b;->d:Z

    goto :goto_11
.end method

.method private i()V
    .registers 12

    const/4 v2, 0x0

    const/4 v10, -0x1

    new-instance v4, Lcom/sigmob/a/a/b$1;

    const-string v0, "UTF-8"

    invoke-direct {v4, p0, p0, v0}, Lcom/sigmob/a/a/b$1;-><init>(Lcom/sigmob/a/a/b;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_e
    move v1, v2

    move v3, v2

    :goto_10
    :try_start_10
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v10, :cond_74

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x20

    if-ne v0, v6, :cond_b0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :goto_21
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v10, :cond_74

    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x3d

    if-ne v0, v7, :cond_aa

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sub-int v7, v3, v1

    new-array v7, v7, [C

    invoke-virtual {v4, v7}, Ljava/io/Reader;->read([C)I

    move-result v8

    sub-int v9, v3, v1

    if-eq v8, v9, :cond_67

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read Paxheader. Expected "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars, read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    throw v0

    :cond_67
    :try_start_67
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v8, v7, v9, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_62

    :cond_74
    if-ne v0, v10, :cond_e

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->a()Lcom/sigmob/a/a;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_84

    :cond_aa
    int-to-char v0, v0

    :try_start_ab
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_62

    goto/16 :goto_21

    :cond_b0
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_10

    :cond_b8
    const-string v3, "linkpath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->b(Ljava/lang/String;)V

    goto :goto_84

    :cond_c6
    const-string v3, "gid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->c(I)V

    goto :goto_84

    :cond_d8
    const-string v3, "gname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->d(Ljava/lang/String;)V

    goto :goto_84

    :cond_e6
    const-string v3, "uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->b(I)V

    goto :goto_84

    :cond_f8
    const-string v3, "uname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->c(Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_107
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sigmob/a/a/a;->b(J)V

    goto/16 :goto_84

    :cond_11a
    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    invoke-direct {p0}, Lcom/sigmob/a/a/b;->h()[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/a/a/b;->d:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Lcom/sigmob/a/a/c;

    invoke-direct {v1, v0}, Lcom/sigmob/a/a/c;-><init>([B)V

    invoke-virtual {v1}, Lcom/sigmob/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_13
.end method


# virtual methods
.method public a()Lcom/sigmob/a/a;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->e()Lcom/sigmob/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/sigmob/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    return-void
.end method

.method protected final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/a/a/b;->d:Z

    return-void
.end method

.method public a(Lcom/sigmob/a/a;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sigmob/a/a/a;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/sigmob/a/a/a;

    invoke-virtual {p1}, Lcom/sigmob/a/a/a;->o()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public available()I
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/a/a/b;->e:J

    iget-wide v2, p0, Lcom/sigmob/a/a/b;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const v0, 0x7fffffff

    :goto_f
    return v0

    :cond_10
    iget-wide v0, p0, Lcom/sigmob/a/a/b;->e:J

    iget-wide v2, p0, Lcom/sigmob/a/a/b;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_f
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v0}, Lcom/sigmob/a/a/d;->h()V

    return-void
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v0}, Lcom/sigmob/a/a/d;->b()I

    move-result v0

    return v0
.end method

.method public e()Lcom/sigmob/a/a/a;
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sigmob/a/a/b;->d:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    if-eqz v1, :cond_29

    iget-wide v2, p0, Lcom/sigmob/a/a/b;->e:J

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->f:J

    sub-long/2addr v2, v4

    :goto_11
    cmp-long v1, v2, v6

    if-lez v1, :cond_27

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/a/a/b;->skip(J)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-gtz v1, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    sub-long/2addr v2, v4

    goto :goto_11

    :cond_27
    iput-object v0, p0, Lcom/sigmob/a/a/b;->g:[B

    :cond_29
    invoke-direct {p0}, Lcom/sigmob/a/a/b;->h()[B

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/a/a/b;->d:Z

    if-eqz v2, :cond_34

    iput-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    goto :goto_7

    :cond_34
    new-instance v2, Lcom/sigmob/a/a/a;

    invoke-direct {v2, v1}, Lcom/sigmob/a/a/a;-><init>([B)V

    iput-object v2, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    iput-wide v6, p0, Lcom/sigmob/a/a/b;->f:J

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1}, Lcom/sigmob/a/a/a;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sigmob/a/a/b;->e:J

    iget-object v1, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1}, Lcom/sigmob/a/a/a;->p()Z

    move-result v1

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x100

    new-array v2, v2, [B

    :goto_56
    invoke-virtual {p0, v2}, Lcom/sigmob/a/a/b;->read([B)I

    move-result v3

    if-ltz v3, :cond_66

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_56

    :cond_66
    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->a()Lcom/sigmob/a/a;

    iget-object v2, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_88

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_88
    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;)V

    :cond_91
    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-direct {p0}, Lcom/sigmob/a/a/b;->i()V

    :cond_9c
    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-direct {p0}, Lcom/sigmob/a/a/b;->j()V

    :cond_a7
    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    goto/16 :goto_7
.end method

.method protected final f()Lcom/sigmob/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/b;->h:Lcom/sigmob/a/a/a;

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/a/a/b;->d:Z

    return v0
.end method

.method public read([BII)I
    .registers 10

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/sigmob/a/a/b;->f:J

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->e:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_b

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    int-to-long v0, p3

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->f:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1b

    iget-wide v0, p0, Lcom/sigmob/a/a/b;->e:J

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->f:J

    sub-long/2addr v0, v4

    long-to-int p3, v0

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/a/a/b;->g:[B

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/sigmob/a/a/b;->g:[B

    array-length v0, v0

    if-le p3, v0, :cond_6a

    iget-object v0, p0, Lcom/sigmob/a/a/b;->g:[B

    array-length v0, v0

    :goto_27
    iget-object v1, p0, Lcom/sigmob/a/a/b;->g:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sigmob/a/a/b;->g:[B

    array-length v1, v1

    if-lt v0, v1, :cond_6c

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/a/a/b;->g:[B

    :goto_34
    add-int v2, v3, v0

    sub-int v1, p3, v0

    add-int/2addr p2, v0

    :goto_39
    if-lez v1, :cond_99

    iget-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v0}, Lcom/sigmob/a/a/d;->d()[B

    move-result-object v4

    if-nez v4, :cond_7a

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected EOF with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes unread. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    move v0, p3

    goto :goto_27

    :cond_6c
    iget-object v1, p0, Lcom/sigmob/a/a/b;->g:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    iget-object v4, p0, Lcom/sigmob/a/a/b;->g:[B

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sigmob/a/a/b;->g:[B

    goto :goto_34

    :cond_7a
    array-length v0, v4

    invoke-virtual {p0, v0}, Lcom/sigmob/a/a/b;->a(I)V

    array-length v0, v4

    if-le v0, v1, :cond_95

    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v5, v0, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/sigmob/a/a/b;->g:[B

    iget-object v5, p0, Lcom/sigmob/a/a/b;->g:[B

    sub-int/2addr v0, v1

    invoke-static {v4, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_91
    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    add-int/2addr p2, v0

    goto :goto_39

    :cond_95
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_91

    :cond_99
    iget-wide v0, p0, Lcom/sigmob/a/a/b;->f:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sigmob/a/a/b;->f:J

    move v0, v2

    goto/16 :goto_a

    :cond_a2
    move v2, v3

    move v1, p3

    goto :goto_39
.end method

.method public declared-synchronized reset()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 8

    const/16 v0, 0x2000

    new-array v4, v0, [B

    move-wide v2, p1

    :goto_5
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1c

    array-length v0, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1f

    array-length v0, v4

    int-to-long v0, v0

    :goto_13
    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v0}, Lcom/sigmob/a/a/b;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    :cond_1c
    sub-long v0, p1, v2

    return-wide v0

    :cond_1f
    move-wide v0, v2

    goto :goto_13

    :cond_21
    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_5
.end method
