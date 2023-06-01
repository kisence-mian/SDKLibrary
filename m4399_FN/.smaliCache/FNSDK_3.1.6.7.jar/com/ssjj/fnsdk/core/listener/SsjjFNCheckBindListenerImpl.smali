.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    return-object p0
.end method


# virtual methods
.method public onCheckBind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    if-nez v0, :cond_a

    const-string p1, "SsjjFNCheckBindListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    invoke-interface {v0, p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;->onCheckBind(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/listener/c;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
