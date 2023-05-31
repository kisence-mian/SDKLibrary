.class public Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;
.super Landroid/app/Activity;


# static fields
.field public static mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/core/activity/a/b;

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    if-eqz v0, :cond_7

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 89
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1f

    .line 37
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    .line 40
    :cond_1f
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 41
    const-string v0, "http://img.toponad.com/gdpr/PrivacyPolicySetting.html"

    iput-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    .line 45
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    .line 50
    :goto_3c
    :try_start_3c
    new-instance v0, Lcom/anythink/core/activity/a/b;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    .line 51
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    new-instance v1, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;-><init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/activity/a/b;->a(Lcom/anythink/core/activity/a/b$a;)V

    .line 74
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setContentView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    iget-object v1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/activity/a/b;->a(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_5f

    .line 82
    :goto_59
    return-void

    .line 47
    :cond_5a
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    goto :goto_3c

    .line 82
    :catch_5f
    move-exception v0

    goto :goto_59
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/a/b;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/b;->a()V

    .line 96
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method
