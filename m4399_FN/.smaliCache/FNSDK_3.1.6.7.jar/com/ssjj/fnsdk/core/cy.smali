.class Lcom/ssjj/fnsdk/core/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_49

    const-string p1, "param_code"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8c

    const/4 p3, -0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_23

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    goto/16 :goto_8c

    :cond_23
    const/4 p2, -0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    goto :goto_8c

    :cond_36
    const/4 p2, -0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNetWorkError()V

    goto :goto_8c

    :cond_49
    const/4 p2, 0x1

    if-ne p1, p2, :cond_54

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    goto :goto_8c

    :cond_54
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    goto :goto_8c

    :cond_5f
    const/4 p2, 0x6

    if-ne p1, p2, :cond_6a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    goto :goto_8c

    :cond_6a
    const/4 p2, 0x7

    if-ne p1, p2, :cond_75

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    goto :goto_8c

    :cond_75
    const/16 p2, 0x8

    if-ne p1, p2, :cond_81

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    goto :goto_8c

    :cond_81
    const/16 p2, 0xb

    if-ne p1, p2, :cond_8c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cy;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz p1, :cond_8c

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    :cond_8c
    :goto_8c
    return-void
.end method
