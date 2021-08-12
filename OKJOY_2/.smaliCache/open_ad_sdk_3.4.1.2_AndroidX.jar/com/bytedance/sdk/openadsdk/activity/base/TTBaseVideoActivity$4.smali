.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;
.super Lcom/bytedance/sdk/openadsdk/core/a/e;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 1617
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a_(Landroid/view/View;IIII)V
    .registers 12

    .line 1620
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Landroid/view/View;IIII)V

    .line 1621
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p5, "tt_video_reward_bar"

    invoke-static {p4, p5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    if-ne p3, p4, :cond_1c

    const/4 p3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    :goto_1d
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z

    .line 1622
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    .line 1623
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p4, "tt_playable_play"

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_67

    .line 1624
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p2

    if-eqz p2, :cond_67

    .line 1626
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1627
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p3

    if-eqz p3, :cond_5c

    .line 1628
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p3

    const-string p4, "playable_url"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    :cond_5c
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p4, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->a:Ljava/lang/String;

    const-string v0, "click_playable_download_button_loading"

    invoke-static {p3, p4, p5, v0, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1635
    :cond_67
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez p2, :cond_73

    .line 1636
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/view/View;)V

    goto :goto_cb

    .line 1639
    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p4, "tt_rb_score"

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    if-ne p2, p3, :cond_8a

    .line 1640
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "click_play_star_level"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_cb

    .line 1641
    :cond_8a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p5, "tt_comment_vertical"

    invoke-static {p3, p5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_a0

    .line 1642
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "click_play_star_nums"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_cb

    .line 1643
    :cond_a0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p5, "tt_reward_ad_appname"

    invoke-static {p3, p5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_b6

    .line 1644
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "click_play_source"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_cb

    .line 1645
    :cond_b6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p3, "tt_reward_ad_icon"

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_cb

    .line 1646
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "click_play_logo"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1649
    :cond_cb
    :goto_cb
    return-void
.end method
