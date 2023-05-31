.class Lcom/tapsdk/moment/view/MomentDialog$2$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$2;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$2;

    .line 203
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$2$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->dismiss()V

    .line 214
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 207
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->reload()V

    .line 209
    :cond_15
    return-void
.end method
