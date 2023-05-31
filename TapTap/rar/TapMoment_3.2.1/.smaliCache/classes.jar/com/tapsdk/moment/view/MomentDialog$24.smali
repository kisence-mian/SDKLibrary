.class Lcom/tapsdk/moment/view/MomentDialog$24;
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

    .line 740
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$24;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 743
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$24;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->checkHandlerNotNull(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    invoke-static {v0, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1400(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 745
    :try_start_8
    const-string v0, "TapLogin"

    invoke-static {v0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v0

    const-string v1, "handleLoginError"

    .line 746
    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lcom/tds/common/isc/IscException; {:try_start_8 .. :try_end_21} :catch_22

    .line 750
    goto :goto_26

    .line 748
    :catch_22
    move-exception v0

    .line 749
    .local v0, "e":Lcom/tds/common/isc/IscException;
    invoke-virtual {v0}, Lcom/tds/common/isc/IscException;->printStackTrace()V

    .line 751
    .end local v0    # "e":Lcom/tds/common/isc/IscException;
    :goto_26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 753
    :cond_2b
    return-void
.end method
