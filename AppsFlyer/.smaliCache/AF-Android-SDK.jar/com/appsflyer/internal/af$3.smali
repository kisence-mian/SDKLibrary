.class final Lcom/appsflyer/internal/af$3;
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
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/bq;

.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/af;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/bq;)V
    .registers 3

    .line 782
    iput-object p1, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventType:Lcom/appsflyer/internal/af;

    iput-object p2, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 785
    iget-object v0, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventType:Lcom/appsflyer/internal/af;

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 786
    nop

    .line 3703
    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v1

    .line 786
    nop

    .line 787
    const-string v3, "newGPReferrerSent"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 788
    iget-object v3, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/bq;

    .line 4048
    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 788
    sget-object v4, Lcom/appsflyer/internal/bw$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw$d;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_23

    const/4 v2, 0x1

    .line 789
    :cond_23
    if-ne v1, v5, :cond_44

    if-nez v2, :cond_29

    if-eqz v0, :cond_44

    .line 790
    :cond_29
    iget-object v0, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventType:Lcom/appsflyer/internal/af;

    new-instance v1, Lcom/appsflyer/internal/bg;

    invoke-direct {v1}, Lcom/appsflyer/internal/bg;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/af$3;->AFInAppEventType:Lcom/appsflyer/internal/af;

    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;)Landroid/app/Application;

    move-result-object v2

    .line 4053
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v1, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 4054
    :cond_40
    nop

    .line 790
    invoke-static {v0, v1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V

    .line 791
    :cond_44
    return-void
.end method
