.class final Lcom/mintegral/msdk/click/f$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mintegral/msdk/click/f;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    iput-object p2, p0, Lcom/mintegral/msdk/click/f$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/click/f$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mintegral/msdk/click/f$2;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/mintegral/msdk/click/f$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 311
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 317
    :try_start_3
    const-string v0, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 321
    :goto_8
    return-void

    .line 319
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    :try_start_2
    const-string v0, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->b(Lcom/mintegral/msdk/click/f;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 184
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/f;->a(Lcom/mintegral/msdk/click/f;I)I

    .line 185
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->c(Lcom/mintegral/msdk/click/f;)V

    .line 222
    :goto_1a
    return-void

    .line 189
    :cond_1b
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/mintegral/msdk/click/f;->c:Z

    .line 192
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 193
    const-string v0, "has_first_started"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 198
    :goto_2b
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v3

    monitor-enter v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_9a

    .line 199
    :try_start_30
    const-string v0, "\u52a0\u8f7d\u9875\u9762-\u5f00\u59cb\uff1a"

    .line 1174
    iget-object v4, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    iget-boolean v4, v4, Lcom/mintegral/msdk/click/f;->b:Z

    if-nez v4, :cond_3e

    iget-object v4, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    iget-boolean v4, v4, Lcom/mintegral/msdk/click/f;->c:Z

    if-eqz v4, :cond_3f

    :cond_3e
    move v1, v2

    .line 200
    :cond_3f
    if-eqz v1, :cond_54

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u91cd\u5b9a\u5411\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_54
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 205
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_72
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/click/f;->a(Lcom/mintegral/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/click/f$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->e(Lcom/mintegral/msdk/click/f;)Z

    .line 214
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->c(Lcom/mintegral/msdk/click/f;)V

    .line 218
    :goto_95
    monitor-exit v3

    goto :goto_1a

    :catchall_97
    move-exception v0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_30 .. :try_end_99} :catchall_97

    :try_start_99
    throw v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 220
    :catch_9a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a

    .line 195
    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/mintegral/msdk/click/f;->b:Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_9a

    goto :goto_2b

    .line 207
    :cond_a6
    :try_start_a6
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 216
    :cond_bf
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->f(Lcom/mintegral/msdk/click/f;)V
    :try_end_c4
    .catchall {:try_start_a6 .. :try_end_c4} :catchall_97

    goto :goto_95
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 273
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: errno = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n onReceivedError\uff1a, description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 277
    :try_start_3d
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->e(Lcom/mintegral/msdk/click/f;)Z

    .line 278
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->k(Lcom/mintegral/msdk/click/f;)V

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->c(Lcom/mintegral/msdk/click/f;)V

    .line 281
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_69

    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 283
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v2}, Lcom/mintegral/msdk/click/f;->l(Lcom/mintegral/msdk/click/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p3, v2}, Lcom/mintegral/msdk/click/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_68
    return-void

    .line 281
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 9

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedSslError IS_SP_CBT_CF:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->IS_SP_CBT_CF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->IS_SP_CBT_CF:Z

    if-eqz v0, :cond_21

    .line 295
    if-eqz p2, :cond_21

    .line 296
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 299
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 300
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f$2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 301
    iget-object v1, p0, Lcom/mintegral/msdk/click/f$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/click/f$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/f$2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    .line 307
    :cond_45
    :goto_45
    return-void

    .line 304
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 227
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 228
    :try_start_6
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "override js\u8df3\u8f6c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mintegral/msdk/click/f;->c:Z

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->g(Lcom/mintegral/msdk/click/f;)V

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->b(Lcom/mintegral/msdk/click/f;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->h(Lcom/mintegral/msdk/click/f;)V

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->c(Lcom/mintegral/msdk/click/f;)V

    .line 244
    monitor-exit v1

    .line 268
    :goto_39
    return v4

    .line 247
    :cond_3a
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/click/f;->a(Lcom/mintegral/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/click/f$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 250
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->e(Lcom/mintegral/msdk/click/f;)Z

    .line 251
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->h(Lcom/mintegral/msdk/click/f;)V

    .line 252
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->c(Lcom/mintegral/msdk/click/f;)V

    .line 253
    monitor-exit v1

    goto :goto_39

    .line 255
    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_6 .. :try_end_66} :catchall_64

    throw v0

    :cond_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_64

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->i(Lcom/mintegral/msdk/click/f;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v1}, Lcom/mintegral/msdk/click/f;->j(Lcom/mintegral/msdk/click/f;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 261
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v2}, Lcom/mintegral/msdk/click/f;->j(Lcom/mintegral/msdk/click/f;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_90
    iget-object v1, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v1}, Lcom/mintegral/msdk/click/f;->j(Lcom/mintegral/msdk/click/f;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_39

    .line 265
    :cond_9a
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$2;->e:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->j(Lcom/mintegral/msdk/click/f;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_39
.end method
