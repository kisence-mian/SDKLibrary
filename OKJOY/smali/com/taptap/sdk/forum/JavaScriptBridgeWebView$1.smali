.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->hasJavascriptMethod(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

.field final synthetic val$callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iput-object p2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;->val$callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;->val$callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;->onResult(Z)V

    .line 195
    return-void
.end method
