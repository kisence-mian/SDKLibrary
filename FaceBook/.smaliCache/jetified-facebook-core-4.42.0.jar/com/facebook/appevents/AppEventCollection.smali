.class Lcom/facebook/appevents/AppEventCollection;
.super Ljava/lang/Object;
.source "AppEventCollection.java"


# instance fields
.field private final stateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/SessionEventsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method private declared-synchronized getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .registers 7
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/SessionEventsState;

    .line 79
    .local v0, "eventsState":Lcom/facebook/appevents/SessionEventsState;
    if-nez v0, :cond_1d

    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/facebook/appevents/SessionEventsState;

    .line 85
    invoke-static {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    .line 86
    invoke-static {v1}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/appevents/SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    move-object v0, v2

    .line 89
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_1d
    iget-object v1, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 91
    monitor-exit p0

    return-object v0

    .line 77
    .end local v0    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    .end local p1    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p2, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v0

    .line 56
    .local v0, "eventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v0, p2}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 57
    monitor-exit p0

    return-void

    .line 54
    .end local v0    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    .end local p1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p2    # "appEvent":Lcom/facebook/appevents/AppEvent;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V
    .registers 7
    .param p1, "persistedEvents"    # Lcom/facebook/appevents/PersistedEvents;

    monitor-enter p0

    .line 39
    if-nez p1, :cond_5

    .line 40
    monitor-exit p0

    return-void

    .line 43
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lcom/facebook/appevents/PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 44
    .local v1, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-direct {p0, v1}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v2

    .line 46
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {p1, v1}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/AppEvent;

    .line 47
    .local v4, "appEvent":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v2, v4}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    .line 48
    .end local v4    # "appEvent":Lcom/facebook/appevents/AppEvent;
    goto :goto_25

    .line 49
    .end local v1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_35
    goto :goto_d

    .line 50
    :cond_36
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_38
    move-exception p1

    monitor-exit p0

    goto :goto_3c

    :goto_3b
    throw p1

    :goto_3c
    goto :goto_3b
.end method

.method public declared-synchronized get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .registers 3
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/SessionEventsState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 64
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    .end local p1    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventCount()I
    .registers 5

    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "count":I
    :try_start_2
    iget-object v1, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/SessionEventsState;

    .line 70
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v2}, Lcom/facebook/appevents/SessionEventsState;->getAccumulatedEventCount()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_20

    add-int/2addr v0, v3

    .line 71
    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    goto :goto_c

    .line 73
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :cond_1e
    monitor-exit p0

    return v0

    .line 67
    .end local v0    # "count":I
    :catchall_20
    move-exception v0

    monitor-exit p0

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 60
    .end local p0    # "this":Lcom/facebook/appevents/AppEventCollection;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
