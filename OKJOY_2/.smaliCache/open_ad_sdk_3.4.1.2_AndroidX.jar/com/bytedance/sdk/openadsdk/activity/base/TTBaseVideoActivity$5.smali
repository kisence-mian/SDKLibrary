.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 2

    .line 1661
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9

    .line 1664
    const/4 p5, 0x1

    if-eq p1, p5, :cond_4

    .line 1666
    return p5

    .line 1668
    :cond_4
    if-eqz p2, :cond_d3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_d3

    .line 1672
    :cond_14
    const-string p1, "rewarded_video"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "click_start"

    const/4 v1, 0x0

    if-eqz p2, :cond_31

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 1673
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/view/View;)V

    .line 1674
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    .line 1675
    return p5

    .line 1676
    :cond_31
    const-string p2, "fullscreen_interstitial_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1678
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/view/View;)V

    .line 1679
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    .line 1680
    return p5

    .line 1681
    :cond_4b
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "click_play_open"

    const-string v2, "click_open"

    if-nez p2, :cond_8a

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    goto :goto_8a

    .line 1696
    :cond_5c
    const-string p1, "rewarded_video_landingpage"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result p1

    if-ne p1, p5, :cond_d2

    .line 1697
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1698
    return p5

    .line 1683
    :cond_8a
    :goto_8a
    const/4 p1, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_d4

    :cond_92
    goto :goto_ae

    :sswitch_93
    const-string p2, "click_pause"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    const/4 p1, 0x0

    goto :goto_ae

    :sswitch_9d
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    const/4 p1, 0x2

    goto :goto_ae

    :sswitch_a5
    const-string p2, "click_continue"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    move p1, p5

    :goto_ae
    packed-switch p1, :pswitch_data_e2

    .line 1692
    goto :goto_d2

    .line 1691
    :pswitch_b2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1692
    return p5

    .line 1688
    :pswitch_be
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string p4, "click_play_continue"

    invoke-static {p1, p2, p3, p4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1689
    return p5

    .line 1685
    :pswitch_c8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string p4, "click_play_pause"

    invoke-static {p1, p2, p3, p4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1686
    return p5

    .line 1701
    :cond_d2
    :goto_d2
    return p5

    .line 1669
    :cond_d3
    :goto_d3
    return p5

    :sswitch_data_d4
    .sparse-switch
        -0x4d5dae82 -> :sswitch_a5
        -0x2e50b15f -> :sswitch_9d
        0x6442087f -> :sswitch_93
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_be
        :pswitch_b2
    .end packed-switch
.end method
