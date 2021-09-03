.class public final Lcom/tds/common/isc/IscServiceManager;
.super Ljava/lang/Object;
.source "IscServiceManager.java"


# static fields
.field static final LOG:Lcom/tds/common/log/Logger;

.field static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/common/isc/IscServiceManager;->LOG:Lcom/tds/common/log/Logger;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tds/common/isc/IscServiceManager;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static hasMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/isc/Service;->hasMethod(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Lcom/tds/common/isc/IscException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 51
    :catch_9
    move-exception v0

    .line 52
    .local v0, "e":Lcom/tds/common/isc/IscException;
    const/4 v1, 0x0

    return v1
.end method

.method public static hasService(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/tds/common/isc/IscServiceManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 19
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/tds/common/isc/IscService;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tds/common/isc/IscService;

    .line 20
    .local v0, "annotation":Lcom/tds/common/isc/IscService;
    if-nez v0, :cond_12

    .line 21
    sget-object v1, Lcom/tds/common/isc/IscServiceManager;->LOG:Lcom/tds/common/log/Logger;

    const-string v2, "Isc service class must be annotated with @IscService"

    invoke-virtual {v1, v2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_4f

    .line 23
    :cond_12
    invoke-interface {v0}, Lcom/tds/common/isc/IscService;->value()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 25
    sget-object v2, Lcom/tds/common/isc/IscServiceManager;->LOG:Lcom/tds/common/log/Logger;

    const-string v3, "Isc service name cannot be null or empty"

    invoke-virtual {v2, v3}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_4f

    .line 27
    :cond_24
    sget-object v2, Lcom/tds/common/isc/IscServiceManager;->LOG:Lcom/tds/common/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register isc service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 28
    sget-object v2, Lcom/tds/common/isc/IscServiceManager;->map:Ljava/util/Map;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v1    # "serviceName":Ljava/lang/String;
    :goto_4f
    return-void
.end method

.method public static service(Ljava/lang/String;)Lcom/tds/common/isc/Service;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/isc/IscException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/tds/common/isc/IscServiceManager;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 58
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_10

    .line 61
    new-instance v1, Lcom/tds/common/isc/Service;

    invoke-direct {v1, v0}, Lcom/tds/common/isc/Service;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 59
    :cond_10
    new-instance v1, Lcom/tds/common/isc/IscException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/isc/IscException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unregister(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 34
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/tds/common/isc/IscService;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tds/common/isc/IscService;

    .line 35
    .local v0, "annotation":Lcom/tds/common/isc/IscService;
    if-eqz v0, :cond_31

    .line 36
    invoke-interface {v0}, Lcom/tds/common/isc/IscService;->value()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 38
    sget-object v2, Lcom/tds/common/isc/IscServiceManager;->LOG:Lcom/tds/common/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregister isc service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 39
    sget-object v2, Lcom/tds/common/isc/IscServiceManager;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_31
    return-void
.end method
