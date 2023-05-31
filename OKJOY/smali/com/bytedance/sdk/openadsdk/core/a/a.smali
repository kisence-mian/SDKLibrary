.class public Lcom/bytedance/sdk/openadsdk/core/a/a;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ClickCreativeListener.java"


# instance fields
.field private C:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

.field private D:I

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 238
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_74

    .line 251
    const-string v0, ""

    :goto_d
    return-object v0

    .line 238
    :sswitch_e
    const-string v1, "embeded_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "draw_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "banner_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "slide_banner_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_40
    const-string v1, "splash_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    .line 241
    :pswitch_4a
    const-string v0, "feed_call"

    goto :goto_d

    .line 243
    :pswitch_4d
    const-string v0, "banner_call"

    goto :goto_d

    .line 245
    :pswitch_50
    const-string v0, "banner_call"

    goto :goto_d

    .line 247
    :pswitch_53
    const-string v0, "interaction_call"

    goto :goto_d

    .line 249
    :pswitch_56
    const-string v0, "splash_ad"

    goto :goto_d

    .line 238
    nop

    :sswitch_data_5a
    .sparse-switch
        -0x65146dea -> :sswitch_22
        -0x2a77c376 -> :sswitch_e
        0xa6dd8fb -> :sswitch_40
        0x6deace12 -> :sswitch_36
        0x72060cfe -> :sswitch_18
        0x7cab2108 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method private c(Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 161
    .line 162
    if-nez p1, :cond_6

    move v3, v2

    .line 193
    :goto_5
    return v3

    .line 166
    :cond_6
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v0, :cond_12

    .line 167
    const-string v0, "ClickCreativeListener"

    const-string v1, "NativeVideoTsView...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 171
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_ad_cover_center_layout"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_ad_logo_image"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_btn_ad_image_tv"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_ad_name"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_ad_button"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 177
    :cond_58
    const-string v0, "ClickCreativeListener"

    const-string v1, "tt_video_ad_cover_center_layout...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 181
    :cond_60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_root_view"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_7c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v4, "tt_video_play"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_84

    .line 182
    :cond_7c
    const-string v0, "ClickCreativeListener"

    const-string v1, "tt_root_view...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 185
    :cond_84
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a0

    move v1, v2

    :goto_89
    move-object v0, p1

    .line 186
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_a0

    move-object v0, p1

    .line 187
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a3

    move v2, v3

    :cond_a0
    move v3, v2

    .line 193
    goto/16 :goto_5

    .line 186
    :cond_a3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_89
.end method

.method private d()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()I

    move-result v1

    if-ne v1, v0, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 156
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 157
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_21

    .line 155
    :cond_20
    :goto_20
    return v0

    .line 157
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 198
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v0, :cond_6

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private f()Z
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_8

    .line 231
    :cond_7
    :goto_7
    return v2

    .line 211
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    if-eq v0, v5, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 215
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_7

    .line 218
    :cond_20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    if-nez v0, :cond_30

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    .line 223
    :cond_30
    const-string v3, "ClickCreativeListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!isViewVisibility()="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_9a

    move v0, v1

    :goto_44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isAutoPlay()="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",!isCoverPageVisibility()="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_9c

    move v0, v1

    :goto_63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    if-ne v0, v5, :cond_8a

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    :cond_8a
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    if-eq v0, v1, :cond_97

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_97

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:I

    if-ne v0, v5, :cond_7

    :cond_97
    move v2, v1

    .line 231
    goto/16 :goto_7

    :cond_9a
    move v0, v2

    .line 223
    goto :goto_44

    :cond_9c
    move v0, v2

    goto :goto_63
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 18

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    :cond_7
    :goto_7
    return-void

    .line 60
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61
    const-string v0, "ClickCreativeListener"

    const-string v1, "\u62e6\u622a\u539f\u751f\u89c6\u9891view\u8d70\u666e\u901a\u70b9\u51fb\u4e8b\u4ef6....."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;IIII)V

    goto :goto_7

    .line 65
    :cond_1f
    const-string v0, "ClickCreativeListener"

    const-string v1, "\u8d70\u521b\u610f\u533a\u57df\u70b9\u51fb\u4e8b\u4ef6....."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    if-nez v0, :cond_30

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    .line 70
    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 73
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->v:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->w:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_74

    const/4 v10, 0x0

    .line 74
    :goto_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7e

    const/4 v11, 0x0

    :goto_42
    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 73
    invoke-virtual/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v8

    .line 76
    packed-switch v8, :pswitch_data_16e

    .line 120
    const/4 v0, -0x1

    .line 122
    :goto_59
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v1, :cond_62

    .line 123
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 126
    :cond_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->C:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    if-eqz v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->C:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;->onClick()V

    goto :goto_7

    .line 73
    :cond_74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    goto :goto_3d

    :cond_7e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v11, v0

    goto :goto_42

    .line 79
    :pswitch_88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_c0

    .line 80
    :cond_98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v5

    .line 82
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v0, :cond_be

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    :cond_be
    move v0, v8

    .line 86
    goto :goto_59

    :cond_c0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16b

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->h()V

    .line 88
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    move v0, v8

    goto/16 :goto_59

    .line 95
    :pswitch_e8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click_call"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    .line 100
    :cond_102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    move v0, v8

    .line 103
    goto/16 :goto_59

    .line 107
    :pswitch_122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v0, :cond_12a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    if-eqz v0, :cond_13a

    .line 108
    :cond_12a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click_button"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    .line 111
    :cond_13a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Z)V

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    .line 113
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v7, 0x1

    .line 112
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v5

    .line 114
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v0, :cond_16b

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    move v0, v8

    goto/16 :goto_59

    :cond_16b
    move v0, v8

    goto/16 :goto_59

    .line 76
    :pswitch_data_16e
    .packed-switch 0x2
        :pswitch_122
        :pswitch_122
        :pswitch_88
        :pswitch_e8
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->C:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 41
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 49
    return-void
.end method

.method protected a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 134
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v2, :cond_7

    .line 148
    :goto_6
    :pswitch_6
    return v1

    .line 135
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(I)I

    move-result v2

    .line 138
    packed-switch v2, :pswitch_data_3a

    goto :goto_6

    .line 142
    :pswitch_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v1

    goto :goto_6

    :pswitch_24
    move v1, v0

    .line 140
    goto :goto_6

    .line 144
    :pswitch_26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_36
    move v0, v1

    :cond_37
    move v1, v0

    goto :goto_6

    .line 138
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_26
        :pswitch_24
        :pswitch_6
    .end packed-switch
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    .line 53
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method
