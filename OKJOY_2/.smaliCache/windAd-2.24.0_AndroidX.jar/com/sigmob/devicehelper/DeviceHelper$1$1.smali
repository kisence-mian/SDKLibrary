.class Lcom/sigmob/devicehelper/DeviceHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/devicehelper/DeviceHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/devicehelper/DeviceHelper$1;


# direct methods
.method constructor <init>(Lcom/sigmob/devicehelper/DeviceHelper$1;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/devicehelper/DeviceHelper$1$1;->a:Lcom/sigmob/devicehelper/DeviceHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnIdsAvalid(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/devicehelper/DeviceHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/sigmob/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sigmob/devicehelper/DeviceHelper;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_14
    return-void
.end method

.method public OnOtherIdsAvalid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/devicehelper/DeviceHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/devicehelper/DeviceHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
