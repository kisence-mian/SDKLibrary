.class public Lcom/umeng/analytics/pro/az;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/analytics/pro/cb;

.field private c:Lcom/umeng/analytics/pro/bp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/bj$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bj$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/az;-><init>(Lcom/umeng/analytics/pro/br;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/br;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/az;->a:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/az;->b:Lcom/umeng/analytics/pro/cb;

    .line 67
    invoke-interface {p1, v1}, Lcom/umeng/analytics/pro/br;->a(Lcom/umeng/analytics/pro/cd;)Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/az;->c:Lcom/umeng/analytics/pro/bp;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/aq;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 97
    :catch_a
    move-exception p1

    .line 98
    new-instance p1, Lcom/umeng/analytics/pro/aw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/aq;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/pro/az;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/az;->c:Lcom/umeng/analytics/pro/bp;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/aq;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 82
    iget-object p1, p0, Lcom/umeng/analytics/pro/az;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/analytics/pro/aq;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method