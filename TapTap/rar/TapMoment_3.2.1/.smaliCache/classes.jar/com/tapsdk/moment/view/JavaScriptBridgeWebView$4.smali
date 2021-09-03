.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;
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

    .line 407
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 410
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$700(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 411
    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$700(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;->onClose()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 412
    :cond_14
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 414
    :cond_1f
    return-void
.end method
