.class Lcom/tapsdk/moment/view/MomentDialog$11$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$11;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$11;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$11;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$11;

    .line 379
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$11;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tds/common/reactor/exceptions/FlowException;)V
    .registers 6
    .param p1, "exception"    # Lcom/tds/common/reactor/exceptions/FlowException;

    .line 391
    const-string v0, "unKnow error"

    .line 392
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/tds/common/reactor/exceptions/FlowException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 393
    invoke-virtual {p1}, Lcom/tds/common/reactor/exceptions/FlowException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_10
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$11;

    iget-object v2, v2, Lcom/tapsdk/moment/view/MomentDialog$11;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v3, "failed"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 383
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$11;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$11;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "failed"

    const-string v3, "empty access token"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 384
    return-void

    .line 386
    :cond_18
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$11$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 387
    return-void
.end method
