.class public Lcom/bytedance/sdk/openadsdk/dislike/c;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.source "TTDislikeDialogDefault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/c$a;,
        Lcom/bytedance/sdk/openadsdk/dislike/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 43
    const-string v0, "tt_dislikeDialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_16

    .line 103
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 104
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 105
    const/16 v2, 0x32

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 108
    :cond_16
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_title_content"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_line1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_header_back"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_filer_words_lv"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_filer_words_lv_second"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 219
    if-nez p1, :cond_4

    .line 240
    :cond_3
    :goto_3
    return-void

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_11

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 227
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1a

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_2e

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 236
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/c;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_1e

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 210
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_27

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    .line 213
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_30

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 216
    :cond_30
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 56
    :cond_6
    :goto_6
    return-void

    .line 52
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto :goto_6
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    .line 60
    return-void
.end method

.method public getLayoutId()I
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_dialog_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    .line 91
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public getTTDislikeListViewIds()[I
    .registers 5

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_filer_words_lv"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_filer_words_lv_second"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 82
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCancelable(Z)V

    .line 69
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->b()V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 73
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    .line 98
    return-void
.end method
