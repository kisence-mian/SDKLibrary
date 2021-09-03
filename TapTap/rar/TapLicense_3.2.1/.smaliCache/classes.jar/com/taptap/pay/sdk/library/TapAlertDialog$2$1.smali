.class Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;
.super Ljava/lang/Object;
.source "TapAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapAlertDialog$2;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/TapAlertDialog$2;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapAlertDialog$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$2;

    .line 84
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;->this$1:Lcom/taptap/pay/sdk/library/TapAlertDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;->this$1:Lcom/taptap/pay/sdk/library/TapAlertDialog$2;

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$2;->this$0:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->access$700(Lcom/taptap/pay/sdk/library/TapAlertDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;->this$1:Lcom/taptap/pay/sdk/library/TapAlertDialog$2;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/TapAlertDialog$2;->this$0:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    invoke-virtual {v1, v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->scanActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 89
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_19

    .line 90
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    :cond_19
    return-void
.end method
