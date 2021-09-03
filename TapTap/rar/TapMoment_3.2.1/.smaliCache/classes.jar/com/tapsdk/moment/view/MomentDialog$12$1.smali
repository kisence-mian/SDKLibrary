.class Lcom/tapsdk/moment/view/MomentDialog$12$1;
.super Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$12;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$12;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$12;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$12;

    .line 411
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$12;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-direct {p0}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 414
    if-nez p1, :cond_c

    .line 415
    const/4 v0, 0x0

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$12$1$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$12$1;)V

    invoke-static {v0, v1}, Lcom/tapsdk/moment/XDSDKHelper;->getCurrentTapToken(ZLcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    goto :goto_30

    .line 425
    :cond_c
    const/4 v0, -0x2

    if-ne p1, v0, :cond_21

    .line 426
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$12;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "cancel"

    const-string v3, "\u53d6\u6d88\u7ed1\u5b9a"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_30

    .line 428
    :cond_21
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$12$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$12;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "failed"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 430
    :goto_30
    return-void
.end method
