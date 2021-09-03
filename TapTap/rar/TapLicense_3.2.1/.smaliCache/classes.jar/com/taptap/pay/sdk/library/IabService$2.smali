.class Lcom/taptap/pay/sdk/library/IabService$2;
.super Lcom/play/taptap/service/ICallback$Stub;
.source "IabService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/IabService;->checkLicense()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/IabService;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/IabService;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/IabService;

    .line 249
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/IabService$2;->this$0:Lcom/taptap/pay/sdk/library/IabService;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/IabService$2;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/taptap/pay/sdk/library/IabService$2;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/play/taptap/service/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultBack(I)V
    .registers 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$2;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 253
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$2;->val$lock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_8
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/IabService$2;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method
