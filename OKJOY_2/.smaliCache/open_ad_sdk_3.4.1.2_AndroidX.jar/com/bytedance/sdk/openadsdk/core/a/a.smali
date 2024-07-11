.class public Lcom/bytedance/sdk/openadsdk/core/a/a;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ClickCreativeListener.java"


# instance fields
.field private D:Z

.field private E:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

.field private F:I

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 36
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    .line 39
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:Z

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 149
    return v1

    .line 151
    :cond_8
    const-string v0, "feed_video_middle_page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 152
    const/4 p1, 0x1

    return p1

    .line 154
    :cond_12
    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "splash_ad"

    sparse-switch v0, :sswitch_data_56

    :cond_9
    goto :goto_44

    :sswitch_a
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x3

    goto :goto_45

    :sswitch_14
    const-string v0, "draw_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_45

    :sswitch_1e
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    goto :goto_45

    :sswitch_28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x5

    goto :goto_45

    :sswitch_30
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_45

    :sswitch_3a
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_45

    :goto_44
    const/4 p1, -0x1

    :goto_45
    const-string v0, "banner_call"

    packed-switch p1, :pswitch_data_70

    .line 273
    const-string p1, ""

    return-object p1

    .line 271
    :pswitch_4d
    return-object v1

    .line 269
    :pswitch_4e
    const-string p1, "interaction_call"

    return-object p1

    .line 267
    :pswitch_51
    return-object v0

    .line 265
    :pswitch_52
    return-object v0

    .line 263
    :pswitch_53
    const-string p1, "feed_call"

    return-object p1

    :sswitch_data_56
    .sparse-switch
        -0x65146dea -> :sswitch_3a
        -0x2a77c376 -> :sswitch_30
        0xa6dd8fb -> :sswitch_28
        0x6deace12 -> :sswitch_1e
        0x72060cfe -> :sswitch_14
        0x7cab2108 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_53
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_4e
        :pswitch_4d
    .end packed-switch
.end method

.method private c(Landroid/view/View;)Z
    .registers 8

    .line 184
    nop

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 186
    return v0

    .line 189
    :cond_5
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const-string v2, "ClickCreativeListener"

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    .line 190
    const-string p1, "NativeVideoTsView...."

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return v3

    .line 194
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_cover_center_layout"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_9b

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_logo_image"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_9b

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_btn_ad_image_tv"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_9b

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_name"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_9b

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_button"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_59

    goto :goto_9b

    .line 204
    :cond_59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_root_view"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_95

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_play"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_76

    goto :goto_95

    .line 208
    :cond_76
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_94

    .line 209
    move v1, v0

    :goto_7b
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_94

    .line 210
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 211
    nop

    .line 212
    move v0, v3

    goto :goto_94

    .line 209
    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 216
    :cond_94
    :goto_94
    return v0

    .line 205
    :cond_95
    :goto_95
    const-string p1, "tt_root_view...."

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v3

    .line 200
    :cond_9b
    :goto_9b
    const-string p1, "tt_video_ad_cover_center_layout...."

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v3
.end method

.method private f()Z
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k()I

    move-result v0

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private g()Z
    .registers 2

    .line 221
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v0, :cond_6

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 232
    return v1

    .line 234
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    return v1

    .line 237
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 238
    return v1

    .line 240
    :cond_16
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->F:I

    if-nez v0, :cond_26

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->F:I

    .line 245
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!isViewVisibility()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isAutoPlay()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",!isCoverPageVisibility()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ClickCreativeListener"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->F:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7f

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 247
    return v1

    .line 250
    :cond_7f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->F:I

    if-eq v0, v3, :cond_89

    const/4 v4, 0x2

    if-eq v0, v4, :cond_89

    if-eq v0, v2, :cond_89

    .line 251
    return v1

    .line 253
    :cond_89
    return v3
.end method

.method private i()V
    .registers 3

    .line 299
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:Z

    if-eqz v0, :cond_16

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    if-eqz v0, :cond_16

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Z)V

    .line 306
    :cond_16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 36

    .line 59
    move-object/from16 v11, p0

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    return-void

    .line 63
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->h()Z

    move-result v0

    const-string v1, "ClickCreativeListener"

    if-eqz v0, :cond_25

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:Z

    if-nez v0, :cond_25

    .line 64
    const-string v0, "\u62e6\u622a\u539f\u751f\u89c6\u9891view\u8d70\u666e\u901a\u70b9\u51fb\u4e8b\u4ef6....."

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;IIII)V

    .line 66
    return-void

    .line 68
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->i()V

    .line 69
    const-string v0, "\u8d70\u521b\u610f\u533a\u57df\u70b9\u51fb\u4e8b\u4ef6....."

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    if-nez v0, :cond_37

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    .line 74
    :cond_37
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    if-nez v0, :cond_3c

    .line 75
    return-void

    .line 77
    :cond_3c
    iget-wide v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->w:J

    iget-wide v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->x:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_47

    move-object v9, v1

    goto :goto_50

    :cond_47
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_50
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_56

    move-object v10, v1

    goto :goto_5f

    :cond_56
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    .line 77
    :goto_5f
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    .line 79
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    .line 80
    packed-switch v0, :pswitch_data_1be

    .line 134
    const/4 v0, -0x1

    goto/16 :goto_1a2

    .line 109
    :pswitch_7b
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    invoke-direct {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 111
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v3, "click_call"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 114
    :cond_95
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 115
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v9, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v4, "click"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 117
    goto/16 :goto_1a2

    .line 90
    :pswitch_b4
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_bc

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_120

    :cond_bc
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    .line 91
    const-string v2, "feed_video_middle_page"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 92
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v1

    if-eqz v1, :cond_120

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 93
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 94
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/16 v19, 0x1

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    iget-boolean v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->r:Z

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    .line 95
    invoke-direct {v11, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/lang/String;)Z

    move-result v22

    .line 94
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-static/range {v12 .. v22}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z

    move-result v28

    .line 96
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_13e

    .line 97
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v24, "click"

    move-object/from16 v23, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-static/range {v23 .. v29}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_13e

    .line 100
    :cond_120
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_13e

    .line 101
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 102
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_1a2

    .line 103
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v3, "click"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_1a2

    .line 100
    :cond_13e
    :goto_13e
    goto :goto_1a2

    .line 121
    :pswitch_13f
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_147

    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    if-eqz v1, :cond_157

    .line 122
    :cond_147
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v3, "click_button"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 125
    :cond_157
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Z)V

    .line 126
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:I

    .line 127
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v17

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/16 v19, 0x1

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    iget-boolean v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->r:Z

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    invoke-direct {v11, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/lang/String;)Z

    move-result v22

    .line 126
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    invoke-static/range {v12 .. v22}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z

    move-result v28

    .line 128
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_1a2

    .line 129
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:Ljava/lang/String;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->o:Ljava/util/Map;

    const-string v24, "click"

    move-object/from16 v23, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-static/range {v23 .. v29}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 136
    :cond_1a2
    :goto_1a2
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v1, :cond_1ad

    .line 137
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    move-object/from16 v2, p1

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 140
    :cond_1ad
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 141
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->E:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    if-eqz v0, :cond_1bc

    .line 142
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;->onClick()V

    .line 145
    :cond_1bc
    return-void

    nop

    :pswitch_data_1be
    .packed-switch 0x2
        :pswitch_13f
        :pswitch_13f
        :pswitch_b4
        :pswitch_7b
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->E:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 44
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 52
    return-void
.end method

.method protected a()Z
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result v0

    .line 163
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_3a

    .line 173
    return v1

    .line 171
    :pswitch_1d
    return v1

    .line 165
    :pswitch_1e
    return v2

    .line 169
    :pswitch_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1

    .line 167
    :pswitch_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method public b(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Z

    .line 56
    return-void
.end method

.method public b()Z
    .registers 2

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->D:Z

    .line 292
    return-void
.end method

.method public c()Z
    .registers 2

    .line 287
    const/4 v0, 0x0

    return v0
.end method
