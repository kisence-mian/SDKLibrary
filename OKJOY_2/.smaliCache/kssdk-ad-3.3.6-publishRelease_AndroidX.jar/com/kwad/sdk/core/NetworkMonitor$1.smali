.class Lcom/kwad/sdk/core/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/NetworkMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/NetworkMonitor$1;->a:Lcom/kwad/sdk/core/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    if-nez p2, :cond_f

    return-void

    :cond_f
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne v0, p2, :cond_34

    iget-object p1, p0, Lcom/kwad/sdk/core/NetworkMonitor$1;->a:Lcom/kwad/sdk/core/NetworkMonitor;

    sget-object p2, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_WIFI:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    :goto_30
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/NetworkMonitor;->a(Lcom/kwad/sdk/core/NetworkMonitor;Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;)V

    goto :goto_4d

    :cond_34
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/kwad/sdk/core/NetworkMonitor$1;->a:Lcom/kwad/sdk/core/NetworkMonitor;

    sget-object p2, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_MOBILE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    goto :goto_30

    :cond_3f
    iget-object p1, p0, Lcom/kwad/sdk/core/NetworkMonitor$1;->a:Lcom/kwad/sdk/core/NetworkMonitor;

    sget-object p2, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_NONE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    goto :goto_30

    :cond_44
    iget-object p1, p0, Lcom/kwad/sdk/core/NetworkMonitor$1;->a:Lcom/kwad/sdk/core/NetworkMonitor;

    sget-object p2, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_NONE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    goto :goto_30

    :catchall_49
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4d
    return-void
.end method
