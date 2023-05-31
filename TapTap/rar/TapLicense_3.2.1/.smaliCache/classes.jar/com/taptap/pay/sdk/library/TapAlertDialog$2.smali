.class Lcom/taptap/pay/sdk/library/TapAlertDialog$2;
.super Ljava/lang/Object;
.source "TapAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 76
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$2;->this$0:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 80
    sparse-switch p2, :sswitch_data_18

    goto :goto_16

    .line 83
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 84
    sget-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;

    invoke-direct {v2, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$2$1;-><init>(Lcom/taptap/pay/sdk/library/TapAlertDialog$2;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return v1

    .line 100
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0

    :sswitch_data_18
    .sparse-switch
        0x4 -> :sswitch_4
        0x6f -> :sswitch_4
    .end sparse-switch
.end method
