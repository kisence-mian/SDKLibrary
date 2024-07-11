.class public Lcom/bytedance/sdk/openadsdk/core/widget/e;
.super Landroid/app/AlertDialog;
.source "InstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/e$a;
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

.field private k:Lcom/bytedance/sdk/openadsdk/core/widget/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    const-string v0, "tt_custom_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/widget/e$a;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->k:Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    return-object p0
.end method

.method private a()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const-string v1, "tt_install_title"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const-string v1, "tt_install_content"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const-string v1, "tt_install_btn_yes"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const-string v1, "tt_install_btn_no"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private b()V
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_44

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_44

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v2

    .line 102
    if-gt v0, v2, :cond_23

    if-ge v0, v2, :cond_24

    .line 103
    :cond_23
    move v0, v2

    .line 105
    :cond_24
    if-gt v1, v2, :cond_28

    if-ge v1, v2, :cond_29

    .line 106
    :cond_28
    move v1, v2

    .line 109
    :cond_29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->j:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->j:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 114
    :cond_44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c:Landroid/widget/Button;

    if-eqz v0, :cond_56

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d:Landroid/widget/Button;

    if-eqz v0, :cond_5f

    .line 121
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_5f
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 157
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->j:Landroid/graphics/drawable/Drawable;

    .line 147
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->k:Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    .line 152
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->f:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->g:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->h:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->i:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e;->e:Landroid/content/Context;

    const-string v0, "tt_install_dialog_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->setContentView(I)V

    .line 54
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()V

    .line 57
    return-void
.end method

.method public show()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 91
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b()V

    .line 92
    return-void
.end method
