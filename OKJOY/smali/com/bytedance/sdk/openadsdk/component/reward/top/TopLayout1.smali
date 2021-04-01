.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;
.super Landroid/widget/FrameLayout;
.source "TopLayout1.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/a",
        "<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/component/reward/top/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;Z)Z
    .registers 2

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->d:Z

    .line 48
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->e:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 50
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->d:Z

    if-eqz v0, :cond_5c

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_reward_1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 53
    :goto_12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->d:Z

    if-eqz v0, :cond_67

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_countdown"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_skip"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    .line 66
    :goto_58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c()V

    .line 68
    return-object p0

    .line 52
    :cond_5c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_full_1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_12

    .line 61
    :cond_67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_countdown"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_top_skip"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    goto :goto_58
.end method

.method public a()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 172
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->d:Z

    if-nez v0, :cond_41

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_42

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42540000    # 53.0f

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 151
    :goto_3a
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_41
    return-void

    .line 151
    :cond_42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_3a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 179
    :cond_9
    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    .line 165
    return-void
.end method

.method public setShowCountDown(Z)V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_c
    return-void

    .line 136
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setShowDislike(Z)V
    .registers 2

    .prologue
    .line 160
    return-void
.end method

.method public setShowSkip(Z)V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_c
    return-void

    .line 105
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setShowSound(Z)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :cond_c
    return-void

    .line 120
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setSkipEnable(Z)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 115
    :cond_e
    return-void
.end method

.method public setSoundMute(Z)V
    .registers 4

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->f:Z

    .line 128
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->f:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 130
    :goto_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    return-void

    .line 129
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_unmute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_10
.end method
