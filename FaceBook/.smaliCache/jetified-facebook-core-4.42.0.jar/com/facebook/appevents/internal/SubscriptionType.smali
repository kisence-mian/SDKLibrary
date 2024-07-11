.class public final enum Lcom/facebook/appevents/internal/SubscriptionType;
.super Ljava/lang/Enum;
.source "SubscriptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/internal/SubscriptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum CANCEL:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum EXPIRE:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum NEW:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum RESTORE:Lcom/facebook/appevents/internal/SubscriptionType;

.field public static final enum UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 25
    new-instance v0, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/internal/SubscriptionType;->NEW:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v1, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v3, "HEARTBEAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v3, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v5, "EXPIRE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/internal/SubscriptionType;->EXPIRE:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v5, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v7, "CANCEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->CANCEL:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v7, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v9, "RESTORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/appevents/internal/SubscriptionType;->RESTORE:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v9, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v11, "DUPLICATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    new-instance v11, Lcom/facebook/appevents/internal/SubscriptionType;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/facebook/appevents/internal/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/facebook/appevents/internal/SubscriptionType;->UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;

    .line 24
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/facebook/appevents/internal/SubscriptionType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/facebook/appevents/internal/SubscriptionType;->$VALUES:[Lcom/facebook/appevents/internal/SubscriptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/internal/SubscriptionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/facebook/appevents/internal/SubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/internal/SubscriptionType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/internal/SubscriptionType;
    .registers 1

    .line 24
    sget-object v0, Lcom/facebook/appevents/internal/SubscriptionType;->$VALUES:[Lcom/facebook/appevents/internal/SubscriptionType;

    invoke-virtual {v0}, [Lcom/facebook/appevents/internal/SubscriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/internal/SubscriptionType;

    return-object v0
.end method
