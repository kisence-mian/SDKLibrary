.class Lcom/taptap/pay/sdk/library/TapAlertDialog$1;
.super Landroid/app/Dialog;
.source "TapAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapAlertDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapAlertDialog;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapAlertDialog;Landroid/content/Context;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 68
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$1;->this$0:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$1;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    return-void
.end method
