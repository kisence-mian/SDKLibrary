.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    invoke-static {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$700(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .line 418
    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    invoke-static {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$700(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;->onClose()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 419
    :cond_14
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 421
    :cond_1f
    return-void
.end method
