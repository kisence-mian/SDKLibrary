.class public final enum Lcom/facebook/messenger/MessengerThreadParams$Origin;
.super Ljava/lang/Enum;
.source "MessengerThreadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/messenger/MessengerThreadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/messenger/MessengerThreadParams$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 38
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "REPLY_FLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 43
    new-instance v1, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v3, "COMPOSE_FLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 48
    new-instance v3, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 34
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object v0
.end method

.method public static values()[Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .registers 1

    .line 34
    sget-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-virtual {v0}, [Lcom/facebook/messenger/MessengerThreadParams$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object v0
.end method
