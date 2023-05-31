.class public final enum Lcom/tds/common/websocket/enums/HandshakeState;
.super Ljava/lang/Enum;
.source "HandshakeState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/websocket/enums/HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/websocket/enums/HandshakeState;

.field public static final enum MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

.field public static final enum NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 10
    new-instance v0, Lcom/tds/common/websocket/enums/HandshakeState;

    const-string v1, "MATCHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/enums/HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 14
    new-instance v1, Lcom/tds/common/websocket/enums/HandshakeState;

    const-string v3, "NOT_MATCHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/websocket/enums/HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 6
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tds/common/websocket/enums/HandshakeState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tds/common/websocket/enums/HandshakeState;->$VALUES:[Lcom/tds/common/websocket/enums/HandshakeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/websocket/enums/HandshakeState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tds/common/websocket/enums/HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/websocket/enums/HandshakeState;
    .registers 1

    .line 6
    sget-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->$VALUES:[Lcom/tds/common/websocket/enums/HandshakeState;

    invoke-virtual {v0}, [Lcom/tds/common/websocket/enums/HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0
.end method
