.class final Lcom/appsflyer/internal/z$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/z;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/z;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-static {v0}, Lcom/appsflyer/internal/z;->values(Lcom/appsflyer/internal/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 225
    iget-object v0, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-static {v0}, Lcom/appsflyer/internal/z;->values(Lcom/appsflyer/internal/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/x;

    .line 226
    iget-object v2, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-static {v2}, Lcom/appsflyer/internal/z;->AFKeystoreWrapper(Lcom/appsflyer/internal/z;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 227
    iget-object v2, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-static {v2}, Lcom/appsflyer/internal/z;->getLevel(Lcom/appsflyer/internal/z;)Ljava/util/Map;

    move-result-object v2

    .line 1135
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/x;->AFInAppEventType(Ljava/util/Map;Z)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3b

    .line 228
    goto :goto_1a

    .line 232
    :cond_3a
    goto :goto_3c

    .line 230
    :catchall_3b
    move-exception v0

    .line 233
    :goto_3c
    iget-object v0, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/z;->valueOf(Lcom/appsflyer/internal/z;I)I

    .line 234
    iget-object v0, p0, Lcom/appsflyer/internal/z$6;->AFInAppEventParameterName:Lcom/appsflyer/internal/z;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/z;->AFInAppEventParameterName(Lcom/appsflyer/internal/z;Z)Z

    .line 235
    return-void
.end method
