.class Lcom/ssjj/fnsdk/core/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field private final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    const-string v0, "force"

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_START:I

    if-ne p1, v0, :cond_41

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2b

    const-string p3, "cb onForceUpdateLoading() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    goto/16 :goto_a7

    :cond_2b
    const-string p3, "cb onNormalUpdateLoading() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    goto :goto_a7

    :cond_41
    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_CANCEL:I

    if-ne p1, v0, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5f

    const-string p3, "cb onCancelForceUpdate() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    goto :goto_a7

    :cond_5f
    const-string p3, "cb onCancelNormalUpdate() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    goto :goto_a7

    :cond_75
    sget p3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FAILED:I

    if-ne p1, p3, :cond_91

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "cb onException() "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dg;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    goto :goto_a7

    :cond_91
    sget p3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FINISH:I

    if-ne p1, p3, :cond_a7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u4e0b\u8f7d\u5b8c\u6210\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void
.end method
