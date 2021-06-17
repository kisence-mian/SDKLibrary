.class public Lcom/umeng/commonsdk/internal/utils/ApplicationLayerUtilAgent;
.super Ljava/lang/Object;
.source "ApplicationLayerUtilAgent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wifiChange(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->c(Landroid/content/Context;)V

    .line 27
    :cond_9
    return-void
.end method
