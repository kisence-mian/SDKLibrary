.class Lokhttp3/internal/http2/Http2Connection$3;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 842
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .prologue
    .line 844
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 846
    .local v0, "cancel":Z
    if-eqz v0, :cond_2a

    .line 847
    :try_start_e
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 848
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    .line 849
    :try_start_1c
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit v2

    .line 854
    :cond_2a
    :goto_2a
    return-void

    .line 850
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 852
    :catch_2e
    move-exception v1

    goto :goto_2a
.end method
