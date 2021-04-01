.class Lcom/bytedance/sdk/a/a/a$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/r;

.field final synthetic b:Lcom/bytedance/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/r;)V
    .registers 3

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 174
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    move-wide v4, p2

    .line 176
    :goto_9
    cmp-long v0, v4, v2

    if-lez v0, :cond_4b

    .line 179
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    move-object v6, v0

    move-wide v0, v2

    :goto_11
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_24

    .line 180
    iget v7, v6, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v8, v6, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v7, v8

    .line 181
    int-to-long v8, v7

    add-long/2addr v8, v0

    .line 182
    cmp-long v0, v8, v4

    if-ltz v0, :cond_37

    move-wide v0, v4

    .line 189
    :cond_24
    const/4 v6, 0x0

    .line 190
    iget-object v7, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v7}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 192
    :try_start_2a
    iget-object v7, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v7, p1, v0, v1}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_3c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_44

    .line 193
    sub-long/2addr v4, v0

    .line 194
    const/4 v0, 0x1

    .line 198
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    goto :goto_9

    .line 179
    :cond_37
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-object v6, v0

    move-wide v0, v8

    goto :goto_11

    .line 195
    :catch_3c
    move-exception v0

    .line 196
    :try_start_3d
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_44

    .line 198
    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 199
    throw v0

    .line 201
    :cond_4b
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 222
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 223
    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 229
    return-void

    .line 224
    :catch_12
    move-exception v0

    .line 225
    :try_start_13
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 227
    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 228
    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 208
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 209
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 215
    return-void

    .line 210
    :catch_12
    move-exception v0

    .line 211
    :try_start_13
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 213
    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 214
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
