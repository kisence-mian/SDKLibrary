.class Lcom/androidquery/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/WebDialog;


# direct methods
.method private constructor <init>(Lcom/androidquery/WebDialog;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/WebDialog;Lcom/androidquery/WebDialog$DialogWebViewClient;)V
    .registers 3

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/androidquery/WebDialog$DialogWebViewClient;-><init>(Lcom/androidquery/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    const/4 v1, 0x0

    # invokes: Lcom/androidquery/WebDialog;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/androidquery/WebDialog;->access$0(Lcom/androidquery/WebDialog;Z)V

    .line 143
    iget-object v0, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    # getter for: Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Lcom/androidquery/WebDialog;->access$1(Lcom/androidquery/WebDialog;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    # getter for: Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Lcom/androidquery/WebDialog;->access$1(Lcom/androidquery/WebDialog;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    # getter for: Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Lcom/androidquery/WebDialog;->access$1(Lcom/androidquery/WebDialog;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/androidquery/WebDialog$DialogWebViewClient;->this$0:Lcom/androidquery/WebDialog;

    # getter for: Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Lcom/androidquery/WebDialog;->access$1(Lcom/androidquery/WebDialog;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
