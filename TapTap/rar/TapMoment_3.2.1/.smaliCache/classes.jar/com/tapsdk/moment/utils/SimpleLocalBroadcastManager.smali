.class public Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;
.super Ljava/lang/Object;
.source "SimpleLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$Holder;,
        Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;
    }
.end annotation


# instance fields
.field private receiver:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$1;

    .line 6
    invoke-direct {p0}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;
    .registers 1

    .line 31
    sget-object v0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$Holder;->INSTANCE:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    return-object v0
.end method


# virtual methods
.method public registerReceiver(Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;)V
    .registers 2
    .param p1, "receiver"    # Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 23
    iput-object p1, p0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 24
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    :cond_c
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    :cond_7
    return-void
.end method

.method public unRegisterReceiver()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 28
    return-void
.end method
