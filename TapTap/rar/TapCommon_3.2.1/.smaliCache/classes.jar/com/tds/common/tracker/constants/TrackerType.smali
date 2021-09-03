.class public Lcom/tds/common/tracker/constants/TrackerType;
.super Ljava/lang/Object;
.source "TrackerType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/constants/TrackerType$Type;
    }
.end annotation


# static fields
.field public static final TRACKER_FOR_FRIENDS:I = 0x1

.field public static final TRACKER_FOR_NETWORK_MONITOR:I = 0x2

.field public static final TRACKER_FOR_NETWORK_TAPSDK_MONITOR:I = 0x3

.field public static final TRACKER_FOR_TAPSDK:I = 0x0

.field public static final TRACKER_NAME_FOR_FRIENDS:Ljava/lang/String; = "tracker_for_friends"

.field public static final TRACKER_NAME_FOR_NETWORK_MONITOR:Ljava/lang/String; = "tracker_for_network"

.field public static final TRACKER_NAME_FOR_NETWORK_TAPSDK_MONITOR:Ljava/lang/String; = "tracker_for_tapsdk_network"

.field public static final TRACKER_NAME_FOR_TAPSDK:Ljava/lang/String; = "tracker_for_tapsdk"

.field private static final trackerTypesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/constants/TrackerType;->trackerTypesMap:Ljava/util/Map;

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tracker_for_tapsdk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tracker_for_friends"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tracker_for_network"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tracker_for_tapsdk_network"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrackerName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 46
    sget-object v0, Lcom/tds/common/tracker/constants/TrackerType;->trackerTypesMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
