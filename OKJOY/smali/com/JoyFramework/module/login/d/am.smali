.class public Lcom/JoyFramework/module/login/d/am;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/f$b;
.implements Lcom/JoyFramework/wight/n$a;


# static fields
.field public static final a:Ljava/lang/String; = "use_mobile_num"

.field public static final b:Ljava/lang/String; = "canBackStack"


# instance fields
.field private c:Lcom/JoyFramework/module/login/b/f$a;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Lcom/JoyFramework/wight/ClearEditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 29
    new-instance v0, Lcom/JoyFramework/module/login/e/q;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/q;-><init>(Lcom/JoyFramework/module/login/b/f$b;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/am;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/am;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/am;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/am;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/f$a;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/am;->c:Lcom/JoyFramework/module/login/b/f$a;

    .line 170
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lcom/JoyFramework/module/login/b/f$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/am;->a(Lcom/JoyFramework/module/login/b/f$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 176
    new-instance v0, Lcom/JoyFramework/module/login/d/ai;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/ai;-><init>()V

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v2, "KPhoneNum"

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/am;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/ai;->setArguments(Landroid/os/Bundle;)V

    .line 180
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/login/d/am;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    .line 182
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_phone_login_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 100
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/am;->l:Z

    if-eqz v0, :cond_1b

    .line 101
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->a()V

    .line 123
    :cond_1a
    :goto_1a
    return-void

    .line 103
    :cond_1b
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 104
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1a

    .line 107
    :cond_29
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_fetch_code"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_68

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->k:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 111
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1a

    .line 114
    :cond_5c
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->c:Lcom/JoyFramework/module/login/b/f$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/am;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/login/b/f$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 115
    :cond_68
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_use_pwd"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 117
    new-instance v0, Lcom/JoyFramework/module/login/d/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/c;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/am;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_phone_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_phone_login_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->e:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_type_userImg"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->f:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_fetch_code"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->h:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_use_pwd"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->j:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_phone_num"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->g:Lcom/JoyFramework/wight/ClearEditText;

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_phone_login_tip"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/am;->i:Landroid/widget/TextView;

    .line 71
    invoke-static {}, Lcom/JoyFramework/d/cb;->a()Lcom/JoyFramework/d/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/am;->i:Landroid/widget/TextView;

    const-string v2, "\u670d\u52a1\u534f\u8bae"

    new-instance v3, Lcom/JoyFramework/module/login/d/an;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/login/d/an;-><init>(Lcom/JoyFramework/module/login/d/am;)V

    const-string v4, "\u9690\u79c1\u58f0\u660e"

    new-instance v5, Lcom/JoyFramework/module/login/d/ao;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/login/d/ao;-><init>(Lcom/JoyFramework/module/login/d/am;)V

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/d/cb;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->c:Lcom/JoyFramework/module/login/b/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/f$a;->b()V

    .line 159
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 147
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/am;->c:Lcom/JoyFramework/module/login/b/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/f$a;->a()V

    .line 153
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 134
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/am;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_22

    .line 136
    const-string v1, "use_mobile_num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 138
    iget-object v2, p0, Lcom/JoyFramework/module/login/d/am;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v2, v1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1a
    const-string v1, "canBackStack"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/d/am;->l:Z

    .line 142
    :cond_22
    return-void
.end method
