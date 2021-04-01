.class Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/TwitterHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/TwitterHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/TwitterHandle;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;)V
    .registers 3

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;-><init>(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method

.method private checkDone(Ljava/lang/String;)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    const-string v4, "twitter://callback"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 231
    iget-object v4, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const-string v5, "oauth_verifier"

    # invokes: Lcom/androidquery/auth/TwitterHandle;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, p1, v5}, Lcom/androidquery/auth/TwitterHandle;->access$13(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "verf":Ljava/lang/String;
    iget-object v4, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->dismiss()V
    invoke-static {v4}, Lcom/androidquery/auth/TwitterHandle;->access$12(Lcom/androidquery/auth/TwitterHandle;)V

    .line 234
    new-instance v0, Lcom/androidquery/auth/TwitterHandle$Task2;

    iget-object v4, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/androidquery/auth/TwitterHandle$Task2;-><init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task2;)V

    .line 235
    .local v0, "task":Lcom/androidquery/auth/TwitterHandle$Task2;
    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    invoke-virtual {v0, v4}, Lcom/androidquery/auth/TwitterHandle$Task2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    .end local v0    # "task":Lcom/androidquery/auth/TwitterHandle$Task2;
    .end local v1    # "verf":Ljava/lang/String;
    :goto_26
    return v2

    .line 239
    :cond_27
    const-string v4, "twitter://cancel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 240
    iget-object v3, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->failure()V
    invoke-static {v3}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    goto :goto_26

    :cond_35
    move v2, v3

    .line 244
    goto :goto_26
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "finished"

    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->show()V
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$5(Lcom/androidquery/auth/TwitterHandle;)V

    .line 271
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    const-string v0, "started"

    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0, p2}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 263
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
    .line 276
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->failure()V
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    .line 277
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p2}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
