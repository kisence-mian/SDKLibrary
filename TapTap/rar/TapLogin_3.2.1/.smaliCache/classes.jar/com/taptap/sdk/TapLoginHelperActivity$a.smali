.class Lcom/taptap/sdk/TapLoginHelperActivity$a;
.super Ljava/lang/Object;
.source "TapLoginHelperActivity.java"

# interfaces
.implements Lcom/taptap/sdk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/TapLoginHelperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/g<",
        "Lcom/taptap/sdk/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/TapLoginHelperActivity;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/TapLoginHelperActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/TapLoginHelperActivity$a;->a:Lcom/taptap/sdk/TapLoginHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/TapLoginHelper;->onLoginCancel()V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelperActivity$a;->a:Lcom/taptap/sdk/TapLoginHelperActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Lcom/taptap/sdk/LoginResponse;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/TapLoginHelper;->onLoginSuccess(Lcom/taptap/sdk/LoginResponse;)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/TapLoginHelperActivity$a;->a:Lcom/taptap/sdk/TapLoginHelperActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/TapLoginHelper;->onLoginError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/TapLoginHelperActivity$a;->a:Lcom/taptap/sdk/TapLoginHelperActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taptap/sdk/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/TapLoginHelperActivity$a;->a(Lcom/taptap/sdk/LoginResponse;)V

    return-void
.end method
