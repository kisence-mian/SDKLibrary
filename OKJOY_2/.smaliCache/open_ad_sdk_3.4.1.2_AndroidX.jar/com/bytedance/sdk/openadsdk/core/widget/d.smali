.class public Lcom/bytedance/sdk/openadsdk/core/widget/d;
.super Landroid/app/AlertDialog;
.source "DownloadCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    const-string v0, "DialogFullscreen"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->n:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    return-object p0
.end method

.method private a()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_title"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_app_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_app_version"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_cancel"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_app_privacy"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_app_developer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v1, "tt_download_icon"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/d$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private b()V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 130
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 137
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5d

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v3, "tt_open_app_detail_developer"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    nop

    .line 140
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 141
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 143
    :cond_4e
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_58
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_8c

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v3, "tt_open_app_version"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    nop

    .line 151
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 152
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "\u6682\u65e0"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 154
    :cond_7d
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_8c
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)Lcom/bytedance/sdk/openadsdk/core/widget/d;
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->n:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    .line 182
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->l:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->m:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public onBackPressed()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->n:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    if-eqz v0, :cond_7

    .line 115
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->c(Landroid/app/Dialog;)V

    .line 117
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:Landroid/content/Context;

    const-string v0, "tt_common_download_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->setContentView(I)V

    .line 57
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->setCanceledOnTouchOutside(Z)V

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a()V

    .line 60
    return-void
.end method

.method public show()V
    .registers 1

    .line 121
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 122
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b()V

    .line 123
    return-void
.end method
