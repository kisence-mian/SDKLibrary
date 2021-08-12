.class public abstract Lcom/qq/e/ads/LiteAbstractAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/LiteAbstractAD;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/LiteAbstractAD;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/LiteAbstractAD;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/LiteAbstractAD;->a:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
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

.method protected abstract a(I)V
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "Required Activity/Service/Permission not declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa2

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/LiteAbstractAD;->a(I)V

    return-void

    :cond_11
    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/ads/LiteAbstractAD$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qq/e/ads/LiteAbstractAD$1;-><init>(Lcom/qq/e/ads/LiteAbstractAD;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
