.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V
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

    .line 102
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->getCheckIntent(Landroid/app/Activity;)Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$500(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 109
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLicenseByIntent(Landroid/app/Fragment;Landroid/content/Intent;)V
    invoke-static {v2, v3, v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$600(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Fragment;Landroid/content/Intent;)V

    goto :goto_45

    .line 112
    :cond_35
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;

    invoke-direct {v3, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3$1;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;)V

    invoke-static {v2, v3}, Lcom/taptap/pay/sdk/library/UIHelper;->showNoLicensed(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V

    .line 122
    :goto_45
    return-void
.end method
