.class public final enum Lcom/tds/common/wrapper/TapPropertiesHolder;
.super Ljava/lang/Enum;
.source "TapPropertiesHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/wrapper/TapPropertiesHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/wrapper/TapPropertiesHolder;

.field public static final enum INSTANCE:Lcom/tds/common/wrapper/TapPropertiesHolder;


# instance fields
.field public mProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/wrapper/TapPropertiesProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/tds/common/wrapper/TapPropertiesHolder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/wrapper/TapPropertiesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/wrapper/TapPropertiesHolder;->INSTANCE:Lcom/tds/common/wrapper/TapPropertiesHolder;

    .line 11
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/wrapper/TapPropertiesHolder;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/wrapper/TapPropertiesHolder;->$VALUES:[Lcom/tds/common/wrapper/TapPropertiesHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tds/common/wrapper/TapPropertiesHolder;->mProxies:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/wrapper/TapPropertiesHolder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/tds/common/wrapper/TapPropertiesHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/wrapper/TapPropertiesHolder;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/wrapper/TapPropertiesHolder;
    .registers 1

    .line 11
    sget-object v0, Lcom/tds/common/wrapper/TapPropertiesHolder;->$VALUES:[Lcom/tds/common/wrapper/TapPropertiesHolder;

    invoke-virtual {v0}, [Lcom/tds/common/wrapper/TapPropertiesHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/wrapper/TapPropertiesHolder;

    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/tds/common/wrapper/TapPropertiesHolder;->mProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 26
    return-object v1

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/tds/common/wrapper/TapPropertiesHolder;->mProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/wrapper/TapPropertiesProxy;

    .line 29
    .local v0, "proxy":Lcom/tds/common/wrapper/TapPropertiesProxy;
    if-nez v0, :cond_15

    .line 30
    return-object v1

    .line 32
    :cond_15
    invoke-interface {v0}, Lcom/tds/common/wrapper/TapPropertiesProxy;->getProperties()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public registerProperties(Ljava/lang/String;Lcom/tds/common/wrapper/TapPropertiesProxy;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "proxy"    # Lcom/tds/common/wrapper/TapPropertiesProxy;

    .line 18
    if-nez p2, :cond_3

    .line 19
    return-void

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/tds/common/wrapper/TapPropertiesHolder;->mProxies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
