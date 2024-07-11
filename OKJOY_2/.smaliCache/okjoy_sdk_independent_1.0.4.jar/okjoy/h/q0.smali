.class public final Lokjoy/h/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/b;


# instance fields
.field public final synthetic a:Lokjoy/h/c;


# direct methods
.method public constructor <init>(Lokjoy/h/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/h/q0;->a:Lokjoy/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lokjoy/h/q0;->a:Lokjoy/h/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lokjoy/h/q0;->a:Lokjoy/h/c;

    if-eqz v0, :cond_2a

    invoke-interface {v0, p1}, Lokjoy/h/c;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_1b
    iget-object v0, p0, Lokjoy/h/q0;->a:Lokjoy/h/c;

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
