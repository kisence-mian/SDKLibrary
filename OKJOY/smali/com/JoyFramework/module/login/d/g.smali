.class public Lcom/JoyFramework/module/login/d/g;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/d$b;
.implements Lcom/JoyFramework/wight/a$a;


# instance fields
.field private a:Lcom/JoyFramework/module/login/b/d$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/JoyFramework/wight/ClearEditText;

.field private g:Lcom/JoyFramework/wight/ClearEditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 41
    new-instance v0, Lcom/JoyFramework/module/login/e/h;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/h;-><init>(Lcom/JoyFramework/module/login/b/d$b;)V

    .line 42
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 157
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 158
    const-string v1, ""

    .line 159
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_24

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 162
    :cond_24
    return-object v1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/g;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/g;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/g;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/g;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 143
    const-string v0, "joy"

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/JoyFramework/module/login/d/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/g;->f:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->g:Lcom/JoyFramework/wight/ClearEditText;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/JoyFramework/module/login/d/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/d$a;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/g;->a:Lcom/JoyFramework/module/login/b/d$a;

    .line 185
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;)V

    .line 192
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/j;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/d/j;-><init>(Lcom/JoyFramework/module/login/d/g;Lcom/JoyFramework/remote/bean/w;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 228
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 33
    check-cast p1, Lcom/JoyFramework/module/login/b/d$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/g;->a(Lcom/JoyFramework/module/login/b/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->f:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0, p2}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
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
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 116
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 139
    :cond_1a
    :goto_1a
    return-void

    .line 118
    :cond_1b
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_now"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8c

    .line 120
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->f:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->b:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->g:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 123
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1a

    .line 126
    :cond_55
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 127
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1a

    .line 130
    :cond_69
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7e

    .line 131
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u5c11\u4e8e6\u4f4d\u6570"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1a

    .line 134
    :cond_7e
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->a:Lcom/JoyFramework/module/login/b/d$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/d$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 136
    :cond_8c
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_random"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 137
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/g;->c()V

    goto/16 :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_account_register_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->e:Landroid/widget/FrameLayout;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_random"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->j:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_account_name"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->f:Lcom/JoyFramework/wight/ClearEditText;

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_psw"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->g:Lcom/JoyFramework/wight/ClearEditText;

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_now"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->h:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_account_register_tip"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/g;->i:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {}, Lcom/JoyFramework/d/cb;->a()Lcom/JoyFramework/d/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/g;->i:Landroid/widget/TextView;

    const-string v2, "\u670d\u52a1\u534f\u8bae"

    new-instance v3, Lcom/JoyFramework/module/login/d/h;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/login/d/h;-><init>(Lcom/JoyFramework/module/login/d/g;)V

    const-string v4, "\u9690\u79c1\u58f0\u660e"

    new-instance v5, Lcom/JoyFramework/module/login/d/i;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/login/d/i;-><init>(Lcom/JoyFramework/module/login/d/g;)V

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/d/cb;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V

    .line 105
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/g;->c()V

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->a:Lcom/JoyFramework/module/login/b/d$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/d$a;->b()V

    .line 180
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/g;->a:Lcom/JoyFramework/module/login/b/d$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/d$a;->a()V

    .line 174
    return-void
.end method
