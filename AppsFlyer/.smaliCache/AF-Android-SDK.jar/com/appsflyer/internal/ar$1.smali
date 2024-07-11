.class final Lcom/appsflyer/internal/ar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/ar;

.field private synthetic values:Lcom/appsflyer/internal/bw;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ar;Lcom/appsflyer/internal/bw;)V
    .registers 3

    .line 251
    iput-object p1, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventType:Lcom/appsflyer/internal/ar;

    iput-object p2, p0, Lcom/appsflyer/internal/ar$1;->values:Lcom/appsflyer/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 5

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[DDL] "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/internal/ar$1;->values:Lcom/appsflyer/internal/bw;

    iget-object v0, v0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " referrer collected via observer"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventType:Lcom/appsflyer/internal/ar;

    check-cast p1, Lcom/appsflyer/internal/bw;

    invoke-static {p2, p1}, Lcom/appsflyer/internal/ar;->values(Lcom/appsflyer/internal/ar;Lcom/appsflyer/internal/bw;)V

    .line 256
    return-void
.end method
