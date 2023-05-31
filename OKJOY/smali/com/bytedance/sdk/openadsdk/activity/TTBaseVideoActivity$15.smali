.class Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;)V
    .registers 2

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1173
    if-eq p1, v0, :cond_6

    .line 1210
    :cond_5
    :goto_5
    return v0

    .line 1177
    :cond_6
    if-eqz p2, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1181
    const-string v2, "rewarded_video"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "click_start"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aA:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/view/View;)V

    .line 1183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aA:Landroid/view/View;

    move v0, v1

    .line 1184
    goto :goto_5

    .line 1185
    :cond_33
    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "click_start"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aA:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/view/View;)V

    .line 1188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aA:Landroid/view/View;

    move v0, v1

    .line 1189
    goto :goto_5

    .line 1190
    :cond_52
    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "rewarded_video"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 1192
    :cond_62
    const/4 v2, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ec

    :cond_6a
    :goto_6a
    packed-switch v2, :pswitch_data_fa

    goto :goto_5

    .line 1194
    :pswitch_6e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_play_pause"

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 1195
    goto :goto_5

    .line 1192
    :sswitch_7b
    const-string v3, "click_pause"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v2, v1

    goto :goto_6a

    :sswitch_85
    const-string v3, "click_continue"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v2, v0

    goto :goto_6a

    :sswitch_8f
    const-string v3, "click_open"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v2, 0x2

    goto :goto_6a

    .line 1197
    :pswitch_99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_play_continue"

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 1198
    goto/16 :goto_5

    .line 1200
    :pswitch_a7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_play_open"

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 1201
    goto/16 :goto_5

    .line 1205
    :cond_b7
    const-string v2, "rewarded_video_landingpage"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "click_open"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 1206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_play_open"

    invoke-static {v0, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 1207
    goto/16 :goto_5

    .line 1192
    nop

    :sswitch_data_ec
    .sparse-switch
        -0x4d5dae82 -> :sswitch_85
        -0x2e50b15f -> :sswitch_8f
        0x6442087f -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_99
        :pswitch_a7
    .end packed-switch
.end method
