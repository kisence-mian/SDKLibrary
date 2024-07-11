.class Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;
.super Ljava/lang/Object;
.source "TTWebPageActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 254
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 255
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 256
    if-eqz p1, :cond_1d

    .line 257
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 259
    :cond_1d
    goto :goto_5d

    .line 260
    :cond_1e
    nop

    .line 261
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 262
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    if-nez p2, :cond_34

    goto :goto_41

    :cond_34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    .line 264
    :cond_41
    :goto_41
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p2

    .line 265
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 268
    :goto_5d
    return-void
.end method
