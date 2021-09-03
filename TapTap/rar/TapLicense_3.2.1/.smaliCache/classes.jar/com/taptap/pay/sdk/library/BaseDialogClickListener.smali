.class Lcom/taptap/pay/sdk/library/BaseDialogClickListener;
.super Ljava/lang/Object;
.source "BaseDialogClickListener.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .line 10
    return-void
.end method

.method public onDownloadTapTap(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 25
    return-void
.end method

.method public onNoLicense(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 30
    return-void
.end method

.method public onOpenTapTapCN(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 15
    return-void
.end method

.method public onOpenTapTapGlobal(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 20
    return-void
.end method
