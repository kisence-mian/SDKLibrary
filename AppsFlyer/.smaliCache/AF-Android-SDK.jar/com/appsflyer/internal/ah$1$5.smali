.class final Lcom/appsflyer/internal/ah$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ah$1;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/ah$1;

.field private synthetic valueOf:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ah$1;Landroid/app/Activity;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/ah$1$5;->AFInAppEventType:Lcom/appsflyer/internal/ah$1;

    iput-object p2, p0, Lcom/appsflyer/internal/ah$1$5;->valueOf:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1$5;->AFInAppEventType:Lcom/appsflyer/internal/ah$1;

    iget-boolean v0, v0, Lcom/appsflyer/internal/ah$1;->values:Z

    if-nez v0, :cond_16

    .line 37
    :try_start_6
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1$5;->AFInAppEventType:Lcom/appsflyer/internal/ah$1;

    iget-object v0, v0, Lcom/appsflyer/internal/ah$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ah$e;

    iget-object v1, p0, Lcom/appsflyer/internal/ah$1$5;->valueOf:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/ah$e;->AFInAppEventType(Landroid/app/Activity;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    .line 40
    goto :goto_16

    .line 38
    :catch_10
    move-exception v0

    .line 39
    const-string v1, "Listener thrown an exception: "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1$5;->AFInAppEventType:Lcom/appsflyer/internal/ah$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/internal/ah$1;->valueOf:Z

    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1$5;->AFInAppEventType:Lcom/appsflyer/internal/ah$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/internal/ah$1;->values:Z

    .line 43
    return-void
.end method
