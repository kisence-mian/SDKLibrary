.class Lcom/facebook/login/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/login/LoginClient$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/LoginFragment;

    .line 69
    iput-object p1, p0, Lcom/facebook/login/LoginFragment$1;->this$0:Lcom/facebook/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/login/LoginClient$Result;)V
    .registers 3
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .line 72
    iget-object v0, p0, Lcom/facebook/login/LoginFragment$1;->this$0:Lcom/facebook/login/LoginFragment;

    # invokes: Lcom/facebook/login/LoginFragment;->onLoginClientCompleted(Lcom/facebook/login/LoginClient$Result;)V
    invoke-static {v0, p1}, Lcom/facebook/login/LoginFragment;->access$000(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V

    .line 73
    return-void
.end method
