.class Lcom/qq/gdt/action/c/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/MappedByteBuffer;

.field private final b:Ljava/lang/Class;

.field private final c:Ljava/nio/channels/FileChannel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/gdt/action/c/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v4, 0x100000

    const/16 v10, 0x29a

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/qq/gdt/action/c/f;->b:Ljava/lang/Class;

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Lcom/qq/gdt/action/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-lez v1, :cond_8c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    rem-long/2addr v8, v4

    cmp-long v1, v8, v2

    if-nez v1, :cond_8c

    const/4 v0, 0x1

    move v6, v0

    :goto_40
    if-nez v6, :cond_45

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_45
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/f;->c:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->c:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-eqz v6, :cond_5c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_5c
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_92

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->getInt()I

    move-result v0

    if-eq v10, v0, :cond_8e

    new-instance v0, Lcom/qq/gdt/action/c/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed buffer file :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/gdt/action/c/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    move v6, v0

    goto :goto_40

    :cond_8e
    invoke-direct {p0}, Lcom/qq/gdt/action/c/f;->b()Ljava/util/List;

    :goto_91
    return-void

    :cond_92
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_91
.end method

.method private b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_5
    invoke-direct {p0}, Lcom/qq/gdt/action/c/f;->c()Lcom/qq/gdt/action/c/a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    return-object v0
.end method

.method private b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c()Lcom/qq/gdt/action/c/a;
    .registers 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/c/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->getInt()I

    move-result v3

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->getShort()S

    move-result v0

    if-ltz v3, :cond_22

    if-lt v0, v5, :cond_22

    const/4 v4, 0x2

    if-le v0, v4, :cond_29

    :cond_22
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    if-eq v0, v5, :cond_4a

    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/qq/gdt/action/c/f;->e:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/qq/gdt/action/c/f;->e:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v3

    if-le v0, v3, :cond_44

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    goto :goto_28

    :cond_44
    iget-object v2, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/a;

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/c/a;->a(I)V

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/qq/gdt/action/c/c;

    invoke-direct {v4, v3}, Lcom/qq/gdt/action/c/c;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/qq/gdt/action/c/a;->a(Lcom/qq/gdt/action/c/c;)V
    :try_end_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_64} :catch_65
    .catch Ljava/lang/InstantiationException; {:try_start_4a .. :try_end_64} :catch_6d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4a .. :try_end_64} :catch_75

    goto :goto_28

    :catch_65
    move-exception v0

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    goto :goto_28

    :catch_6d
    move-exception v0

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    goto :goto_28

    :catch_75
    move-exception v0

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    goto :goto_28

    :cond_7d
    move-object v0, v1

    goto :goto_28
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lcom/qq/gdt/action/c/f;->e:I

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/a;

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/c/f;->a(Lcom/qq/gdt/action/c/a;)V

    goto :goto_28

    :cond_38
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/gdt/action/c/f;->e:I

    :cond_3b
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 9

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_40

    iget v1, p0, Lcom/qq/gdt/action/c/f;->e:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_46

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v6

    move v4, v0

    :goto_1a
    sub-int v0, v4, v6

    if-ge v0, p1, :cond_22

    mul-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    :try_start_27
    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->c:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :cond_46
    invoke-direct {p0}, Lcom/qq/gdt/action/c/f;->d()V

    goto :goto_40
.end method

.method public a(Lcom/qq/gdt/action/c/a;)V
    .registers 6

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->a()Lcom/qq/gdt/action/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/c;->c()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/qq/gdt/action/c/f;->a(I)V

    iget-object v3, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/qq/gdt/action/c/a;->a(I)V

    iget-object v3, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2a
    return-void
.end method

.method public b(Lcom/qq/gdt/action/c/a;)Z
    .registers 6

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->b()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_43

    iget-object v0, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->getInt()I

    move-result v1

    iget-object v2, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/qq/gdt/action/c/f;->a:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/qq/gdt/action/c/f;->e:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qq/gdt/action/c/f;->e:I

    const/4 v0, 0x1

    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method
