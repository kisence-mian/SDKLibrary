.class Lcom/facebook/share/internal/LikeDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .line 169
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$1;->this$0:Lcom/facebook/share/internal/LikeDialog;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .line 172
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/share/internal/LikeDialog$Result;

    invoke-direct {v1, p2}, Lcom/facebook/share/internal/LikeDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 173
    return-void
.end method
