.class Lcom/tapsdk/moment/view/MomentDialog$13;
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

    .line 442
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$13;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 445
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$13;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 446
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 447
    new-instance v0, Lcom/tapsdk/moment/view/MomentDialog$13$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$13$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$13;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-static {v0}, Lcom/tapsdk/moment/XDSDKHelper;->getUserInfo(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    goto :goto_22

    .line 458
    :cond_17
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$13;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v1, "no xdsdk"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 461
    :cond_22
    :goto_22
    return-void
.end method
