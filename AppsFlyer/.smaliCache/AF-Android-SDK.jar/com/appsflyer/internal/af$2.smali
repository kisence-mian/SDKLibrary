.class final Lcom/appsflyer/internal/af$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/af;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/af;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/af;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/appsflyer/internal/af$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1045
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_b

    .line 1046
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 1048
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 765
    invoke-virtual {v0}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/af$2$2;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/af$2$2;-><init>(Lcom/appsflyer/internal/af$2;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 780
    return-void
.end method
