.class public Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;
.super Landroid/app/Activity;


# static fields
.field public static mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    if-eqz v0, :cond_7

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 93
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 40
    if-eqz p1, :cond_1f

    .line 41
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->D()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    .line 44
    :cond_1f
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 45
    const-string p1, "https://img.anythinktech.com/gdpr/PrivacyPolicySetting.html"

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    .line 48
    :cond_2b
    invoke-virtual {p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3d

    .line 49
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    goto :goto_41

    .line 51
    :cond_3d
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    .line 54
    :goto_41
    :try_start_41
    new-instance p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-direct {p1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    .line 55
    new-instance v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;-><init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->setResultCallbackListener(Lcom/anythink/core/activity/component/PrivacyPolicyView$a;)V

    .line 78
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->loadPolicyUrl(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_5d

    .line 85
    return-void

    .line 81
    :catch_5d
    move-exception p1

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->destory()V

    .line 100
    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method
