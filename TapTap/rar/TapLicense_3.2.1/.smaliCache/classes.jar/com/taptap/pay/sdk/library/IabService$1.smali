.class Lcom/taptap/pay/sdk/library/IabService$1;
.super Ljava/lang/Object;
.source "IabService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/IabService;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/IabService;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/IabService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/IabService;

    .line 195
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/IabService$1;->this$0:Lcom/taptap/pay/sdk/library/IabService;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 198
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$1;->this$0:Lcom/taptap/pay/sdk/library/IabService;

    invoke-static {p2}, Lcom/play/taptap/service/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v1

    # setter for: Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/IabService;->access$002(Lcom/taptap/pay/sdk/library/IabService;Lcom/play/taptap/service/IInAppBillingService;)Lcom/play/taptap/service/IInAppBillingService;

    .line 199
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$lock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_12
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 207
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$1;->this$0:Lcom/taptap/pay/sdk/library/IabService;

    const/4 v1, 0x0

    # setter for: Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/IabService;->access$002(Lcom/taptap/pay/sdk/library/IabService;Lcom/play/taptap/service/IInAppBillingService;)Lcom/play/taptap/service/IInAppBillingService;

    .line 208
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$lock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_9
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/IabService$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method
