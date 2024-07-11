.class public Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;
.super Landroid/widget/FrameLayout;
.source "LandingDislikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$c;,
        Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$b;,
        Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private d:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$b;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private h:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->i:Z

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 48
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->j:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->b()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 66
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setClickable(Z)V

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setBackgroundColor(I)V

    .line 74
    const-string v0, "tt_dislike_dialog_layout2"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    .line 76
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x43ac8000    # 345.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 83
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c()V

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->b()V

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->j:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 89
    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$b;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->d:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$b;

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->e:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_4d
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_personalization_layout"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->e:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_personalization_name"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->f:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_edit_suggestion"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->b:Landroid/widget/TextView;

    .line 119
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 129
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    return-void
.end method

.method private d()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_8

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 173
    :cond_8
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->addView(Landroid/view/View;)V

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->j:Ljava/lang/String;

    const-string v3, "ad_explation_show"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->d()V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setVisibility(I)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->i:Z

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    if-eqz v0, :cond_33

    .line 156
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;->a(Landroid/view/View;)V

    .line 158
    :cond_33
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 161
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setVisibility(I)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->i:Z

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 165
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;->b(Landroid/view/View;)V

    .line 167
    :cond_11
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    .line 176
    return-void
.end method
