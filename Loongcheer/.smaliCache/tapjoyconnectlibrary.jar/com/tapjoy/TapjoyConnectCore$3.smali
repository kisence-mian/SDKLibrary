.class final Lcom/tapjoy/TapjoyConnectCore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting userID to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 2026
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "set_publisher_user_id?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 2028
    nop

    .line 2030
    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_47

    .line 2032
    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_48

    .line 2030
    :cond_47
    const/4 v1, 0x0

    .line 2035
    :goto_48
    if-nez v1, :cond_69

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->d()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 2037
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->e()Z

    .line 2038
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()Lcom/tapjoy/TJSetUserIDListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    .line 2040
    :cond_69
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Z)V

    .line 2042
    return-void
.end method
