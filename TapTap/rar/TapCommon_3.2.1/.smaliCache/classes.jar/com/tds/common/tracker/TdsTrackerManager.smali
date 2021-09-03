.class public Lcom/tds/common/tracker/TdsTrackerManager;
.super Ljava/lang/Object;
.source "TdsTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;,
        Lcom/tds/common/tracker/TdsTrackerManager$Holder;
    }
.end annotation


# instance fields
.field private trackerEvent:Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

.field private trackerType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tds/common/tracker/TdsTrackerManager;
    .registers 1

    .line 30
    sget-object v0, Lcom/tds/common/tracker/TdsTrackerManager$Holder;->INSTANCE:Lcom/tds/common/tracker/TdsTrackerManager;

    return-object v0
.end method

.method public static registerTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V
    .registers 1
    .param p0, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 26
    invoke-static {p0}, Lcom/tds/common/tracker/TdsTracker;->initTdsTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 27
    return-void
.end method


# virtual methods
.method public convert()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "trackDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager;->trackerEvent:Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    return-object v0
.end method

.method public track()V
    .registers 3

    .line 92
    :try_start_0
    iget v0, p0, Lcom/tds/common/tracker/TdsTrackerManager;->trackerType:I

    invoke-static {v0}, Lcom/tds/common/tracker/TdsTracker;->get(I)Lcom/tds/common/tracker/TdsTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerManager;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTracker;->track(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 95
    goto :goto_14

    .line 93
    :catch_e
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method public withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;
    .registers 2
    .param p1, "builder"    # Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    .line 39
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager;->trackerEvent:Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    .line 40
    return-object p0
.end method

.method public withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;
    .registers 2
    .param p1, "trackerType"    # I

    .line 34
    iput p1, p0, Lcom/tds/common/tracker/TdsTrackerManager;->trackerType:I

    .line 35
    return-object p0
.end method
