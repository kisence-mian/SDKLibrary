.class Lcom/tapsdk/moment/view/MomentDialog$7$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$7;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$7;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$7;

    .line 322
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iput p2, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$7;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/tapsdk/moment/view/MomentDialog$7$1;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    return-void
.end method
