.class public Lcom/tds/common/net/PlatformXUA;
.super Ljava/lang/Object;
.source "PlatformXUA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/PlatformXUA$Holder;
    }
.end annotation


# instance fields
.field xuaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/net/PlatformXUA$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/net/PlatformXUA$1;

    .line 5
    invoke-direct {p0}, Lcom/tds/common/net/PlatformXUA;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tds/common/net/PlatformXUA;
    .registers 1

    .line 16
    # getter for: Lcom/tds/common/net/PlatformXUA$Holder;->INSTANCE:Lcom/tds/common/net/PlatformXUA;
    invoke-static {}, Lcom/tds/common/net/PlatformXUA$Holder;->access$100()Lcom/tds/common/net/PlatformXUA;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getXuaMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/tds/common/net/PlatformXUA;->xuaMap:Ljava/util/Map;

    return-object v0
.end method

.method public setXuaMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "xuaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tds/common/net/PlatformXUA;->xuaMap:Ljava/util/Map;

    .line 27
    return-void
.end method
