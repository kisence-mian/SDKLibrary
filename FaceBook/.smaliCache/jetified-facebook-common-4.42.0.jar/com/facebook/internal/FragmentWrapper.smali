.class public Lcom/facebook/internal/FragmentWrapper;
.super Ljava/lang/Object;
.source "FragmentWrapper.java"


# instance fields
.field private nativeFragment:Landroid/app/Fragment;

.field private supportFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/facebook/internal/FragmentWrapper;->nativeFragment:Landroid/app/Fragment;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    .line 38
    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_9

    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    .line 74
    :cond_9
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->nativeFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->nativeFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getSupportFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 58
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_8

    .line 59
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/facebook/internal/FragmentWrapper;->nativeFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    :goto_d
    return-void
.end method
