.class public final Lcom/appsflyer/internal/bp;
.super Lcom/appsflyer/internal/bj;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "af_purchase"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsflyer/internal/bj;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final values(Ljava/lang/String;)Lcom/appsflyer/internal/h;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/bp;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/bj;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p1

    return-object p1
.end method
