.class Lcom/facebook/login/DeviceAuthDialog$5;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .line 375
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "alertDialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 377
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$800(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 379
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 380
    return-void
.end method
