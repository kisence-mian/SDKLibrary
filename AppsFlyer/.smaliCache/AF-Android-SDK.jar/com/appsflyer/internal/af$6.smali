.class final Lcom/appsflyer/internal/af$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/aq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 2239
    iput-object p1, p0, Lcom/appsflyer/internal/af$6;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2242
    nop

    .line 3252
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3253
    iget-object v2, p0, Lcom/appsflyer/internal/af$6;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    goto :goto_9

    .line 2243
    :cond_1f
    iget-object p1, p0, Lcom/appsflyer/internal/af$6;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {p1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Ljava/util/Map;)V

    .line 2244
    return-void
.end method

.method public final valueOf(Ljava/lang/String;)V
    .registers 2

    .line 2248
    invoke-static {p1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Ljava/lang/String;)V

    .line 2249
    return-void
.end method
