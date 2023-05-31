.class final Lcom/anythink/core/activity/a/b$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/a/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/a/b;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/anythink/core/activity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mIsWebViewloadSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-boolean v2, v2, Lcom/anythink/core/activity/a/b;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 178
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-boolean v0, v0, Lcom/anythink/core/activity/a/b;->j:Z

    if-eqz v0, :cond_6a

    .line 179
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/a;->clearAnimation()V

    .line 184
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    if-eqz v0, :cond_61

    .line 185
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    invoke-interface {v0}, Lcom/anythink/core/activity/a/b$a;->onPageLoadSuccess()V

    .line 198
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/a/b;->k:Z

    .line 199
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 207
    :cond_69
    :goto_69
    return-void

    .line 188
    :cond_6a
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/a;->clearAnimation()V

    .line 190
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    if-eqz v0, :cond_61

    .line 194
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    iget-object v0, v0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    invoke-interface {v0}, Lcom/anythink/core/activity/a/b$a;->onPageLoadFail()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_97} :catch_98

    goto :goto_61

    .line 207
    :catch_98
    move-exception v0

    goto :goto_69
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 169
    invoke-static {}, Lcom/anythink/core/activity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageStarted\uff1a"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 171
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 224
    invoke-static {}, Lcom/anythink/core/activity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 227
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 211
    invoke-static {}, Lcom/anythink/core/activity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading\uff1a"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 213
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$2;->a:Lcom/anythink/core/activity/a/b;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/anythink/core/activity/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
