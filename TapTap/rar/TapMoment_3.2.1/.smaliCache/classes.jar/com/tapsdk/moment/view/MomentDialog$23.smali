.class Lcom/tapsdk/moment/view/MomentDialog$23;
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

    .line 714
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$23;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 717
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$23;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->checkHandlerNotNull(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    invoke-static {v0, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1400(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$23;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->checkHasXDSdk(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    invoke-static {v0, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1500(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 718
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_20

    .line 719
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 720
    .local v0, "accessTokenJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$23$1;

    invoke-direct {v1, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$23$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$23;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-static {v0, v1}, Lcom/tapsdk/moment/XDSDKHelper;->bindTapAccount(Lorg/json/JSONObject;Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    .line 733
    .end local v0    # "accessTokenJsonObject":Lorg/json/JSONObject;
    goto :goto_2d

    .line 734
    :cond_20
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$23;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v1, "failed"

    const-string v2, "accessToken format error"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1300(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 737
    :cond_2d
    :goto_2d
    return-void
.end method
