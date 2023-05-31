.class public abstract Lcom/JoyFramework/module/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field protected mSubscription:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/BaseActivity;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    return-void
.end method

.method private initData()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method


# virtual methods
.method public addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V
    .registers 5

    .prologue
    .line 107
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p2}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    if-gtz p3, :cond_e

    .line 110
    const-string v0, "l_account_base_fragment_host"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    .line 112
    :cond_e
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p3, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 114
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 115
    return-void
.end method

.method public addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V
    .registers 5

    .prologue
    .line 80
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p3, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 85
    return-void
.end method

.method public abstract getContentViewId()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/BaseActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseActivity;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/BaseActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseActivity;->initData()V

    .line 38
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/BaseActivity;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/BaseActivity;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/JoyFramework/module/BaseActivity;->overridePendingTransition(II)V

    .line 52
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 121
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 45
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public replaceFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V
    .registers 5

    .prologue
    .line 93
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p2}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p3, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 97
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 98
    return-void
.end method
