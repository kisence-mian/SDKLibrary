.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/m;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 246
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_45

    .line 249
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 281
    :cond_45
    :goto_45
    return-void

    .line 258
    :cond_46
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->d:Ljava/lang/String;

    .line 259
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->a:Ljava/lang/String;

    .line 260
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v3

    .line 261
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;->c:Ljava/lang/String;

    .line 262
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 271
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 272
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    goto :goto_45

    .line 277
    :cond_81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_45

    .line 279
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    goto :goto_45
.end method
