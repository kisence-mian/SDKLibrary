.class final enum Lcom/facebook/appevents/FlushReason;
.super Ljava/lang/Enum;
.source "FlushReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/FlushReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/FlushReason;

.field public static final enum EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

.field public static final enum EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

.field public static final enum EXPLICIT:Lcom/facebook/appevents/FlushReason;

.field public static final enum PERSISTED_EVENTS:Lcom/facebook/appevents/FlushReason;

.field public static final enum SESSION_CHANGE:Lcom/facebook/appevents/FlushReason;

.field public static final enum TIMER:Lcom/facebook/appevents/FlushReason;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 24
    new-instance v0, Lcom/facebook/appevents/FlushReason;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    .line 25
    new-instance v1, Lcom/facebook/appevents/FlushReason;

    const-string v3, "TIMER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/FlushReason;->TIMER:Lcom/facebook/appevents/FlushReason;

    .line 26
    new-instance v3, Lcom/facebook/appevents/FlushReason;

    const-string v5, "SESSION_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/FlushReason;->SESSION_CHANGE:Lcom/facebook/appevents/FlushReason;

    .line 27
    new-instance v5, Lcom/facebook/appevents/FlushReason;

    const-string v7, "PERSISTED_EVENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/appevents/FlushReason;->PERSISTED_EVENTS:Lcom/facebook/appevents/FlushReason;

    .line 28
    new-instance v7, Lcom/facebook/appevents/FlushReason;

    const-string v9, "EVENT_THRESHOLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/appevents/FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

    .line 29
    new-instance v9, Lcom/facebook/appevents/FlushReason;

    const-string v11, "EAGER_FLUSHING_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/appevents/FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/appevents/FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

    .line 23
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/facebook/appevents/FlushReason;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/facebook/appevents/FlushReason;->$VALUES:[Lcom/facebook/appevents/FlushReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/FlushReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/facebook/appevents/FlushReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/FlushReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/FlushReason;
    .registers 1

    .line 23
    sget-object v0, Lcom/facebook/appevents/FlushReason;->$VALUES:[Lcom/facebook/appevents/FlushReason;

    invoke-virtual {v0}, [Lcom/facebook/appevents/FlushReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/FlushReason;

    return-object v0
.end method
