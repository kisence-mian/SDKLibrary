.class public Lcom/qq/gdt/action/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/qq/gdt/action/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/qq/gdt/action/c/c;->a(I)V

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1d
    return-object p0

    :cond_1e
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/c/c;->a(I)V

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1d
.end method

.method public a(Lorg/json/JSONObject;)Lcom/qq/gdt/action/c/c;
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/c/c;->a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;

    :goto_9
    return-object p0

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/c/c;->a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;

    goto :goto_9
.end method

.method public a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/qq/gdt/action/c/c;->b(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-lez v1, :cond_8

    invoke-direct {p0, v1}, Lcom/qq/gdt/action/c/c;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v1, v1, [B

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/qq/gdt/action/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_8
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_3d

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :goto_14
    sub-int v2, v0, v1

    if-le v2, p1, :cond_1b

    mul-int/lit8 v0, v0, 0x2

    goto :goto_14

    :cond_1b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_3d
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 3

    invoke-virtual {p0}, Lcom/qq/gdt/action/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c()[B
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/qq/gdt/action/c/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
