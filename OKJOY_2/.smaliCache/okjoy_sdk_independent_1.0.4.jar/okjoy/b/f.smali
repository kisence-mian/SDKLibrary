.class public final Lokjoy/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyArchivesGetFileResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lokjoy/b/f;->a:Z

    iput-object p2, p0, Lokjoy/b/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz p1, :cond_11

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p1, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    invoke-interface {p2, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    :cond_11
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyArchivesGetFileResponseModel;

    .line 1
    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyArchivesGetFileResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyArchivesGetFileResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyArchivesGetFileResponseModel$OkJoyDataModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u6863\u6587\u4ef6\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lokjoy/b/f;->a:Z

    if-eqz v0, :cond_53

    const-string v0, "\u524d\u5f80\u4e0b\u8f7d\u5b58\u6863\u6587\u4ef6"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/b/f;->b:Ljava/lang/String;

    new-instance v1, Lokjoy/b/e;

    invoke-direct {v1, p0, p1}, Lokjoy/b/e;-><init>(Lokjoy/b/f;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v2, Lokjoy/b/c;

    invoke-direct {v2, v1, v0}, Lokjoy/b/c;-><init>(Lokjoy/h/c;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_77

    .line 3
    :cond_53
    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz v0, :cond_77

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    const-string v1, "\u83b7\u53d6\u5b58\u6863\u5730\u5740\u6210\u529f"

    invoke-direct {v0, v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    goto :goto_77

    :cond_64
    const-string p1, "\u83b7\u53d6\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz v0, :cond_77

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {v0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    :cond_77
    :goto_77
    return-void
.end method
