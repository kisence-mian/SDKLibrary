.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;
.super Lcom/taptap/pay/sdk/library/BaseDialogClickListener;
.source "CheckLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;

    .line 112
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;

    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/BaseDialogClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoLicense(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 115
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->showLoading()V

    .line 117
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;->this$1:Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$100(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/IabService;->openTapTap()V

    .line 118
    return-void
.end method
