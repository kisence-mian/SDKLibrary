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

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 180
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4d

    .line 182
    nop

    .line 183
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    :goto_11
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_29

    .line 184
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    .line 185
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 186
    cmp-long v3, v0, p2

    if-ltz v3, :cond_26

    .line 187
    nop

    .line 188
    move-wide v0, p2

    goto :goto_29

    .line 183
    :cond_26
    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_11

    .line 193
    :cond_29
    :goto_29
    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 196
    :try_start_2f
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v3, p1, v0, v1}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_3f
    .catchall {:try_start_2f .. :try_end_34} :catchall_3d

    .line 197
    sub-long/2addr p2, v0

    .line 198
    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 203
    nop

    .line 204
    goto :goto_8

    .line 202
    :catchall_3d
    move-exception p1

    goto :goto_47

    .line 199
    :catch_3f
    move-exception p1

    .line 200
    :try_start_40
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    .line 202
    :goto_47
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 203
    throw p1

    .line 205
    :cond_4d
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    nop

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 226
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 227
    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_13
    move-exception v0

    goto :goto_1d

    .line 228
    :catch_15
    move-exception v0

    .line 229
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 231
    :goto_1d
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 232
    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    nop

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 212
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 213
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 218
    nop

    .line 219
    return-void

    .line 217
    :catchall_13
    move-exception v0

    goto :goto_1d

    .line 214
    :catch_15
    move-exception v0

    .line 215
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 217
    :goto_1d
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 218
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
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
