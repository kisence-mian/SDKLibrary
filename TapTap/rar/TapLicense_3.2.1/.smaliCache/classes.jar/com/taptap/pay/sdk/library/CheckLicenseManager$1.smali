.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 46
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$000(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    return-void

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    const/4 v1, 0x1

    # setter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$002(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Z)Z

    .line 53
    new-instance v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1$1;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
