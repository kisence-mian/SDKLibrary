.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;
.super Landroid/widget/FrameLayout;
.source "RewardDislikeDialogNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;,
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$b;,
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private d:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$b;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private h:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->i:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 51
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->j:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->b()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 69
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setClickable(Z)V

    .line 70
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setBackgroundColor(I)V

    .line 77
    const-string v0, "tt_dislike_dialog_layout2"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    .line 79
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x43ac8000    # 345.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 86
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c()V

    .line 87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->b()V

    .line 88
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->j:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 92
    return-void

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$b;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->d:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$b;

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->e:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_4d
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->h:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_personalization_layout"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->e:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_personalization_name"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->f:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_edit_suggestion"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->b:Landroid/widget/TextView;

    .line 122
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 132
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void
.end method

.method private d()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_8

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 176
    :cond_8
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->addView(Landroid/view/View;)V

    .line 152
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->d()V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setVisibility(I)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->i:Z

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 156
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->j:Ljava/lang/String;

    const-string v3, "ad_explation_show"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->h:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    if-eqz v0, :cond_33

    .line 159
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;->a(Landroid/view/View;)V

    .line 161
    :cond_33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 184
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 164
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setVisibility(I)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->i:Z

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->h:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 168
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;->b(Landroid/view/View;)V

    .line 170
    :cond_11
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->h:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    .line 179
    return-void
.end method
