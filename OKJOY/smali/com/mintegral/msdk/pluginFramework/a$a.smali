.class public final Lcom/mintegral/msdk/pluginFramework/a$a;
.super Ljava/lang/Object;
.source "PluginServiceAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/pluginFramework/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/mintegral/msdk/mtgdownload/c;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgdownload/c;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)I
    .registers 5

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgdownload/c;->a(Landroid/content/Intent;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 42
    :goto_6
    return v0

    .line 39
    :catch_7
    move-exception v0

    .line 40
    const-string v1, "PluginServiceContext"

    const-string v2, "invoke onStartCommand error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final a()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->a()Landroid/os/IBinder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 31
    :goto_6
    return-object v0

    .line 28
    :catch_7
    move-exception v0

    .line 29
    const-string v1, "PluginServiceContext"

    const-string v2, "invoke onBind error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 53
    :goto_5
    return-void

    .line 50
    :catch_6
    move-exception v0

    .line 51
    const-string v1, "PluginServiceContext"

    const-string v2, "invoke onCreate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/pluginFramework/a$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->c()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 63
    :goto_5
    return-void

    .line 60
    :catch_6
    move-exception v0

    .line 61
    const-string v1, "PluginServiceContext"

    const-string v2, "invoke onDestroy error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
