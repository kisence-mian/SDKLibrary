.class public final Lcom/appsflyer/internal/ar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ar;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/ar;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/ar$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    nop

    .line 1078
    iget-object v0, p0, Lcom/appsflyer/internal/ar$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ar;

    invoke-static {v0}, Lcom/appsflyer/internal/ar;->AFInAppEventType(Lcom/appsflyer/internal/ar;)Landroid/app/Application;

    move-result-object v0

    .line 1079
    iget-object v1, p0, Lcom/appsflyer/internal/ar$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ar;

    invoke-static {v1}, Lcom/appsflyer/internal/ar;->valueOf(Lcom/appsflyer/internal/ar;)V

    .line 1080
    iget-object v1, p0, Lcom/appsflyer/internal/ar$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ar;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ar;->AFKeystoreWrapper(Lcom/appsflyer/internal/ar;Landroid/content/Context;)V

    .line 1081
    iget-object v1, p0, Lcom/appsflyer/internal/ar$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ar;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ar;->valueOf(Lcom/appsflyer/internal/ar;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    .line 75
    return-object v0
.end method
