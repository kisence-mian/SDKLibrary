.class Lcom/tapsdk/moment/view/MomentDialog$21;
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

    .line 661
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$21;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 664
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$21;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 665
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 666
    new-instance v0, Lcom/tapsdk/moment/view/MomentDialog$21$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$21$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$21;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-static {v0}, Lcom/tapsdk/moment/XDSDKHelper;->getTapToken(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    goto :goto_30

    .line 678
    :cond_17
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$21;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v1, "no xdsdk"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1300(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_30

    .line 681
    :cond_23
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$21;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v1, "failed"

    const-string v2, "handler empty"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1300(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 683
    :goto_30
    return-void
.end method
