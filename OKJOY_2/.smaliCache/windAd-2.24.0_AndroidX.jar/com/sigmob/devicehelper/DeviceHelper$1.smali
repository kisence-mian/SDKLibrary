.class final Lcom/sigmob/devicehelper/DeviceHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/devicehelper/DeviceHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/devicehelper/DeviceHelper$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/devicehelper/DeviceHelper$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/sigmob/devicehelper/DeviceHelper$1$1;

    invoke-direct {v1, p0}, Lcom/sigmob/devicehelper/DeviceHelper$1$1;-><init>(Lcom/sigmob/devicehelper/DeviceHelper$1;)V

    invoke-static {v0, v1}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a(Landroid/content/Context;Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_13
    return-void
.end method
