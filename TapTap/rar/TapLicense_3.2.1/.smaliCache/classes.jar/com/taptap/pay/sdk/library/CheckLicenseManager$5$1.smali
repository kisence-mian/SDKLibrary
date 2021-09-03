.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    .line 234
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 237
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$100(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z

    move-result v0

    .line 238
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    const/4 v2, 0x0

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V
    invoke-static {v1, v0, v2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$300(Lcom/taptap/pay/sdk/library/CheckLicenseManager;ZZ)V

    .line 240
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # setter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v1, v2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$002(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Z)Z

    .line 241
    return-void
.end method
