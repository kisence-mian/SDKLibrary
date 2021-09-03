.class final Lcom/tds/protobuf/ExtensionRegistryFactory;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final FULL_REGISTRY_CLASS_NAME:Ljava/lang/String; = "com.tds.protobuf.ExtensionRegistry"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryFactory;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 63
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 65
    :try_start_4
    const-string v0, "newInstance"

    invoke-static {v0}, Lcom/tds/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 66
    :catch_b
    move-exception v0

    .line 70
    :cond_c
    new-instance v0, Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/tds/protobuf/ExtensionRegistryLite;-><init>()V

    return-object v0
.end method

.method public static createEmpty()Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 75
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 77
    :try_start_4
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/tds/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 78
    :catch_b
    move-exception v0

    .line 82
    :cond_c
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/tds/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method private static final invokeSubclassFactory(Ljava/lang/String;)Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 93
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method static isFullRegistry(Lcom/tds/protobuf/ExtensionRegistryLite;)Z
    .registers 3
    .param p0, "registry"    # Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 86
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_10

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static reflectExtensionRegistry()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 53
    :try_start_0
    const-string v0, "com.tds.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 54
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method
