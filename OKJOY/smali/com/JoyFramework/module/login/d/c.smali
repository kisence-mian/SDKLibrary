.class public Lcom/JoyFramework/module/login/d/c;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/c$b;
.implements Lcom/JoyFramework/wight/a$a;


# static fields
.field public static final a:Ljava/lang/String; = "canBackStack"

.field public static final b:Ljava/lang/String; = "use_account_name"


# instance fields
.field private c:Lcom/JoyFramework/module/login/b/c$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/JoyFramework/wight/ClearEditText;

.field private j:Lcom/JoyFramework/wight/ClearEditText;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 40
    new-instance v0, Lcom/JoyFramework/module/login/e/f;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/f;-><init>(Lcom/JoyFramework/module/login/b/c$b;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/c;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/c;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/c;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/c;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/c$a;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/c;->c:Lcom/JoyFramework/module/login/b/c$a;

    .line 204
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 5

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/f;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/d/f;-><init>(Lcom/JoyFramework/module/login/d/c;Lcom/JoyFramework/remote/bean/w;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 238
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Lcom/JoyFramework/module/login/b/c$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/c;->a(Lcom/JoyFramework/module/login/b/c$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->j:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0, p2}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_login"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_77

    .line 141
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->d:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->j:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 144
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 182
    :cond_3f
    :goto_3f
    return-void

    .line 147
    :cond_40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 148
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3f

    .line 151
    :cond_54
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_69

    .line 152
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u97006~20\u4f4d\u957f\u5ea6"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3f

    .line 155
    :cond_69
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->c:Lcom/JoyFramework/module/login/b/c$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/c$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 157
    :cond_77
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_register"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8e

    .line 159
    new-instance v0, Lcom/JoyFramework/module/login/d/g;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/g;-><init>()V

    .line 160
    invoke-virtual {p0, v0, v5}, Lcom/JoyFramework/module/login/d/c;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_3f

    .line 162
    :cond_8e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b2

    .line 164
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/c;->f:Z

    if-eqz v0, :cond_a4

    .line 165
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->a()V

    goto :goto_3f

    .line 167
    :cond_a4
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 168
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3f

    .line 171
    :cond_b2
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_forget_password"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3f

    .line 173
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/g;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/g;-><init>()V

    .line 174
    invoke-virtual {p0, v0, v5}, Lcom/JoyFramework/module/login/d/c;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto/16 :goto_3f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_account_pwd_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->h:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_account_input"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setInputType(I)V

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_password_input"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->j:Lcom/JoyFramework/wight/ClearEditText;

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_login"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->k:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_register"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->l:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_forget_password"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->m:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_pwd_tip"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/c;->n:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lcom/JoyFramework/d/cb;->a()Lcom/JoyFramework/d/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/c;->n:Landroid/widget/TextView;

    const-string v2, "\u670d\u52a1\u534f\u8bae"

    new-instance v3, Lcom/JoyFramework/module/login/d/d;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/login/d/d;-><init>(Lcom/JoyFramework/module/login/d/c;)V

    const-string v4, "\u9690\u79c1\u58f0\u660e"

    new-instance v5, Lcom/JoyFramework/module/login/d/e;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/login/d/e;-><init>(Lcom/JoyFramework/module/login/d/c;)V

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/d/cb;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->g:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->c:Lcom/JoyFramework/module/login/b/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/c$a;->b()V

    .line 199
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 187
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->c:Lcom/JoyFramework/module/login/b/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/c$a;->a()V

    .line 193
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 123
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_23

    .line 125
    const-string v1, "use_account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 127
    iget-object v2, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v2, v1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_1a
    const-string v1, "canBackStack"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/d/c;->f:Z

    .line 134
    :goto_22
    return-void

    .line 131
    :cond_23
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->i:Lcom/JoyFramework/wight/ClearEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/c;->j:Lcom/JoyFramework/wight/ClearEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method
