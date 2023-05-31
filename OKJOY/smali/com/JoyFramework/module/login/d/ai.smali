.class public Lcom/JoyFramework/module/login/d/ai;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/e$b;


# instance fields
.field a:Z

.field private b:Lcom/JoyFramework/module/login/b/e$a;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/JoyFramework/wight/ClearEditText;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/JoyFramework/module/login/c/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/d/ai;->a:Z

    .line 35
    new-instance v0, Lcom/JoyFramework/module/login/e/n;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/n;-><init>(Lcom/JoyFramework/module/login/b/e$b;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/ai;)Lcom/JoyFramework/module/login/c/a;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/ai;Lcom/JoyFramework/module/login/c/a;)Lcom/JoyFramework/module/login/c/a;
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/ai;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/ai;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/ai;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/ai;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/ai;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic c(Lcom/JoyFramework/module/login/d/ai;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/JoyFramework/module/login/d/ai;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/e$a;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ai;->b:Lcom/JoyFramework/module/login/b/e$a;

    .line 239
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 5

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/ai;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/al;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/d/al;-><init>(Lcom/JoyFramework/module/login/d/ai;Lcom/JoyFramework/remote/bean/w;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 229
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 29
    check-cast p1, Lcom/JoyFramework/module/login/b/e$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/ai;->a(Lcom/JoyFramework/module/login/b/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :goto_6
    return-void

    .line 183
    :cond_7
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 184
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_1d

    .line 185
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->onFinish()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    .line 188
    :cond_1d
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->f:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    .line 189
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 234
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_login"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->j:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->k:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->b:Lcom/JoyFramework/module/login/b/e$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/ai;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/ai;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/e$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_3d
    :goto_3d
    return-void

    .line 146
    :cond_3e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_fetch_code"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_78

    .line 148
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 150
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 152
    :cond_68
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->b:Lcom/JoyFramework/module/login/b/e$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/login/b/e$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->g:Lcom/JoyFramework/wight/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setFocusable(Z)V

    goto :goto_3d

    .line 155
    :cond_78
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 157
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->a()V

    goto :goto_3d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_phone_code_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_phone_num"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->d:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_login"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->e:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_fetch_code"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->f:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_input"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->g:Lcom/JoyFramework/wight/ClearEditText;

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_phone_code_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->h:Landroid/widget/FrameLayout;

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KPhoneNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 83
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_a7

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->onFinish()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    .line 88
    :cond_a7
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/ai;->a:Z

    if-nez v0, :cond_be

    .line 89
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->f:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->l:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    .line 94
    :cond_be
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_code_login_tip"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->i:Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/JoyFramework/d/cb;->a()Lcom/JoyFramework/d/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ai;->i:Landroid/widget/TextView;

    const-string v2, "\u670d\u52a1\u534f\u8bae"

    new-instance v3, Lcom/JoyFramework/module/login/d/aj;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/login/d/aj;-><init>(Lcom/JoyFramework/module/login/d/ai;)V

    const-string v4, "\u9690\u79c1\u58f0\u660e"

    new-instance v5, Lcom/JoyFramework/module/login/d/ak;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/login/d/ak;-><init>(Lcom/JoyFramework/module/login/d/ai;)V

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/d/cb;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V

    .line 126
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->b:Lcom/JoyFramework/module/login/b/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/e$a;->b()V

    .line 176
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 164
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->b:Lcom/JoyFramework/module/login/b/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/e$a;->a()V

    .line 170
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ai;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->b()V

    .line 133
    return-void
.end method
