.class Lcom/sigmob/wire/okio/AsyncTimeout$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/AsyncTimeout;->sink(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/sigmob/wire/okio/Sink;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/AsyncTimeout;Lcom/sigmob/wire/okio/Sink;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->val$sink:Lcom/sigmob/wire/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->val$sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->val$sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->val$sink:Lcom/sigmob/wire/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 10

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4e

    iget-object v2, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_2b

    iget-object v3, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v3, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v4, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v4, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_28

    move-wide v0, p2

    goto :goto_2b

    :cond_28
    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_10

    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/AsyncTimeout;->enter()V

    :try_start_31
    iget-object v3, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->val$sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_40
    .catchall {:try_start_31 .. :try_end_36} :catchall_3e

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    goto :goto_8

    :catchall_3e
    move-exception p1

    goto :goto_48

    :catch_40
    move-exception p1

    :try_start_41
    iget-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e

    :goto_48
    iget-object p2, p0, Lcom/sigmob/wire/okio/AsyncTimeout$1;->this$0:Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-virtual {p2, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit(Z)V

    throw p1

    :cond_4e
    return-void
.end method
