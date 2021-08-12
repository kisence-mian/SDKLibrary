.class public final Lokjoy/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lokjoy/h/c;


# direct methods
.method public constructor <init>(Lokjoy/h/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a\u4f20\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    if-eqz p2, :cond_27

    const v0, 0x186a0

    invoke-interface {p2, v0, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_27
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_52

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_45

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_38

    iget-object p1, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    if-eqz p1, :cond_76

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lokjoy/h/c;->onSuccess(Ljava/lang/Object;)V

    goto :goto_76

    :cond_38
    iget-object p2, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    if-eqz p2, :cond_76

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_45
    const-string p1, "\u4e0a\u4f20\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u63a5\u53e3\u54cd\u5e94\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    if-eqz p2, :cond_76

    const v0, 0x186a1

    goto :goto_73

    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u63a5\u53e3\u9519\u8bef code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/b/a;->a:Lokjoy/h/c;

    if-eqz p2, :cond_76

    const v0, 0x186a0

    :goto_73
    invoke-interface {p2, v0, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method
