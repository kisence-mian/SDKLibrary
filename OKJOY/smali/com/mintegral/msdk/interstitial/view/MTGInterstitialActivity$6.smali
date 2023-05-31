.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 228
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 224
    return-void
.end method

.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    .line 205
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 207
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/interstitial/c/a$c;->a(Ljava/lang/String;)V

    .line 209
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1, p3}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 215
    :goto_23
    return-void

    .line 213
    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public final a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .prologue
    .line 197
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    .line 199
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;ILjava/lang/String;)V

    .line 239
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_32
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/c/a$c;->a()V

    .line 247
    :cond_43
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-boolean v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mIsMtgPage:Z

    if-nez v0, :cond_65

    .line 248
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "\u4e0d\u662fmtg\u9875\u9762 getinfo\u8fd8\u6ca1\u8c03\u7528 2\u79d2\u540e\u6267\u884ctask"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_5f
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    .line 266
    :cond_64
    :goto_64
    return-void

    .line 251
    :cond_65
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "\u662fmtg\u9875\u9762 getinfo\u5df2\u8c03\u7528 \u4e0d\u505a\u5904\u7406"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_5f

    .line 261
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 263
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    const-string v1, "load page failed"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a$c;->a(Ljava/lang/String;)V

    goto :goto_64
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 191
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 219
    return-void
.end method
