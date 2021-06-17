.class public abstract Lcom/appsflyer/internal/bw;
.super Ljava/util/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/bw$d;
    }
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/Runnable;

.field public AFInAppEventType:Lcom/appsflyer/internal/bw$d;

.field public final AFKeystoreWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final valueOf:Ljava/lang/String;

.field private values:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/appsflyer/internal/bw$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw$d;

    iput-object v0, p0, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 21
    iput-object p2, p0, Lcom/appsflyer/internal/bw;->AFInAppEventParameterName:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/bw;->valueOf:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract AFInAppEventType(Landroid/content/Context;)V
.end method

.method public final AFKeystoreWrapper()V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/bw;->valueOf:Ljava/lang/String;

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    new-instance v1, Lcom/appsflyer/internal/bs;

    invoke-direct {v1}, Lcom/appsflyer/internal/bs;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appsflyer/internal/bw;->values:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/appsflyer/internal/bw$d;->values:Lcom/appsflyer/internal/bw$d;

    iput-object v0, p0, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 43
    invoke-virtual {p0}, Lcom/appsflyer/internal/bw;->setChanged()V

    .line 44
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 45
    return-void
.end method

.method public final values()V
    .registers 3

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/bw;->values:J

    .line 29
    sget-object v0, Lcom/appsflyer/internal/bw$d;->valueOf:Lcom/appsflyer/internal/bw$d;

    iput-object v0, p0, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 30
    new-instance v0, Lcom/appsflyer/internal/bw$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/bw$1;-><init>(Lcom/appsflyer/internal/bw;)V

    invoke-virtual {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 36
    return-void
.end method
