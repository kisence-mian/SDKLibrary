.class final Lcom/bytedance/sdk/a/a/l$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/t;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 141
    cmp-long v2, p2, v0

    if-gez v2, :cond_1f

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1f
    cmp-long v2, p2, v0

    if-nez v2, :cond_24

    .line 152
    :goto_23
    return-wide v0

    .line 145
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->g()V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 147
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 148
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 149
    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    const-wide/16 v0, -0x1

    goto :goto_23

    .line 150
    :cond_48
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 151
    iget-wide v2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/bytedance/sdk/a/a/c;->b:J
    :try_end_53
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_53} :catch_55

    .line 152
    int-to-long v0, v1

    goto :goto_23

    .line 153
    :catch_55
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_62
    throw v0
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
