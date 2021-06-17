.class Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentStartActivityDelegate"
.end annotation


# instance fields
.field private final fragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    iput-object p1, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Lcom/facebook/internal/FragmentWrapper;

    .line 891
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 895
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 896
    return-void
.end method
