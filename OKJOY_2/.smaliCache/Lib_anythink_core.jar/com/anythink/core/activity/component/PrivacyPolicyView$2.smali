.class final Lcom/anythink/core/activity/component/PrivacyPolicyView$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/component/PrivacyPolicyView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/component/PrivacyPolicyView;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .line 179
    :try_start_0
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mIsWebViewloadSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-boolean v2, v2, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 181
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-boolean v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 182
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v0}, Lcom/anythink/core/activity/component/LoadingView;->clearAnimation()V

    .line 187
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    if-eqz v0, :cond_8b

    .line 188
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    invoke-interface {v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$a;->onPageLoadSuccess()V

    goto :goto_8b

    .line 191
    :cond_62
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v0}, Lcom/anythink/core/activity/component/LoadingView;->clearAnimation()V

    .line 193
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    if-eqz v0, :cond_8b

    .line 197
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    invoke-interface {v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$a;->onPageLoadFail()V

    .line 201
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iput-boolean v2, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    .line 202
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_0 .. :try_end_92} :catchall_93

    .line 208
    :cond_92
    return-void

    .line 204
    :catchall_93
    move-exception p1

    .line 210
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 172
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPageStarted\uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 174
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7

    .line 226
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 227
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

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

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 230
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 214
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 216
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-virtual {p1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    const/4 p1, 0x1

    return p1

    .line 219
    :cond_22
    const/4 p1, 0x0

    return p1
.end method
