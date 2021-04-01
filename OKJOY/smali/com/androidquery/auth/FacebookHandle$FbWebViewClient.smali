.class Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FacebookHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/FacebookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/FacebookHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/FacebookHandle;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/FacebookHandle;Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;)V
    .registers 3

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;-><init>(Lcom/androidquery/auth/FacebookHandle;)V

    return-void
.end method

.method private checkDone(Ljava/lang/String;)Z
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    const-string v4, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 240
    # invokes: Lcom/androidquery/auth/FacebookHandle;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 242
    .local v1, "values":Landroid/os/Bundle;
    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "error":Ljava/lang/String;
    const-string v4, "error"

    invoke-static {v4, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    if-nez v0, :cond_26

    .line 248
    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iget-object v5, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->extractToken(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/androidquery/auth/FacebookHandle;->access$1(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/androidquery/auth/FacebookHandle;->access$2(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)V

    .line 251
    :cond_26
    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # getter for: Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;
    invoke-static {v4}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 252
    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->dismiss()V
    invoke-static {v4}, Lcom/androidquery/auth/FacebookHandle;->access$4(Lcom/androidquery/auth/FacebookHandle;)V

    .line 253
    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iget-object v5, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # getter for: Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;
    invoke-static {v5}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # getter for: Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;
    invoke-static {v6}, Lcom/androidquery/auth/FacebookHandle;->access$5(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/androidquery/auth/FacebookHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/androidquery/auth/FacebookHandle;->access$6(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {v4, v3}, Lcom/androidquery/auth/FacebookHandle;->access$7(Lcom/androidquery/auth/FacebookHandle;Z)V

    .line 255
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # getter for: Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;
    invoke-static {v4}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/androidquery/auth/FacebookHandle;->authenticated(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # getter for: Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;
    invoke-static {v4}, Lcom/androidquery/auth/FacebookHandle;->access$8(Lcom/androidquery/auth/FacebookHandle;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/androidquery/auth/FacebookHandle;->success(Landroid/content/Context;)V

    .line 268
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "values":Landroid/os/Bundle;
    :goto_5f
    return v2

    .line 258
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "values":Landroid/os/Bundle;
    :cond_60
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->failure()V
    invoke-static {v3}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    goto :goto_5f

    .line 262
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "values":Landroid/os/Bundle;
    :cond_66
    const-string v4, "fbconnect:cancel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 263
    const-string v3, "cancelled"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 264
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->failure()V
    invoke-static {v3}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    goto :goto_5f

    :cond_79
    move v2, v3

    .line 268
    goto :goto_5f
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->failure()V
    invoke-static {v0}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    .line 312
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->show()V
    invoke-static {v0}, Lcom/androidquery/auth/FacebookHandle;->access$10(Lcom/androidquery/auth/FacebookHandle;)V

    .line 299
    const-string v0, "finished"

    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 284
    const-string v0, "started"

    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0, p2}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 291
    :cond_e
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    # invokes: Lcom/androidquery/auth/FacebookHandle;->failure()V
    invoke-static {v0}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    .line 306
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 277
    invoke-direct {p0, p2}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
