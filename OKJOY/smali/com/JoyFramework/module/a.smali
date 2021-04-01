.class public abstract Lcom/JoyFramework/module/a;
.super Lcom/JoyFramework/module/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/JoyFramework/module/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/JoyFramework/module/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 23
    invoke-virtual {p0}, Lcom/JoyFramework/module/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 25
    :cond_d
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 80
    if-nez p1, :cond_3

    .line 83
    :goto_2
    return-void

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 82
    invoke-static {}, Lcom/JoyFramework/d/a;->a()V

    goto :goto_2
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 41
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .registers 6

    .prologue
    .line 110
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 121
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    sget-object v0, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/a;->a_(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 112
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u8d26\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 116
    :cond_36
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 119
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u8d26\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public a_(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 86
    if-nez p1, :cond_3

    .line 98
    :goto_2
    return-void

    .line 87
    :cond_3
    const-string v0, "\u662f\u5426\u53d6\u6d88\u652f\u4ed8\uff1f"

    new-instance v1, Lcom/JoyFramework/module/b;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/b;-><init>(Lcom/JoyFramework/module/a;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    goto :goto_2
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/JoyFramework/module/c;

    if-eqz v0, :cond_13

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/module/c;

    iput-object v0, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    .line 51
    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/JoyFramework/module/BaseFragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    if-eqz v0, :cond_f

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/c;->setFragment(Lcom/JoyFramework/module/a;)V

    .line 71
    iput-object v1, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    .line 73
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/JoyFramework/module/BaseFragment;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    if-eqz v0, :cond_c

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/a;->a:Lcom/JoyFramework/module/c;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/c;->setFragment(Lcom/JoyFramework/module/a;)V

    .line 64
    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/JoyFramework/module/BaseFragment;->onStart()V

    .line 56
    return-void
.end method
