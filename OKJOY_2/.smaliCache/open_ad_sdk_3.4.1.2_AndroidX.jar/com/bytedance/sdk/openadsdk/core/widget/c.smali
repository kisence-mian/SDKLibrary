.class public Lcom/bytedance/sdk/openadsdk/core/widget/c;
.super Landroid/app/Dialog;
.source "CustomCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    const-string v0, "tt_custom_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->m:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->n:Z

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private a()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/c$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private b()V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_18

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 115
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:Landroid/widget/Button;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 124
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:Landroid/widget/Button;

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 129
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_5a
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->m:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6a

    .line 133
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6f

    .line 136
    :cond_6a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_6f
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->n:Z

    if-eqz v0, :cond_7e

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_88

    .line 145
    :cond_7e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_88
    return-void
.end method

.method private c()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_negtive"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_positive"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_title"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_message"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_image"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v1, "tt_column_line"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:Landroid/view/View;

    .line 166
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/c$a;)Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    .line 174
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->l:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public onBackPressed()V
    .registers 1

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:Landroid/content/Context;

    const-string v0, "tt_custom_dailog_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->setContentView(I)V

    .line 68
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->setCanceledOnTouchOutside(Z)V

    .line 70
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c()V

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b()V

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a()V

    .line 75
    return-void
.end method

.method public show()V
    .registers 1

    .line 152
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 153
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b()V

    .line 154
    return-void
.end method
