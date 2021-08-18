.class Lokhttp3/internal/framed/FramedConnection$6;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;

.field final synthetic val$buffer:Lokio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .registers 8
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 870
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$6;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$buffer:Lokio/Buffer;

    iput p6, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 873
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$6;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$streamId:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$buffer:Lokio/Buffer;

    iget v3, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$byteCount:I

    iget-boolean v4, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    .line 874
    .local v0, "cancel":Z
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$streamId:I

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 875
    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$inFinished:Z

    if-eqz v1, :cond_38

    .line 876
    :cond_25
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    .line 877
    :try_start_28
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lokhttp3/internal/framed/FramedConnection$6;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v1

    .line 881
    .end local v0    # "cancel":Z
    :cond_38
    goto :goto_3d

    .line 878
    .restart local v0    # "cancel":Z
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 880
    .end local v0    # "cancel":Z
    :catch_3c
    move-exception v0

    .line 882
    :goto_3d
    return-void
.end method
