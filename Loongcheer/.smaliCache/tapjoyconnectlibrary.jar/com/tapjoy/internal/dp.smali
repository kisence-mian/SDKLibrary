.class public final Lcom/tapjoy/internal/dp;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tapjoy/internal/cx;)V
    .registers 2

    .line 1000
    iget-boolean p0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/tapjoy/internal/cx;)V
    .registers 2

    .line 3000
    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    .line 2000
    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/cx;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is not started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/tapjoy/internal/cx;)V
    .registers 2

    .line 4000
    iget-object p0, p0, Lcom/tapjoy/internal/cx;->a:Lcom/tapjoy/internal/co;

    .line 5000
    sget-object v0, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    iget-object p0, p0, Lcom/tapjoy/internal/co;->a:Lcom/tapjoy/internal/cu;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_e

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
