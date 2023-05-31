.class Lcom/tapsdk/moment/view/MomentDialog$26;
.super Landroid/webkit/WebViewClient;
.source "MomentDialog.java"


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

    .line 765
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$26;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 769
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 770
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 774
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_b

    .line 775
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 776
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$26;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 777
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$26;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/FilePicker;->generateWebResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 779
    .local v1, "resourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v1, :cond_28

    .line 780
    return-object v1

    .line 783
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$26;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 789
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$26;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapsdk/moment/view/FilePicker;->generateWebResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 790
    .local v0, "resourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v0, :cond_15

    .line 791
    return-object v0

    .line 794
    .end local v0    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
