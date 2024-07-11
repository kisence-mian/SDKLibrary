.class final Lcom/bytedance/sdk/openadsdk/utils/d$4;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 3

    .line 219
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/d$4;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .line 222
    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/d$4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;Landroid/location/Location;)V

    .line 226
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$4;->b:Landroid/location/LocationManager;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    .line 227
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 239
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 235
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 231
    return-void
.end method
