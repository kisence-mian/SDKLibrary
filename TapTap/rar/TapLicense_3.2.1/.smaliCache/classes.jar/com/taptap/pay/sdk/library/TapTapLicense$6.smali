.class Lcom/taptap/pay/sdk/library/TapTapLicense$6;
.super Ljava/lang/Object;
.source "TapTapLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

.field final synthetic val$service:Lcom/taptap/pay/sdk/library/IabService;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapTapLicense;Lcom/taptap/pay/sdk/library/IabService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 210
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->val$service:Lcom/taptap/pay/sdk/library/IabService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->val$service:Lcom/taptap/pay/sdk/library/IabService;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/IabService;->openTapTap()V

    .line 214
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    new-instance v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->val$service:Lcom/taptap/pay/sdk/library/IabService;

    invoke-direct {v1, v2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;-><init>(Lcom/taptap/pay/sdk/library/IabService;)V

    # setter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$502(Lcom/taptap/pay/sdk/library/TapTapLicense;Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 215
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$6;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$500(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->showLoading()V

    .line 216
    return-void
.end method
