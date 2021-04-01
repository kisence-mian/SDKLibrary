.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;
.super Landroid/widget/FrameLayout;
.source "RewardDislikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private h:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
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
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c()V

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 63
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setClickable(Z)V

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setBackgroundColor(I)V

    .line 71
    const-string v0, "tt_dislike_dialog_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d()V

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c()V

    .line 83
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 213
    if-nez p1, :cond_4

    .line 234
    :cond_3
    :goto_3
    return-void

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 221
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1a

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_2e

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 230
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_5

    .line 99
    :goto_4
    return-void

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 91
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto :goto_4
.end method

.method private d()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_title_content"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_line1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_header_back"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv_second"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_1e

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 204
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_27

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    .line 207
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_30

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 210
    :cond_30
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->addView(Landroid/view/View;)V

    .line 167
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e()V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setVisibility(I)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    if-eqz v0, :cond_20

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->a(Landroid/view/View;)V

    .line 174
    :cond_20
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 177
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setVisibility(I)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    if-eqz v0, :cond_11

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->b(Landroid/view/View;)V

    .line 183
    :cond_11
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    .line 191
    return-void
.end method
