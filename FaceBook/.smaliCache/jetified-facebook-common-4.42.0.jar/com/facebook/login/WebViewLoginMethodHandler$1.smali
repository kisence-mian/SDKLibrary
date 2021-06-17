.class Lcom/facebook/login/WebViewLoginMethodHandler$1;
.super Ljava/lang/Object;
.source "WebViewLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/WebViewLoginMethodHandler;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method constructor <init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/login/WebViewLoginMethodHandler;

    .line 72
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$1;->this$0:Lcom/facebook/login/WebViewLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/WebViewLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .line 75
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$1;->this$0:Lcom/facebook/login/WebViewLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/login/WebViewLoginMethodHandler;->onWebDialogComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 76
    return-void
.end method
