.class public abstract Lcom/appsflyer/internal/bh;
.super Lcom/appsflyer/internal/h;
.source ""


# instance fields
.field private final onAppOpenAttributionNative:Z

.field private final onAttributionFailureNative:Z

.field public onConversionDataSuccess:Z


# direct methods
.method constructor <init>()V
    .registers 8

    .line 15
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V
    .registers 7

    .line 24
    if-eqz p5, :cond_7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    goto :goto_8

    :cond_7
    const/4 p5, 0x0

    :goto_8
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/appsflyer/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 25
    const/4 p1, 0x1

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_18

    :cond_17
    const/4 p2, 0x1

    :goto_18
    iput-boolean p2, p0, Lcom/appsflyer/internal/bh;->onAttributionFailureNative:Z

    .line 26
    if-eqz p4, :cond_20

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_20
    iput-boolean p1, p0, Lcom/appsflyer/internal/bh;->onAppOpenAttributionNative:Z

    .line 27
    return-void
.end method


# virtual methods
.method public AFLogger$LogLevel()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/appsflyer/internal/bh;->valueOf()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/k;->values(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final AppsFlyer2dXConversionCallback()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/appsflyer/internal/bh;->onConversionDataSuccess:Z

    return v0
.end method

.method public final getLevel()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/appsflyer/internal/bh;->onAppOpenAttributionNative:Z

    return v0
.end method

.method public final init()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/appsflyer/internal/bh;->onAttributionFailureNative:Z

    return v0
.end method
