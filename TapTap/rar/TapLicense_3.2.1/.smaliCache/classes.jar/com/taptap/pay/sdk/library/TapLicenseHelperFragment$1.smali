.class Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$1;
.super Ljava/lang/Object;
.source "TapLicenseHelperFragment.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/TapLicenseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->check(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    .line 49
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$1;->this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseSuccess()V
    .registers 2

    .line 52
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    if-eqz v0, :cond_11

    .line 53
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapLicenseCallback;->onLicenseSuccess()V

    .line 55
    :cond_11
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$1;->this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->removeSelf()V

    .line 56
    return-void
.end method
