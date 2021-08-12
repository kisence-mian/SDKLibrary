.class public final Lokjoy/h/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/b;


# instance fields
.field public final synthetic a:Lokjoy/h/c;


# direct methods
.method public constructor <init>(Lokjoy/h/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/h/v0;->a:Lokjoy/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lokjoy/h/v0;->a:Lokjoy/h/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result v1

    if-nez v1, :cond_42

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel$OkJoyDataModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoResponseModel$OkJoyDataModel;->getContent()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lokjoy/h/v0$a;

    invoke-direct {v1, p0}, Lokjoy/h/v0$a;-><init>(Lokjoy/h/v0;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    :cond_3a
    iget-object p1, p0, Lokjoy/h/v0;->a:Lokjoy/h/c;

    if-eqz p1, :cond_51

    invoke-interface {p1, v1}, Lokjoy/h/c;->onSuccess(Ljava/lang/Object;)V

    goto :goto_51

    :cond_42
    iget-object v0, p0, Lokjoy/h/v0;->a:Lokjoy/h/c;

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method
