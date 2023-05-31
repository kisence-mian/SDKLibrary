.class final Lcom/qq/e/ads/cfg/GDTAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/managers/plugin/PM$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/cfg/GDTAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadFail()V
    .registers 3

    const-string v0, "Init fail"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onLoadSuccess()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qq/e/ads/cfg/GDTAD;->a(Z)Z

    invoke-static {}, Lcom/qq/e/ads/cfg/GDTAD;->a()Lcom/qq/e/ads/cfg/GDTAD$InitListener;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/qq/e/ads/cfg/GDTAD;->a()Lcom/qq/e/ads/cfg/GDTAD$InitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/ads/cfg/GDTAD$InitListener;->onSuccess()V

    :cond_11
    return-void
.end method
