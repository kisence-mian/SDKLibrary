.class Lcom/tapsdk/moment/view/MomentDialog$12$1$1;
.super Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$12$1;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tapsdk/moment/view/MomentDialog$12$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$12$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/tapsdk/moment/view/MomentDialog$12$1;

    .line 415
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$12$1;

    invoke-direct {p0}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 418
    if-nez p1, :cond_a

    .line 419
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$12$1;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v0, p2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 421
    :cond_a
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$12$1;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$12$1;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$12$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$12;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "failed"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 423
    :goto_1d
    return-void
.end method
