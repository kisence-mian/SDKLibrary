.class public final Lokjoy/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    if-eqz p1, :cond_11

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p1, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    invoke-interface {p2, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    :cond_11
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Void;

    .line 1
    const-string p1, "\u5b58\u6863\u6587\u4ef6\u4e0a\u4f20\u6587\u4ef6\u6210\u529f"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {v0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    :cond_15
    return-void
.end method
