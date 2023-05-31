.class public Lcom/bytedance/sdk/openadsdk/core/widget/b;
.super Landroid/app/AlertDialog;
.source "InstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    const-string v0, "tt_custom_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->k:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const-string v1, "tt_install_title"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const-string v1, "tt_install_content"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const-string v1, "tt_install_btn_yes"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const-string v1, "tt_install_btn_no"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    .line 102
    if-gt v2, v1, :cond_29

    if-ge v2, v1, :cond_2a

    :cond_29
    move v2, v1

    .line 105
    :cond_2a
    if-gt v0, v1, :cond_2e

    if-ge v0, v1, :cond_2f

    :cond_2e
    move v0, v1

    .line 109
    :cond_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 114
    :cond_48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/widget/Button;

    if-eqz v0, :cond_5e

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_5e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/widget/Button;

    if-eqz v0, :cond_69

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_69
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 157
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->j:Landroid/graphics/drawable/Drawable;

    .line 147
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->k:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    .line 152
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->g:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->h:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->i:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Landroid/content/Context;

    const-string v1, "tt_install_dialog_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->setContentView(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a()V

    .line 57
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 91
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b()V

    .line 92
    return-void
.end method
