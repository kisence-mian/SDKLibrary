.class final Lcom/appsflyer/internal/af$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/af$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/af$2;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/af$2;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/appsflyer/internal/af$2$2;->valueOf:Lcom/appsflyer/internal/af$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 770
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/bg;

    invoke-direct {v0}, Lcom/appsflyer/internal/bg;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/af$2$2;->valueOf:Lcom/appsflyer/internal/af$2;

    iget-object v1, v1, Lcom/appsflyer/internal/af$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;)Landroid/app/Application;

    move-result-object v1

    .line 1053
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 771
    :cond_17
    iget-object v1, p0, Lcom/appsflyer/internal/af$2$2;->valueOf:Lcom/appsflyer/internal/af$2;

    iget-object v1, v1, Lcom/appsflyer/internal/af$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    iget-object v2, p0, Lcom/appsflyer/internal/af$2$2;->valueOf:Lcom/appsflyer/internal/af$2;

    iget-object v2, v2, Lcom/appsflyer/internal/af$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 772
    iget-object v1, p0, Lcom/appsflyer/internal/af$2$2;->valueOf:Lcom/appsflyer/internal/af$2;

    iget-object v1, v1, Lcom/appsflyer/internal/af$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 775
    :cond_34
    return-void

    .line 773
    :catchall_35
    move-exception v0

    .line 774
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    return-void
.end method
