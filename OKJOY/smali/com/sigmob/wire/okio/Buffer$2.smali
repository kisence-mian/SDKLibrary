.class Lcom/sigmob/wire/okio/Buffer$2;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/Buffer;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer$2;->this$0:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
