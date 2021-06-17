.class Lcom/facebook/appevents/SessionEventsState;
.super Ljava/lang/Object;
.source "SessionEventsState.java"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousAppDeviceGUID:Ljava/lang/String;

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    .registers 4
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousGUID"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 46
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 51
    iput-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 52
    iput-object p2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .registers 10
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "numSkipped"    # I
    .param p4, "events"    # Lorg/json/JSONArray;
    .param p5, "limitEventUsage"    # Z

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "publishParams":Lorg/json/JSONObject;
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    iget-object v2, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v3, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    invoke-static {v1, v2, v3, p5, p2}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, v1

    .line 148
    iget v1, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v1, :cond_15

    .line 149
    const-string v1, "num_skipped_events"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_15} :catch_16

    .line 154
    :cond_15
    goto :goto_1d

    .line 151
    :catch_16
    move-exception v1

    .line 153
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v2

    .line 155
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 157
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 158
    .local v1, "requestParameters":Landroid/os/Bundle;
    if-nez v1, :cond_2c

    .line 159
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 162
    :cond_2c
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 164
    const-string v3, "custom_events"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 169
    :cond_3a
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lcom/facebook/appevents/SessionEventsState;
    .end local p1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addEvent(Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/facebook/appevents/AppEvent;

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_19

    .line 59
    iget v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    goto :goto_1e

    .line 61
    .end local p0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :cond_19
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 63
    :goto_1e
    monitor-exit p0

    return-void

    .line 57
    .end local p1    # "event":Lcom/facebook/appevents/AppEvent;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .registers 4
    .param p1, "moveToAccumulated"    # Z

    monitor-enter p0

    .line 70
    if-eqz p1, :cond_a

    .line 71
    :try_start_3
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .end local p0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :cond_a
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 75
    monitor-exit p0

    return-void

    .line 69
    .end local p1    # "moveToAccumulated":Z
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .registers 2

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 66
    .end local p0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 122
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 123
    monitor-exit p0

    return-object v0

    .line 120
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    .end local p0    # "this":Lcom/facebook/appevents/SessionEventsState;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I
    .registers 12
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "includeImplicitEvents"    # Z
    .param p4, "limitEventUsage"    # Z

    .line 85
    monitor-enter p0

    .line 86
    :try_start_1
    iget v3, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 89
    .local v3, "numSkipped":I
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v0

    .line 93
    .local v6, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AppEvent;

    .line 94
    .local v1, "event":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->isChecksumValid()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 95
    if-nez p3, :cond_35

    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v2

    if-nez v2, :cond_46

    .line 96
    :cond_35
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_46

    .line 99
    :cond_3d
    const-string v2, "Event with invalid checksum: %s"

    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "event":Lcom/facebook/appevents/AppEvent;
    :cond_46
    :goto_46
    goto :goto_1b

    .line 103
    :cond_47
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_50

    .line 104
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 106
    :cond_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_5e

    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 114
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0

    .line 106
    .end local v3    # "numSkipped":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method
