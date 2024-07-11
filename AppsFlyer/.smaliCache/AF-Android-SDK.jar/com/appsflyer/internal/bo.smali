.class public abstract Lcom/appsflyer/internal/bo;
.super Lcom/appsflyer/internal/bw;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/bw;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method


# virtual methods
.method final AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/av;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appsflyer/internal/av<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    .line 17
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3703
    const-string v0, "appsFlyerCount"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p1

    .line 18
    if-gtz p1, :cond_26

    invoke-virtual {p2}, Lcom/appsflyer/internal/av;->AFInAppEventParameterName()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_26

    .line 19
    :cond_17
    nop

    .line 4038
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p2, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 20
    invoke-virtual {p0}, Lcom/appsflyer/internal/bw;->values()V

    .line 21
    return-void

    .line 18
    :cond_26
    :goto_26
    return-void
.end method
