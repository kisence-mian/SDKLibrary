.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    .line 53
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 56
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$100(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z

    move-result v0

    .line 57
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive broadcast receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CheckLicenseManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 59
    iget-object v3, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v3, v3, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$200(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    iget-object v3, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v3, v3, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V
    invoke-static {v3, v2, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$300(Lcom/taptap/pay/sdk/library/CheckLicenseManager;ZZ)V

    goto :goto_51

    .line 62
    :cond_3f
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v2, v2, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$200(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v2, v2, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V
    invoke-static {v2, v1, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$300(Lcom/taptap/pay/sdk/library/CheckLicenseManager;ZZ)V

    .line 65
    :goto_51
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    iget-object v2, v2, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # setter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v2, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$002(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Z)Z

    .line 66
    return-void
.end method
