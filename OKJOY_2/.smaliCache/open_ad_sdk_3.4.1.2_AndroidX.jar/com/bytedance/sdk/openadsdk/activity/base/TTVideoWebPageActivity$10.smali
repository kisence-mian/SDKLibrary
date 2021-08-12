.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;
.super Ljava/lang/Object;
.source "TTVideoWebPageActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 362
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 363
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 364
    if-eqz p1, :cond_1d

    .line 365
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 367
    :cond_1d
    goto :goto_5d

    .line 368
    :cond_1e
    nop

    .line 369
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 370
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    if-nez p2, :cond_34

    goto :goto_41

    :cond_34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    .line 372
    :cond_41
    :goto_41
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->h(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p2

    .line 373
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$10;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 376
    :goto_5d
    return-void
.end method
