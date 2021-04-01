.class Lcom/sigmob/wire/okio/AsyncTimeout$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/AsyncTimeout;->source(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/Source;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

.field final synthetic val$source:Lcom/sigmob/wire/okio/Source;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/AsyncTimeout;Lcom/sigmob/wire/okio/Source;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_d
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catch_d
    move-exception v0

    :try_start_e
    iget-object v2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    iget-object v2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->enter()V

    :try_start_6
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_13
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-wide v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v3, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-wide v0

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    iget-object v2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
