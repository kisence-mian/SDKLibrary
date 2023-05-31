.class Lokhttp3/internal/http2/Http2Connection$4;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 864
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 866
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z

    invoke-interface {v1, v2, v3, v4}, Lokhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 868
    .local v0, "cancel":Z
    if-eqz v0, :cond_1b

    :try_start_10
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 869
    :cond_1b
    if-nez v0, :cond_21

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z

    if-eqz v1, :cond_32

    .line 870
    :cond_21
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    .line 871
    :try_start_24
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 872
    monitor-exit v2

    .line 876
    :cond_32
    :goto_32
    return-void

    .line 872
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    .line 874
    :catch_36
    move-exception v1

    goto :goto_32
.end method
