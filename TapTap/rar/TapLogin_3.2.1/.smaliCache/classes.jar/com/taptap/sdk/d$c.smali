.class Lcom/taptap/sdk/d$c;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/net/Api$ApiCallback<",
        "Lcom/taptap/sdk/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/g;

.field final synthetic b:Lcom/taptap/sdk/LoginResponse;

.field final synthetic c:Lcom/taptap/sdk/d;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/d;Lcom/taptap/sdk/g;Lcom/taptap/sdk/LoginResponse;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/d$c;->c:Lcom/taptap/sdk/d;

    iput-object p2, p0, Lcom/taptap/sdk/d$c;->a:Lcom/taptap/sdk/g;

    iput-object p3, p0, Lcom/taptap/sdk/d$c;->b:Lcom/taptap/sdk/LoginResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/Profile;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object p1

    if-nez p1, :cond_c

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/d$c;->a:Lcom/taptap/sdk/g;

    invoke-interface {p1}, Lcom/taptap/sdk/g;->a()V

    goto :goto_13

    .line 4
    :cond_c
    iget-object p1, p0, Lcom/taptap/sdk/d$c;->a:Lcom/taptap/sdk/g;

    iget-object v0, p0, Lcom/taptap/sdk/d$c;->b:Lcom/taptap/sdk/LoginResponse;

    invoke-interface {p1, v0}, Lcom/taptap/sdk/g;->onSuccess(Ljava/lang/Object;)V

    :goto_13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/d$c;->a:Lcom/taptap/sdk/g;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taptap/sdk/Profile;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/d$c;->a(Lcom/taptap/sdk/Profile;)V

    return-void
.end method
