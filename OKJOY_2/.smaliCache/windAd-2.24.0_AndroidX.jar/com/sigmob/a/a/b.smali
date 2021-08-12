.class public Lcom/sigmob/a/a/b;
.super Lcom/sigmob/a/c;


# instance fields
.field protected final a:Lcom/sigmob/a/a/d;

.field private b:Z

.field private c:J

.field private d:J

.field private e:[B

.field private f:Lcom/sigmob/a/a/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    invoke-direct {p0}, Lcom/sigmob/a/c;-><init>()V

    new-instance v0, Lcom/sigmob/a/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/a/a/b;->e:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/a/a/b;->b:Z

    return-void
.end method

.method private d()[B
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/a/a/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v0}, Lcom/sigmob/a/a/d;->b()[B

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    :goto_f
    iput-boolean v2, p0, Lcom/sigmob/a/a/b;->b:Z

    goto :goto_1b

    :cond_12
    iget-object v3, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v3, v0}, Lcom/sigmob/a/a/d;->a([B)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_f

    :cond_1b
    :goto_1b
    iget-boolean v2, p0, Lcom/sigmob/a/a/b;->b:Z

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    move-object v1, v0

    :goto_21
    return-object v1
.end method

.method private e()V
    .registers 10

    new-instance v0, Lcom/sigmob/a/a/b$1;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p0, v1}, Lcom/sigmob/a/a/b$1;-><init>(Lcom/sigmob/a/a/b;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_c
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_75

    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x20

    if-ne v5, v7, :cond_6f

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_21
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v7

    if-eq v7, v6, :cond_6d

    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_68

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sub-int/2addr v4, v3

    new-array v3, v4, [C

    invoke-virtual {v0, v3}, Ljava/io/Reader;->read([C)I

    move-result v8

    if-ne v8, v4, :cond_45

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v8, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_45
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read Paxheader. Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6c
    .catchall {:try_start_f .. :try_end_6c} :catchall_10d

    goto :goto_21

    :cond_6d
    :goto_6d
    move v5, v7

    goto :goto_75

    :cond_6f
    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    goto :goto_f

    :cond_75
    :goto_75
    if-ne v5, v6, :cond_c

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->c()Lcom/sigmob/a/a;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_85

    :cond_ab
    const-string v3, "linkpath"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->b(Ljava/lang/String;)V

    goto :goto_85

    :cond_b9
    const-string v3, "gid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->b(I)V

    goto :goto_85

    :cond_cb
    const-string v3, "gname"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->d(Ljava/lang/String;)V

    goto :goto_85

    :cond_d9
    const-string v3, "uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->a(I)V

    goto :goto_85

    :cond_eb
    const-string v3, "uname"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v2, v1}, Lcom/sigmob/a/a/a;->c(Ljava/lang/String;)V

    goto :goto_85

    :cond_f9
    const-string v3, "size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/a/a/a;->a(J)V

    goto/16 :goto_85

    :cond_10c
    return-void

    :catchall_10d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw v1
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_8
    invoke-direct {p0}, Lcom/sigmob/a/a/b;->d()[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/a/a/b;->b:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    goto :goto_1f

    :cond_14
    new-instance v1, Lcom/sigmob/a/a/c;

    invoke-direct {v1, v0}, Lcom/sigmob/a/a/c;-><init>([B)V

    invoke-virtual {v1}, Lcom/sigmob/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public available()I
    .registers 9

    iget-wide v0, p0, Lcom/sigmob/a/a/b;->c:J

    iget-wide v2, p0, Lcom/sigmob/a/a/b;->d:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_11

    const v0, 0x7fffffff

    return v0

    :cond_11
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public b()Lcom/sigmob/a/a/a;
    .registers 9

    iget-boolean v0, p0, Lcom/sigmob/a/a/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_28

    iget-wide v4, p0, Lcom/sigmob/a/a/b;->c:J

    iget-wide v6, p0, Lcom/sigmob/a/a/b;->d:J

    :goto_10
    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_26

    invoke-virtual {p0, v4, v5}, Lcom/sigmob/a/a/b;->skip(J)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_1e

    goto :goto_10

    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput-object v1, p0, Lcom/sigmob/a/a/b;->e:[B

    :cond_28
    invoke-direct {p0}, Lcom/sigmob/a/a/b;->d()[B

    move-result-object v0

    iget-boolean v4, p0, Lcom/sigmob/a/a/b;->b:Z

    if-eqz v4, :cond_33

    iput-object v1, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    return-object v1

    :cond_33
    new-instance v4, Lcom/sigmob/a/a/a;

    invoke-direct {v4, v0}, Lcom/sigmob/a/a/a;-><init>([B)V

    iput-object v4, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    iput-wide v2, p0, Lcom/sigmob/a/a/b;->d:J

    invoke-virtual {v4}, Lcom/sigmob/a/a/a;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sigmob/a/a/b;->c:J

    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x100

    new-array v2, v2, [B

    :goto_53
    invoke-virtual {p0, v2}, Lcom/sigmob/a/a/b;->read([B)I

    move-result v3

    if-ltz v3, :cond_63

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_53

    :cond_63
    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->c()Lcom/sigmob/a/a;

    iget-object v2, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    if-nez v2, :cond_6b

    return-object v1

    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_86

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_86
    iget-object v1, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/a/a/a;->a(Ljava/lang/String;)V

    :cond_8f
    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-direct {p0}, Lcom/sigmob/a/a/b;->e()V

    :cond_9a
    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    invoke-virtual {v0}, Lcom/sigmob/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-direct {p0}, Lcom/sigmob/a/a/b;->f()V

    :cond_a5
    iget-object v0, p0, Lcom/sigmob/a/a/b;->f:Lcom/sigmob/a/a/a;

    return-object v0
.end method

.method public c()Lcom/sigmob/a/a;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->b()Lcom/sigmob/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v0}, Lcom/sigmob/a/a/d;->d()V

    return-void
.end method

.method public read([BII)I
    .registers 10

    iget-wide v0, p0, Lcom/sigmob/a/a/b;->d:J

    iget-wide v2, p0, Lcom/sigmob/a/a/b;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    int-to-long v4, p3

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_12

    sub-long/2addr v2, v0

    long-to-int p3, v2

    :cond_12
    iget-object v0, p0, Lcom/sigmob/a/a/b;->e:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    array-length v2, v0

    if-le p3, v2, :cond_1c

    array-length v2, v0

    goto :goto_1d

    :cond_1c
    move v2, p3

    :goto_1d
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sigmob/a/a/b;->e:[B

    array-length v3, v0

    if-lt v2, v3, :cond_29

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/b;->e:[B

    goto :goto_32

    :cond_29
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v4, v3, [B

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sigmob/a/a/b;->e:[B

    :goto_32
    add-int/lit8 v0, v2, 0x0

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    if-lez p3, :cond_84

    iget-object v2, p0, Lcom/sigmob/a/a/b;->a:Lcom/sigmob/a/a/d;

    invoke-virtual {v2}, Lcom/sigmob/a/a/d;->b()[B

    move-result-object v2

    if-eqz v2, :cond_5d

    array-length v3, v2

    invoke-virtual {p0, v3}, Lcom/sigmob/a/a/b;->a(I)V

    array-length v3, v2

    if-le v3, p3, :cond_56

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, p3

    new-array v4, v3, [B

    iput-object v4, p0, Lcom/sigmob/a/a/b;->e:[B

    invoke-static {v2, p3, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p3

    goto :goto_59

    :cond_56
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_59
    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    goto :goto_38

    :cond_5d
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected EOF with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes unread. Occured at byte: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    iget-wide p1, p0, Lcom/sigmob/a/a/b;->d:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/sigmob/a/a/b;->d:J

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 10

    const/16 v0, 0x2000

    new-array v1, v0, [B

    move-wide v2, p1

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1f

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_11

    goto :goto_12

    :cond_11
    move-wide v4, v2

    :goto_12
    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Lcom/sigmob/a/a/b;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    goto :goto_1f

    :cond_1c
    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_5

    :cond_1f
    :goto_1f
    sub-long/2addr p1, v2

    return-wide p1
.end method
