.class public final enum Lcom/tds/common/bridge/BridgeHolder;
.super Ljava/lang/Enum;
.source "BridgeHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/bridge/BridgeHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/bridge/BridgeHolder;

.field public static final enum INSTANCE:Lcom/tds/common/bridge/BridgeHolder;


# instance fields
.field private serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/tds/common/bridge/BridgeHolder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/bridge/BridgeHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/bridge/BridgeHolder;->INSTANCE:Lcom/tds/common/bridge/BridgeHolder;

    .line 17
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/bridge/BridgeHolder;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/bridge/BridgeHolder;->$VALUES:[Lcom/tds/common/bridge/BridgeHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tds/common/bridge/BridgeHolder;->serviceMap:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/bridge/BridgeHolder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/tds/common/bridge/BridgeHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/bridge/BridgeHolder;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/bridge/BridgeHolder;
    .registers 1

    .line 17
    sget-object v0, Lcom/tds/common/bridge/BridgeHolder;->$VALUES:[Lcom/tds/common/bridge/BridgeHolder;

    invoke-virtual {v0}, [Lcom/tds/common/bridge/BridgeHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/bridge/BridgeHolder;

    return-object v0
.end method


# virtual methods
.method public getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 6
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/tds/common/bridge/BridgeHolder;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;Lcom/tds/common/bridge/IBridgeService;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-class v3, Lcom/tds/common/bridge/annotation/BridgeService;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/tds/common/bridge/annotation/BridgeService;

    .line 30
    .local v2, "bridgeService":Lcom/tds/common/bridge/annotation/BridgeService;
    if-eqz v2, :cond_31

    invoke-interface {v2}, Lcom/tds/common/bridge/annotation/BridgeService;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 31
    return-object v1

    .line 33
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;Lcom/tds/common/bridge/IBridgeService;>;"
    .end local v2    # "bridgeService":Lcom/tds/common/bridge/annotation/BridgeService;
    :cond_31
    goto :goto_a

    .line 34
    :cond_32
    new-instance v0, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v1, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_SERVICE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v1}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Ljava/lang/Class;Lcom/tds/common/bridge/IBridgeService;)V
    .registers 4
    .param p2, "service"    # Lcom/tds/common/bridge/IBridgeService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;",
            "Lcom/tds/common/bridge/IBridgeService;",
            ")V"
        }
    .end annotation

    .line 24
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    iget-object v0, p0, Lcom/tds/common/bridge/BridgeHolder;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
