.class Lokhttp3/internal/framed/FramedConnection$4;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 826
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$4;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 828
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$4;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$streamId:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 830
    .local v0, "cancel":Z
    if-eqz v0, :cond_34

    .line 831
    :try_start_10
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$streamId:I

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 832
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    .line 833
    :try_start_1e
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$4;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lokhttp3/internal/framed/FramedConnection$4;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 834
    monitor-exit v1

    goto :goto_34

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    .end local v0    # "cancel":Z
    :try_start_31
    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    .line 836
    .restart local v0    # "cancel":Z
    :catch_32
    move-exception v1

    goto :goto_35

    .line 837
    :cond_34
    :goto_34
    nop

    .line 838
    :goto_35
    return-void
.end method
