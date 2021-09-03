.class public Lcom/tds/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field static final EMPTY_REGISTRY_LITE:Lcom/tds/protobuf/ExtensionRegistryLite;

.field static final EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.tds.protobuf.Extension"

.field private static volatile eagerlyParseMessageSets:Z

.field private static final extensionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tds/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 96
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->resolveExtensionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    .line 183
    new-instance v0, Lcom/tds/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/tds/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/tds/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 182
    return-void
.end method

.method constructor <init>(Lcom/tds/protobuf/ExtensionRegistryLite;)V
    .registers 3
    .param p1, "other"    # Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lcom/tds/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_e

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_16

    .line 190
    :cond_e
    iget-object v0, p1, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 191
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 193
    :goto_16
    return-void
.end method

.method constructor <init>(Z)V
    .registers 3
    .param p1, "empty"    # Z

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 201
    return-void
.end method

.method public static getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 121
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method public static isEagerlyParseMessageSets()Z
    .registers 1

    .line 99
    sget-boolean v0, Lcom/tds/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static newInstance()Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 113
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryFactory;->create()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method static resolveExtensionClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 88
    :try_start_0
    const-string v0, "com.tds.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 89
    :catch_7
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .registers 1
    .param p0, "isEagerlyParse"    # Z

    .line 103
    sput-boolean p0, Lcom/tds/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 104
    return-void
.end method


# virtual methods
.method public final add(Lcom/tds/protobuf/ExtensionLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "**>;)V"
        }
    .end annotation

    .line 159
    .local p1, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<**>;"
    const-class v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/ExtensionRegistryLite;->add(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 162
    :cond_12
    invoke-static {p0}, Lcom/tds/protobuf/ExtensionRegistryFactory;->isFullRegistry(Lcom/tds/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_32

    .line 168
    goto :goto_43

    .line 165
    :catch_32
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 167
    const-string v0, "Could not invoke ExtensionRegistry#add for %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-void
.end method

.method public final add(Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 149
    .local p1, "extension":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    iget-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 150
    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/tds/protobuf/MessageLite;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 149
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/tds/protobuf/MessageLite;I)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 5
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 141
    .local p1, "containingTypeDefaultInstance":Lcom/tds/protobuf/MessageLite;, "TContainingType;"
    iget-object v0, p0, Lcom/tds/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/tds/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0
.end method

.method public getUnmodifiable()Lcom/tds/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 126
    new-instance v0, Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/ExtensionRegistryLite;-><init>(Lcom/tds/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
