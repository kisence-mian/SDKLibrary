.class final Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/activity/a/b$a;


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

    .prologue
    .line 51
    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLevelSelect(I)V
    .registers 3

    .prologue
    .line 54
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_c

    .line 55
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onAuthResult(I)V

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 58
    :cond_c
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-virtual {v0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->finish()V

    .line 59
    return-void
.end method

.method public final onPageLoadFail()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    .line 64
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_e

    .line 65
    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    invoke-interface {v0}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onPageLoadFail()V

    .line 67
    :cond_e
    return-void
.end method

.method public final onPageLoadSuccess()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    .line 72
    return-void
.end method
