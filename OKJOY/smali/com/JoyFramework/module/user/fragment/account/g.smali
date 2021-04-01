.class public Lcom/JoyFramework/module/user/fragment/account/g;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_find_back_account_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 49
    new-instance v0, Lcom/JoyFramework/module/login/d/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/a;-><init>()V

    .line 50
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/g;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    .line 67
    :cond_1b
    :goto_1b
    return-void

    .line 51
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_find_back_password_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 53
    new-instance v0, Lcom/JoyFramework/module/login/d/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/b;-><init>()V

    .line 54
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/g;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 55
    :cond_33
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_find_back_service_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 57
    new-instance v0, Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/a/a;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v2, "canClose"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/g;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 62
    :cond_58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_find_back_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6a

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->a()V

    goto :goto_1b

    .line 64
    :cond_6a
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_find_back_back2"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->a()V

    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_find_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_find_back_account_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->a:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_find_back_password_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->b:Landroid/widget/FrameLayout;

    .line 33
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_find_back_service_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->c:Landroid/widget/FrameLayout;

    .line 34
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/g;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_find_back_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_find_back_back2"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-object v1
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 73
    return-void
.end method
