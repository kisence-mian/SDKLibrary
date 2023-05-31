.class Lcom/tapsdk/moment/view/NetworkErrorDialog$1;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/NetworkErrorDialog;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/NetworkErrorDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/NetworkErrorDialog;

    .line 77
    iput-object p1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    # getter for: Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->access$000(Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    # getter for: Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->access$000(Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;->onClose()V

    .line 83
    :cond_11
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->dismiss()V

    .line 84
    return-void
.end method
