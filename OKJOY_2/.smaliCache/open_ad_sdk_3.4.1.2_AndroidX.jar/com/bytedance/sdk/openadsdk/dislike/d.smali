.class public Lcom/bytedance/sdk/openadsdk/dislike/d;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.source "TTDislikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/d$c;,
        Lcom/bytedance/sdk/openadsdk/dislike/d$a;,
        Lcom/bytedance/sdk/openadsdk/dislike/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/d$b;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/d$a;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 5

    .line 47
    const-string v0, "tt_dislikeDialog_new"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->h:Z

    .line 49
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 50
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->i:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->g:Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_18

    .line 123
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 124
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 129
    const v2, 0x3eae147b    # 0.34f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    :cond_18
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/d;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/d;)Landroid/view/View;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->d:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 135
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 147
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->d:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->c:Lcom/bytedance/sdk/openadsdk/dislike/d$b;

    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private c()V
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_personalization_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->d:Landroid/view/View;

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_personalization_name"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->e:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_edit_suggestion"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->a:Landroid/widget/TextView;

    .line 183
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/d$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_filer_words_lv"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 194
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/dislike/d;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_8

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 214
    :cond_8
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/dislike/d;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->h:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->c:Lcom/bytedance/sdk/openadsdk/dislike/d$b;

    if-eqz v0, :cond_16

    if-nez p1, :cond_7

    goto :goto_16

    .line 59
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->a(Ljava/util/List;)V

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 63
    return-void

    .line 56
    :cond_16
    :goto_16
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/dislike/d$a;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->g:Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 66
    if-eqz p1, :cond_c

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 70
    :cond_c
    return-void
.end method

.method public getLayoutId()I
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_dialog_layout2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x43ac8000    # 345.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    .line 110
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public getPersonalizationPromptIds()[I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTDislikeListViewIds()[I
    .registers 4

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 96
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setCanceledOnTouchOutside(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setCancelable(Z)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a()V

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->c()V

    .line 86
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->b()V

    .line 87
    return-void
.end method

.method public show()V
    .registers 1

    .line 115
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    .line 116
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->d()V

    .line 117
    return-void
.end method
