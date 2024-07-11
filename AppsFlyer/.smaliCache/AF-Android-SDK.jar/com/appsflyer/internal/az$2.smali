.class final Lcom/appsflyer/internal/az$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/az;->valueOf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/af;

.field private synthetic values:Lcom/appsflyer/internal/az;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/az;Lcom/appsflyer/internal/af;)V
    .registers 3

    .line 211
    iput-object p1, p0, Lcom/appsflyer/internal/az$2;->values:Lcom/appsflyer/internal/az;

    iput-object p2, p0, Lcom/appsflyer/internal/az$2;->AFInAppEventType:Lcom/appsflyer/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 215
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/k;

    iget-object v1, p0, Lcom/appsflyer/internal/az$2;->values:Lcom/appsflyer/internal/az;

    iget-object v2, p0, Lcom/appsflyer/internal/az$2;->AFInAppEventType:Lcom/appsflyer/internal/af;

    .line 216
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v2

    .line 1030
    iput-boolean v2, v1, Lcom/appsflyer/internal/bh;->onConversionDataSuccess:Z

    .line 1031
    nop

    .line 216
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/bh;)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/k;->values()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_26

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/appsflyer/internal/az$2;->values:Lcom/appsflyer/internal/az;

    invoke-static {v1}, Lcom/appsflyer/internal/az;->AFKeystoreWrapper(Lcom/appsflyer/internal/az;)V

    .line 219
    :cond_23
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    .line 223
    :cond_26
    return-void

    .line 221
    :catchall_27
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method
