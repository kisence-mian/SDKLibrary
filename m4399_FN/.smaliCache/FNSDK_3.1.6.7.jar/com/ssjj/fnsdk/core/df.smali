.class Lcom/ssjj/fnsdk/core/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/df;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/df;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateInfo: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "force"

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/df;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/df;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-static {p1, p3, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManagerV2;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    goto :goto_60

    :cond_29
    sget p3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    if-ne p1, p3, :cond_45

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "cb onNotNewVersion() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/df;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    goto :goto_60

    :cond_45
    sget p3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_UPDATE_FAILED:I

    if-ne p1, p3, :cond_60

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "cb onCheckVersionFailure() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/df;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    :cond_60
    :goto_60
    return-void
.end method
