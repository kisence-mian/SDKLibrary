.class Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;
.super Lcom/bytedance/sdk/openadsdk/core/a/a;
.source "TTPlayableWebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 6

    .line 552
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 6

    .line 555
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;IIII)V

    .line 558
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 560
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 561
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 562
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playable_url"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_33
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    .line 565
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;->e:Ljava/lang/String;

    .line 564
    const-string p5, "click_playable_download_button_loading"

    invoke-static {p2, p3, p4, p5, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 567
    :cond_40
    return-void
.end method
