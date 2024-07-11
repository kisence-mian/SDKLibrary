.class public Lokjoy/b/e;
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


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lokjoy/b/f;


# direct methods
.method public constructor <init>(Lokjoy/b/f;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lokjoy/b/e;->b:Lokjoy/b/f;

    iput-object p2, p0, Lokjoy/b/e;->a:Ljava/lang/String;

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
    .registers 4

    check-cast p1, Ljava/lang/Void;

    .line 1
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz p1, :cond_1b

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    iget-object v0, p0, Lokjoy/b/e;->a:Ljava/lang/String;

    const-string v1, "\u5b58\u6863\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f"

    invoke-direct {p1, v1, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/b/e;->b:Lokjoy/b/f;

    iget-object v0, v0, Lokjoy/b/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->setFilePath(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    :cond_1b
    return-void
.end method
