.class Lcom/bytedance/sdk/a/a/a$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/s;

.field final synthetic b:Lcom/bytedance/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/s;)V
    .registers 3

    .prologue
    .line 248
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 254
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_13
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-wide v0

    .line 255
    const/4 v2, 0x1

    .line 260
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 256
    return-wide v0

    .line 257
    :catch_13
    move-exception v0

    .line 258
    :try_start_14
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 260
    :catchall_1b
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 261
    throw v0
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    return-object v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 269
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 270
    const/4 v0, 0x1

    .line 274
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 276
    return-void

    .line 271
    :catch_12
    move-exception v0

    .line 272
    :try_start_13
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 274
    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 275
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
