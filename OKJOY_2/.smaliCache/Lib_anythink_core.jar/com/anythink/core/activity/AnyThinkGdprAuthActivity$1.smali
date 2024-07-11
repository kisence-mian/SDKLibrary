.class final Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/activity/component/PrivacyPolicyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLevelSelect(I)V
    .registers 3

    .line 58
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_c

    .line 59
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onAuthResult(I)V

    .line 60
    const/4 p1, 0x0

    sput-object p1, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 62
    :cond_c
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-virtual {p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->finish()V

    .line 63
    return-void
.end method

.method public final onPageLoadFail()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    .line 68
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_e

    .line 69
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    invoke-interface {v0}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onPageLoadFail()V

    .line 71
    :cond_e
    return-void
.end method

.method public final onPageLoadSuccess()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    .line 76
    return-void
.end method
