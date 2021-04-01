.class Lcom/JoyFramework/module/b/c/e;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/b/c/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/c/c;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->b(Lcom/JoyFramework/module/b/c/c;)V

    .line 177
    :cond_10
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->d(Lcom/JoyFramework/module/b/c/c;)V

    .line 169
    :cond_10
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 10

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 184
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_55

    .line 185
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_11
    const-string v1, "weixin://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "alipays://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "mailto://"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "tel://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_7a

    move-result v1

    if-eqz v1, :cond_54

    .line 194
    :cond_31
    :try_start_31
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    iget-object v2, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v2, v1}, Lcom/JoyFramework/module/b/c/c;->startActivity(Landroid/content/Intent;)V

    .line 196
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/JoyFramework/module/b/c/g;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/b/c/g;-><init>(Lcom/JoyFramework/module/b/c/e;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_5a

    .line 234
    :cond_54
    :goto_54
    return-void

    .line 187
    :cond_55
    :try_start_55
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 220
    :catch_5a
    move-exception v1

    .line 221
    const-string v1, "weixin://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 223
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u4e0b\u8f7d\u5fae\u4fe1"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_79} :catch_7a

    goto :goto_54

    .line 230
    :catch_7a
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 224
    :cond_7f
    :try_start_7f
    const-string v1, "alipays://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 225
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 226
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u4e0b\u8f7d\u652f\u4ed8\u5b9d"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9d} :catch_7a

    goto :goto_54
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 110
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 111
    :cond_11
    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 115
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v1, v2}, Lcom/JoyFramework/module/b/c/c;->startActivity(Landroid/content/Intent;)V

    .line 161
    :cond_29
    :goto_29
    return v0

    .line 122
    :cond_2a
    const-string v1, "weixin://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "alipays://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "mailto://"

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "tel://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 127
    :cond_4a
    :try_start_4a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    iget-object v2, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v2, v1}, Lcom/JoyFramework/module/b/c/c;->startActivity(Landroid/content/Intent;)V

    .line 129
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/JoyFramework/module/b/c/f;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/b/c/f;-><init>(Lcom/JoyFramework/module/b/c/e;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6d} :catch_6f

    .line 159
    const/4 v0, 0x1

    goto :goto_29

    .line 149
    :catch_6f
    move-exception v1

    .line 150
    const-string v1, "weixin://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 151
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v1}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 152
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u8bf7\u4e0b\u8f7d\u5fae\u4fe1"

    new-array v3, v0, [Z

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_29

    .line 153
    :cond_8e
    const-string v1, "alipays://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 154
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v1}, Lcom/JoyFramework/module/b/c/c;->c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 155
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u8bf7\u4e0b\u8f7d\u652f\u4ed8\u5b9d"

    new-array v3, v0, [Z

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_29
.end method
