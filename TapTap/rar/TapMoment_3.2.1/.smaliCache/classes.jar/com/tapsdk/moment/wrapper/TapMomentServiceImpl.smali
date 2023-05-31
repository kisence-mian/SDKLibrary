.class public Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;
.super Ljava/lang/Object;
.source "TapMomentServiceImpl.java"

# interfaces
.implements Lcom/tapsdk/moment/wrapper/TapMomentService;


# static fields
.field private static final TAG:Ljava/lang/String; = "TapMomentServiceImpl"


# instance fields
.field private logger:Lcom/tds/common/log/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "common_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v1, "TapMomentServiceImpl"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->close()V

    .line 120
    return-void
.end method

.method public closeWithConfirmWindow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeWithConfirmWindow(title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1, p2}, Lcom/tapsdk/moment/TapMoment;->closeWithConfirmWindow(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public directlyOpen(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "config"    # I
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "extras"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directlyOpen(config::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extras:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "extrasObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 87
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3    # "key":Ljava/lang/String;
    :cond_57
    goto :goto_3c

    .line 90
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_58
    invoke-static {p1, p2, v0}, Lcom/tapsdk/moment/TapMoment;->directlyOpen(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_5b} :catch_5c

    .line 93
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "extrasObj":Lorg/json/JSONObject;
    goto :goto_60

    .line 91
    :catch_5c
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_60
    return-void
.end method

.method public fetchNotification()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v1, "TapMomentServiceImpl"

    const-string v2, "fetchNotification"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->fetchNotification()V

    .line 64
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 6
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 50
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(clientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p2, p1}, Lcom/tapsdk/moment/TapMoment;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/app/Activity;Z)V
    .registers 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "isCN"    # Z

    .line 56
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(clientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isCN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2, p1, p3}, Lcom/tapsdk/moment/TapMoment;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public open(I)V
    .registers 5
    .param p1, "config"    # I

    .line 68
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/tapsdk/moment/TapMoment;->open(I)V

    .line 70
    return-void
.end method

.method public openSceneEntry(ILjava/lang/String;)V
    .registers 6
    .param p1, "config"    # I
    .param p2, "sceneId"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSceneEntry(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p2}, Lcom/tapsdk/moment/TapMoment;->openSceneEntry(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public openUserCenter(ILjava/lang/String;)V
    .registers 6
    .param p1, "config"    # I
    .param p2, "userId"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUserCenter(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p1, p2}, Lcom/tapsdk/moment/TapMoment;->openUserCenter(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public publish(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "config"    # I
    .param p2, "imagePath"    # [Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",imagePaths:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p1, p2, p3}, Lcom/tapsdk/moment/TapMoment;->publish(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public publishVideo(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "config"    # I
    .param p2, "videoPaths"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishVideo(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",videoPaths:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p1, p2, p3, p4}, Lcom/tapsdk/moment/TapMoment;->publishVideo(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public publishVideo(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "config"    # I
    .param p2, "videoPaths"    # [Ljava/lang/String;
    .param p3, "imagePaths"    # [Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishVideo(config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",videoPaths:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",imagePaths:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tapsdk/moment/TapMoment;->publishVideo(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 36
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v1, "TapMomentServiceImpl"

    const-string v2, "setCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;-><init>(Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/tapsdk/moment/TapMoment;->setCallback(Lcom/tapsdk/moment/TapMoment$TapMomentCallback;)V

    .line 46
    return-void
.end method

.method public setRequestOrientation(Landroid/app/Activity;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orientation"    # I

    .line 138
    iget-object v0, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestOrientation(orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapMomentServiceImpl"

    invoke-virtual {v0, v2, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_PORTRAIT:I

    if-ne p2, v0, :cond_29

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3e

    .line 141
    :cond_29
    sget v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_LANDSCAPE:I

    if-ne p2, v0, :cond_32

    .line 142
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3e

    .line 143
    :cond_32
    sget v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_DEFAULT:I

    if-eq p2, v0, :cond_3a

    sget v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_SENSOR:I

    if-ne p2, v0, :cond_3e

    .line 144
    :cond_3a
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 146
    :cond_3e
    :goto_3e
    return-void
.end method
