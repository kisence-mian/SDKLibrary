.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

    .line 673
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->this$1:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

    iput-object p2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->val$result:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 676
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->this$1:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$900(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 677
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    .line 678
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->val$result:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_22

    .line 680
    :cond_1d
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 683
    :cond_22
    :goto_22
    return-void
.end method
