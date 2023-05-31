.class public Lcom/tds/common/net/util/HostReplaceUtil;
.super Ljava/lang/Object;
.source "HostReplaceUtil.java"


# static fields
.field private static final instance:Lcom/tds/common/net/util/HostReplaceUtil;


# instance fields
.field private hostMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/tds/common/net/util/HostReplaceUtil;

    invoke-direct {v0}, Lcom/tds/common/net/util/HostReplaceUtil;-><init>()V

    sput-object v0, Lcom/tds/common/net/util/HostReplaceUtil;->instance:Lcom/tds/common/net/util/HostReplaceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/tds/common/net/util/HostReplaceUtil;
    .registers 1

    .line 20
    sget-object v0, Lcom/tds/common/net/util/HostReplaceUtil;->instance:Lcom/tds/common/net/util/HostReplaceUtil;

    return-object v0
.end method


# virtual methods
.method public addReplacedHostPair(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hostToBeReplaced"    # Ljava/lang/String;
    .param p2, "replacedHost"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public clear()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    :cond_7
    return-void
.end method

.method public clearReplacedHostPair(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostToBeReplaced"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_7
    return-void
.end method

.method public getReplacedHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "originalHost"    # Ljava/lang/String;

    .line 43
    const-string v0, "Inhouse"

    const-string v1, "Publish"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 44
    iget-object v0, p0, Lcom/tds/common/net/util/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "replacedHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 46
    return-object v0

    .line 49
    .end local v0    # "replacedHost":Ljava/lang/String;
    :cond_2b
    return-object p1
.end method
