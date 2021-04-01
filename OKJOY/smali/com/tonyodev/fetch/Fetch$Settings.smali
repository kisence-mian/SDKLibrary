.class public Lcom/tonyodev/fetch/Fetch$Settings;
.super Ljava/lang/Object;
.source "Fetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    .line 1088
    if-nez p1, :cond_14

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_14
    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->context:Landroid/content/Context;

    .line 1092
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 4

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1175
    .local v0, "setting":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch$Settings;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_6

    .line 1177
    .end local v0    # "setting":Landroid/os/Bundle;
    :cond_18
    return-void
.end method

.method public enableLogging(Z)Lcom/tonyodev/fetch/Fetch$Settings;
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1105
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1106
    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1107
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    return-object p0
.end method

.method public setAllowedNetwork(I)Lcom/tonyodev/fetch/Fetch$Settings;
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    .line 1123
    const/16 v1, 0xc8

    .line 1125
    .local v1, "type":I
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_8

    .line 1126
    const/16 v1, 0xc9

    .line 1129
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1130
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "com.tonyodev.fetch.action_type"

    const/16 v3, 0x13a

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    const-string v2, "com.tonyodev.fetch.extra_network_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    return-object p0
.end method

.method public setConcurrentDownloadsLimit(I)Lcom/tonyodev/fetch/Fetch$Settings;
    .registers 5
    .param p1, "limit"    # I

    .prologue
    .line 1145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1146
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1147
    const-string v1, "com.tonyodev.fetch.extra_concurrent_download_limit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1148
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    return-object p0
.end method

.method public setOnUpdateInterval(J)Lcom/tonyodev/fetch/Fetch$Settings;
    .registers 6
    .param p1, "intervalMs"    # J

    .prologue
    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1163
    const-string v1, "com.tonyodev.fetch.extra_on_update_interval"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1164
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object p0
.end method
