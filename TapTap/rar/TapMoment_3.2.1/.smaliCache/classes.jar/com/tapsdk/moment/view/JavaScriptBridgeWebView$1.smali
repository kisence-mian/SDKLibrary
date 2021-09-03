.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->hasJavascriptMethod(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 185
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iput-object p2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;->onResult(Z)V

    .line 189
    return-void
.end method
