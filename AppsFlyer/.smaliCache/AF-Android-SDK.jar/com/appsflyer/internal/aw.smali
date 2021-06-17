.class public final Lcom/appsflyer/internal/aw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventType:Landroid/content/SharedPreferences;

.field public final values:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/aw;->values:Landroid/app/Application;

    .line 26
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()Z
    .registers 4

    .line 83
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    iget-object v0, p0, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    .line 3703
    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 83
    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v2
.end method
