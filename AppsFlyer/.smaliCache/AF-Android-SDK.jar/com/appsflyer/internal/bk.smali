.class public final Lcom/appsflyer/internal/bk;
.super Lcom/appsflyer/internal/bh;
.source ""


# instance fields
.field public onAttributionFailureNative:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final AFLogger$LogLevel()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/bk;->onAttributionFailureNative:Ljava/lang/String;

    return-object v0
.end method
