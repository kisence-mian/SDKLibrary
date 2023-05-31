.class Lcom/taptap/sdk/IscTapLoginService$b$a;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/IscTapLoginService$b;->a(Lcom/tds/common/reactor/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/net/Api$ApiCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/common/reactor/Subscriber;

.field final synthetic b:Lcom/taptap/sdk/IscTapLoginService$b;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/IscTapLoginService$b;Lcom/tds/common/reactor/Subscriber;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$b$a;->b:Lcom/taptap/sdk/IscTapLoginService$b;

    iput-object p2, p0, Lcom/taptap/sdk/IscTapLoginService$b$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$b$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$b$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$b$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/IscTapLoginService$b$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
