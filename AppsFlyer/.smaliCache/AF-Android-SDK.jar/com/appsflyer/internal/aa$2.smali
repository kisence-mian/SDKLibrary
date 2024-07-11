.class final Lcom/appsflyer/internal/aa$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/aa;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Ljava/util/Map;

.field private synthetic valueOf:Lcom/appsflyer/internal/aa;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/aa;Ljava/util/Map;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/appsflyer/internal/aa$2;->valueOf:Lcom/appsflyer/internal/aa;

    iput-object p2, p0, Lcom/appsflyer/internal/aa$2;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/appsflyer/internal/aa$2;->valueOf:Lcom/appsflyer/internal/aa;

    iget-object v1, p0, Lcom/appsflyer/internal/aa$2;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper(Lcom/appsflyer/internal/aa;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/aa$2;->valueOf:Lcom/appsflyer/internal/aa;

    invoke-static {v3}, Lcom/appsflyer/internal/aa;->AFInAppEventType(Lcom/appsflyer/internal/aa;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/internal/aa;->values(Lcom/appsflyer/internal/aa;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    .line 93
    return-void
.end method
