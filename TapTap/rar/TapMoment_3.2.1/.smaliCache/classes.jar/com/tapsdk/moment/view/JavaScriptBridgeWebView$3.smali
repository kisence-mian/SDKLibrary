.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$3;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 401
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$3;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 404
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$3;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$600(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 405
    return-void
.end method
