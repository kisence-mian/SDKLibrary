.class public final enum Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;
.super Ljava/lang/Enum;
.source "EngineBridgeExceptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

.field public static final enum COMMAND_ARGS_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

.field public static final enum COMMAND_METHOD_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

.field public static final enum COMMAND_PARSE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

.field public static final enum COMMAND_SERVICE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 10
    new-instance v0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    const-string v1, "COMMAND_PARSE_ERROR"

    const/4 v2, 0x0

    const-string v3, "json\u89e3\u6790\u9519\u8bef\uff0c\u68c0\u67e5Command\u662f\u5426\u7b26\u5408\u89c4\u5219"

    invoke-direct {v0, v1, v2, v3}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_PARSE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    .line 12
    new-instance v1, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    const-string v3, "COMMAND_SERVICE_ERROR"

    const/4 v4, 0x1

    const-string v5, "Service\u5f02\u5e38\uff0c\u68c0\u67e5Service\u662f\u5426\u6ce8\u518c\u6216\u8005\u7b26\u5408\u89c4\u5219"

    invoke-direct {v1, v3, v4, v5}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_SERVICE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    .line 14
    new-instance v3, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    const-string v5, "COMMAND_METHOD_ERROR"

    const/4 v6, 0x2

    const-string v7, "Method\u5f02\u5e38\uff0c\u68c0\u67e5Method\u547d\u540d\u662f\u5426\u6b63\u786e"

    invoke-direct {v3, v5, v6, v7}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_METHOD_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    .line 16
    new-instance v5, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    const-string v7, "COMMAND_ARGS_ERROR"

    const/4 v8, 0x3

    const-string v9, "\u53c2\u6570\u5339\u914d\u9519\u8bef\u6216\u8005\u6267\u884c\u65b9\u6cd5\u9519\u8bef\uff0c\u68c0\u67e5\u53c2\u6570\u4ee5\u53ca\u6865\u63a5\u65b9\u6cd5\u6267\u884c\u662f\u5426\u6b63\u786e"

    invoke-direct {v5, v7, v8, v9}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_ARGS_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    .line 8
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->$VALUES:[Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->message:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;
    .registers 1

    .line 8
    sget-object v0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->$VALUES:[Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v0}, [Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    return-object v0
.end method


# virtual methods
.method public getExpandMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "expandMessage"    # Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expandMessage:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->message:Ljava/lang/String;

    return-object v0
.end method
