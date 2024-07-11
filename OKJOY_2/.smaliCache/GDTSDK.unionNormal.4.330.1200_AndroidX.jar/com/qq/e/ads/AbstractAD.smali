.class public abstract Lcom/qq/e/ads/AbstractAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/AbstractAD$BasicADListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/qq/e/comm/pi/ADI;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Lcom/qq/e/comm/pi/ADI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/qq/e/ads/cfg/BrowserType;

.field private e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/AbstractAD;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/BrowserType;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/AbstractAD;->d:Lcom/qq/e/ads/cfg/BrowserType;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/AbstractAD;Lcom/qq/e/comm/pi/ADI;)Lcom/qq/e/comm/pi/ADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/AbstractAD;->c:Lcom/qq/e/comm/pi/ADI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/AbstractAD;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/AbstractAD;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/AbstractAD;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object p0
.end method

.method static synthetic c(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/comm/pi/ADI;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/AbstractAD;->c:Lcom/qq/e/comm/pi/ADI;

    return-object p0
.end method


# virtual methods
.method protected final a()Lcom/qq/e/comm/pi/ADI;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->c:Lcom/qq/e/comm/pi/ADI;

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qq/e/comm/pi/POFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V
    .registers 13

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "Required Activity/Service/Permission not declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa2

    invoke-virtual {p0, p4, p1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/AbstractAD;->b:Z

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/qq/e/ads/AbstractAD$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/AbstractAD$1;-><init>(Lcom/qq/e/ads/AbstractAD;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    .registers 5

    if-eqz p1, :cond_29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    invoke-static {p2}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qq/e/ads/AbstractAD$BasicADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :cond_18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qq/e/ads/AbstractAD$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/e/ads/AbstractAD$2;-><init>(Lcom/qq/e/ads/AbstractAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    return-void
.end method

.method protected abstract a(Lcom/qq/e/comm/pi/ADI;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Z

    return v0
.end method

.method protected final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/AbstractAD;->b:Z

    return v0
.end method

.method public setBrowserType(Lcom/qq/e/ads/cfg/BrowserType;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/AbstractAD;->d:Lcom/qq/e/ads/cfg/BrowserType;

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->c:Lcom/qq/e/comm/pi/ADI;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/BrowserType;->value()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ADI;->setBrowserType(I)V

    :cond_f
    return-void
.end method

.method public setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/AbstractAD;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->c:Lcom/qq/e/comm/pi/ADI;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ADI;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_b
    return-void
.end method
