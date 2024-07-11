.class public final Lokjoy/i/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lokjoy/k/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokjoy/k/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/i/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u652f\u4ed8\u72b6\u6001\u83b7\u53d6\u51fa\u9519\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 1
    iget p2, p2, Lokjoy/k/a;->h:I

    if-nez p2, :cond_30

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lokjoy/i/b$a;

    invoke-direct {p2, p0}, Lokjoy/i/b$a;-><init>(Lokjoy/i/b;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_64

    :cond_30
    const-string p2, "\u518d\u6b21\u67e5\u8be2\u8ba2\u5355\u72b6\u6001\u51fa\u9519"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/i/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 3
    iget-object v1, v0, Lokjoy/k/a;->b:Ljava/lang/String;

    .line 4
    iget v0, v0, Lokjoy/k/a;->h:I

    .line 5
    invoke-static {p2, v1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    sget-object p2, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 7
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 8
    sget-object p2, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 9
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->cancel()V

    const/4 p2, 0x0

    .line 10
    sput-object p2, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 11
    :cond_50
    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p2, :cond_64

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v0, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 12
    iget-object v1, v0, Lokjoy/k/a;->c:Ljava/lang/String;

    .line 13
    iget-object v0, v0, Lokjoy/k/a;->d:Ljava/lang/String;

    .line 14
    invoke-direct {p2, v1, v0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel;

    .line 1
    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayStatusResponseModel$OkJoyDataModel;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    const-string p1, "\u652f\u4ed8\u72b6\u6001\uff1a\u5df2\u652f\u4ed8"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 3
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4
    sget-object p1, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 5
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    .line 6
    sput-object v0, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 7
    :cond_25
    iget-object p1, p0, Lokjoy/i/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 8
    iget-object v0, v0, Lokjoy/k/a;->b:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "sdkOrderId = ?"

    const-string v2, "order_verify_record"

    const/4 v3, 0x1

    :try_start_39
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_47
    .catchall {:try_start_39 .. :try_end_44} :catchall_45

    goto :goto_4b

    :catchall_45
    move-exception v0

    goto :goto_65

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    :goto_4b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 12
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_be

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v0, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 13
    iget-object v1, v0, Lokjoy/k/a;->c:Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lokjoy/k/a;->d:Ljava/lang/String;

    .line 15
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-direct {p1, v1, v0, v2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    goto :goto_be

    .line 16
    :goto_65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_69
    nop

    .line 17
    const-string p1, "\u652f\u4ed8\u72b6\u6001\uff1a\u672a\u652f\u4ed8"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 18
    iget p1, p1, Lokjoy/k/a;->h:I

    if-nez p1, :cond_89

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lokjoy/i/a;

    invoke-direct {v0, p0}, Lokjoy/i/a;-><init>(Lokjoy/i/b;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_be

    :cond_89
    const-string p1, "\u4e24\u6b21\u67e5\u8be2\u7ed3\u679c\uff1a\u7528\u6237\u672a\u652f\u4ed8"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/i/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 20
    iget-object v2, v1, Lokjoy/k/a;->b:Ljava/lang/String;

    .line 21
    iget v1, v1, Lokjoy/k/a;->h:I

    .line 22
    invoke-static {p1, v2, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    sget-object p1, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 24
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 25
    sget-object p1, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 26
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    .line 27
    sput-object v0, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 28
    :cond_a8
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_be

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v0, p0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 29
    iget-object v1, v0, Lokjoy/k/a;->c:Ljava/lang/String;

    .line 30
    iget-object v0, v0, Lokjoy/k/a;->d:Ljava/lang/String;

    .line 31
    const-string v2, "\u7528\u6237\u672a\u652f\u4ed8"

    invoke-direct {p1, v1, v0, v2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_be
    :goto_be
    return-void
.end method
