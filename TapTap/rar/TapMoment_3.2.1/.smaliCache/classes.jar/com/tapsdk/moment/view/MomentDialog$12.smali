.class Lcom/tapsdk/moment/view/MomentDialog$12;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 402
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 405
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 406
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_37

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_37

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 408
    const-string v1, "tip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 411
    :try_start_1d
    new-instance v0, Lcom/tapsdk/moment/view/MomentDialog$12$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$12$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$12;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-static {v0}, Lcom/tapsdk/moment/XDSDKHelper;->openBindTapDialog(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_36

    .line 432
    :catch_26
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    goto :goto_42

    .line 436
    :cond_37
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$12;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v1, "no xdsdk"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 439
    :cond_42
    :goto_42
    return-void
.end method
