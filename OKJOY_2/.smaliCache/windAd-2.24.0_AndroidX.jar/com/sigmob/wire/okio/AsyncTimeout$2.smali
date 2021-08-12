.class Lcom/sigmob/wire/okio/AsyncTimeout$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/AsyncTimeout;->source(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Source;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->val$source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$2;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw p1
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
