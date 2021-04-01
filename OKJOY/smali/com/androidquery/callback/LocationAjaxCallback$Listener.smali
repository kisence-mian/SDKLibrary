.class Lcom/androidquery/callback/LocationAjaxCallback$Listener;
.super Ljava/util/TimerTask;
.source "LocationAjaxCallback.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/callback/LocationAjaxCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/callback/LocationAjaxCallback;


# direct methods
.method private constructor <init>(Lcom/androidquery/callback/LocationAjaxCallback;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/callback/LocationAjaxCallback;Lcom/androidquery/callback/LocationAjaxCallback$Listener;)V
    .registers 3

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback$Listener;-><init>(Lcom/androidquery/callback/LocationAjaxCallback;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 286
    const-string v0, "changed"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    # invokes: Lcom/androidquery/callback/LocationAjaxCallback;->check(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->access$0(Lcom/androidquery/callback/LocationAjaxCallback;Landroid/location/Location;)V

    .line 290
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "onProviderDisabled"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "onProviderEnabled"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    iget-object v1, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    # invokes: Lcom/androidquery/callback/LocationAjaxCallback;->getBestLocation()Landroid/location/Location;
    invoke-static {v1}, Lcom/androidquery/callback/LocationAjaxCallback;->access$1(Lcom/androidquery/callback/LocationAjaxCallback;)Landroid/location/Location;

    move-result-object v1

    # invokes: Lcom/androidquery/callback/LocationAjaxCallback;->check(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/androidquery/callback/LocationAjaxCallback;->access$0(Lcom/androidquery/callback/LocationAjaxCallback;Landroid/location/Location;)V

    .line 299
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    # getter for: Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/androidquery/callback/LocationAjaxCallback;->access$2(Lcom/androidquery/callback/LocationAjaxCallback;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 300
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 293
    const-string v0, "onStatusChanged"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->this$0:Lcom/androidquery/callback/LocationAjaxCallback;

    # invokes: Lcom/androidquery/callback/LocationAjaxCallback;->failure()V
    invoke-static {v0}, Lcom/androidquery/callback/LocationAjaxCallback;->access$3(Lcom/androidquery/callback/LocationAjaxCallback;)V

    .line 309
    return-void
.end method
