.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lokio/AsyncTimeout;

    .line 232
    iput-object p1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "throwOnTimeout":Z
    :try_start_1
    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v1}, Lokio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_10
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    .line 251
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_e
    move-exception v1

    goto :goto_18

    .line 252
    :catch_10
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    :try_start_11
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    throw v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    :goto_18
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Z)V

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V

    .line 237
    :try_start_6
    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_16
    .catchall {:try_start_6 .. :try_end_c} :catchall_14

    .line 238
    .local v1, "result":J
    const/4 v0, 0x1

    .line 239
    nop

    .line 243
    iget-object v3, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v0}, Lokio/AsyncTimeout;->exit(Z)V

    .line 239
    return-wide v1

    .line 243
    .end local v1    # "result":J
    :catchall_14
    move-exception v1

    goto :goto_1e

    .line 240
    :catch_16
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    :try_start_17
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_14

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_1e
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Z)V

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 260
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
