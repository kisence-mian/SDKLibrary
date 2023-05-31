.class Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;
.super Lcom/bytedance/sdk/openadsdk/core/a/e;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a_(Landroid/view/View;IIII)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 1129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Landroid/view/View;IIII)V

    .line 1130
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v3, "tt_video_reward_bar"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_74

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Z)Z

    .line 1131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aA:Landroid/view/View;

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v2, "tt_playable_play"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_68

    .line 1133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 1137
    const-string v1, "playable_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    :cond_5b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->a:Ljava/lang/String;

    const-string v4, "click_playable_download_button_loading"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->r(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1144
    :cond_68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez v0, :cond_76

    .line 1145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/view/View;)V

    .line 1158
    :cond_73
    :goto_73
    return-void

    .line 1130
    :cond_74
    const/4 v0, 0x0

    goto :goto_1c

    .line 1148
    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v2, "tt_rb_score"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8c

    .line 1149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v1, "click_play_star_level"

    invoke-static {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_73

    .line 1150
    :cond_8c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v2, "tt_comment_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 1151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v1, "click_play_star_nums"

    invoke-static {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_73

    .line 1152
    :cond_a2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v2, "tt_reward_ad_appname"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b8

    .line 1153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v1, "click_play_source"

    invoke-static {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_73

    .line 1154
    :cond_b8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v2, "tt_reward_ad_icon"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_73

    .line 1155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$14;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string v1, "click_play_logo"

    invoke-static {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_73
.end method
