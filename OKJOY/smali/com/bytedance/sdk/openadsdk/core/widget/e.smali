.class public Lcom/bytedance/sdk/openadsdk/core/widget/e;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/e$a;,
        Lcom/bytedance/sdk/openadsdk/core/widget/e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

.field private e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/core/d/r;

.field private h:Landroid/view/ViewStub;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->f:Z

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/r;Z)V
    .registers 7

    .prologue
    .line 162
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    if-nez v0, :cond_b

    .line 189
    :cond_a
    :goto_a
    return-void

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

    if-eqz v0, :cond_1c

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e$b;->j()V

    .line 171
    :cond_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 174
    if-eqz p2, :cond_7c

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    const-string v3, "tt_video_without_wifi_tips"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    const-string v2, "tt_video_bytesize_MB"

    .line 176
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    const-string v2, "tt_video_bytesize"

    .line 177
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_5f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_a

    .line 179
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    const-string v2, "tt_video_without_wifi_tips"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    const-string v2, "tt_video_bytesize"

    .line 180
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c()V

    return-void
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    :cond_8
    :goto_8
    return v0

    .line 122
    :cond_9
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->f:Z

    if-nez v1, :cond_8

    .line 123
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

    if-eqz v1, :cond_29

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$b;->h()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 125
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v1, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 127
    :cond_22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V

    .line 129
    :cond_29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->g:Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;Z)V

    .line 130
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->g:Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 88
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 64
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 79
    :cond_14
    :goto_14
    return-void

    .line 65
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 66
    const-string v0, "tt_video_traffic_tip_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    .line 67
    const-string v0, "tt_video_traffic_tip_tv"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b:Landroid/widget/TextView;

    .line 68
    const-string v0, "tt_video_traffic_continue_play_btn"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method

.method private c()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 140
    :goto_4
    return-void

    .line 139
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d()V

    goto :goto_4
.end method

.method private d()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_b
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 55
    if-eqz p1, :cond_31

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->i:Landroid/view/View;

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tt_video_traffic_tip"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v1, "tt_video_traffic_tip_layout_viewStub"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Landroid/view/ViewStub;

    .line 61
    :cond_31
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Lcom/bytedance/sdk/openadsdk/core/widget/e$b;)V
    .registers 3

    .prologue
    .line 82
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Lcom/bytedance/sdk/openadsdk/core/widget/e$b;

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 84
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 144
    if-eqz p1, :cond_5

    .line 145
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b()V

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d()V

    .line 148
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/r;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    if-eqz v1, :cond_7

    if-nez p2, :cond_8

    .line 109
    :cond_7
    :goto_7
    return v0

    .line 101
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->i:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->g:Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 104
    packed-switch p1, :pswitch_data_1a

    goto :goto_7

    .line 107
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(I)Z

    move-result v0

    goto :goto_7

    .line 104
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
