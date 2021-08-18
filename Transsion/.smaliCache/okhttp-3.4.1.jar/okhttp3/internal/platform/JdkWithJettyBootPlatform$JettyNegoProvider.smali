.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 105
    iget-boolean v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    return v0
.end method

.method static synthetic access$100(Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 105
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 120
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_c

    .line 121
    sget-object p3, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 123
    :cond_c
    const-string v2, "supports"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v1, :cond_1e

    .line 124
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 125
    :cond_1e
    const-string v2, "unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v1, :cond_2e

    .line 126
    iput-boolean v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    .line 127
    return-object v4

    .line 128
    :cond_2e
    const-string v2, "protocols"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    array-length v2, p3

    if-nez v2, :cond_3c

    .line 129
    iget-object v2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-object v2

    .line 130
    :cond_3c
    const-string v2, "selectProtocol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_4d

    const-string v2, "select"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_4d
    const-class v2, Ljava/lang/String;

    if-ne v2, v1, :cond_88

    array-length v2, p3

    if-ne v2, v3, :cond_88

    aget-object v2, p3, v5

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_88

    .line 132
    aget-object v2, p3, v5

    check-cast v2, Ljava/util/List;

    .line 134
    .local v2, "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_63
    if-ge v3, v4, :cond_7d

    .line 135
    iget-object v6, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v5

    .line 134
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 139
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_7d
    iget-object v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v3

    .line 140
    .end local v2    # "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_88
    const-string v2, "protocolSelected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, "selected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_98
    array-length v2, p3

    if-ne v2, v3, :cond_a2

    .line 142
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    .line 143
    return-object v4

    .line 145
    :cond_a2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
