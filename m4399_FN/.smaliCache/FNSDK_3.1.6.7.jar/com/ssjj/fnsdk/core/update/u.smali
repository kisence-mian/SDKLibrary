.class Lcom/ssjj/fnsdk/core/update/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;ZLandroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/u;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-boolean p3, p0, Lcom/ssjj/fnsdk/core/update/u;->c:Z

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/update/u;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 13

    sget v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    const/4 v1, 0x1

    const-string v2, "-3"

    const-string v3, "onException "

    const/4 v4, -0x1

    const-string v5, "param_msg"

    const-string v6, "param_code"

    const/16 v7, 0x70

    const-string v8, ""

    if-ne p1, v0, :cond_14d

    const-string p1, "\u83b7\u53d6\u66f4\u65b0\u4fe1\u606f\u5931\u8d25\uff0cmsg: "

    const-string p2, "fnsdk"

    if-nez p3, :cond_4b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\u63a5\u53e3data\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    :goto_3f
    invoke-virtual {p2, v6, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {p3, v4, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_4b
    const-string v0, "item"

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    if-nez p3, :cond_7d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\u8bf7\u539f\u6837\u56de\u4f20data\u53c2\u6570"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    goto :goto_3f

    :cond_7d
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/u;->c:Z

    if-eqz p1, :cond_8a

    const-string p1, "Foces to use normal update"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(I)V

    :cond_8a
    invoke-virtual {p3, v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/u;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/u;->d:Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    goto :goto_9f

    :cond_98
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/u;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/u;->d:Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    :goto_9f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8c

    invoke-static {p2, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_1b6

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->getTotalSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f7

    move-object p2, v8

    :cond_f7
    const-string v5, "url"

    invoke-virtual {p1, v5, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_103

    move-object v0, v8

    :cond_103
    const-string p2, "desc"

    invoke-virtual {p1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10f

    move-object v1, v8

    :cond_10f
    const-string p2, "size"

    invoke-virtual {p1, p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "isForce"

    invoke-virtual {p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12d

    move-object v3, v8

    :cond_12d
    const-string p2, "md5"

    invoke-virtual {p1, p2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_139

    move-object v4, v8

    :cond_139
    const-string p2, "version"

    invoke-virtual {p1, p2, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l()Z

    move-result p3

    if-eqz p3, :cond_148

    const/4 p3, 0x4

    goto :goto_149

    :cond_148
    const/4 p3, 0x3

    :goto_149
    invoke-interface {p2, p3, v8, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_1b6

    :cond_14d
    sget p3, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    if-ne p1, p3, :cond_16a

    const/16 p1, 0x6e

    invoke-static {p1, v8}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/u;->d:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->checkAndDeleteSaveFile(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {p1, v1, v8, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_1b6

    :cond_16a
    sget p3, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_FAILED:I

    if-ne p1, p3, :cond_196

    if-nez p2, :cond_171

    move-object p2, v8

    :cond_171
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onCheckVersionFailure "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string p3, "-4"

    invoke-virtual {p1, v6, p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18d
    invoke-virtual {p1, v5, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/update/u;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {p3, v4, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_1b6

    :cond_196
    sget p3, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_EXCEPTION:I

    if-ne p1, p3, :cond_1b6

    if-nez p2, :cond_19d

    move-object p2, v8

    :cond_19d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {p1, v6, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18d

    :cond_1b6
    :goto_1b6
    return-void
.end method
