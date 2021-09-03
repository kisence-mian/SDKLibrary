.class public Lcom/tds/common/websocket/protocols/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"

# interfaces
.implements Lcom/tds/common/websocket/protocols/IProtocol;


# static fields
.field private static final patternComma:Ljava/util/regex/Pattern;

.field private static final patternSpace:Ljava/util/regex/Pattern;


# instance fields
.field private final providedProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tds/common/websocket/protocols/Protocol;->patternSpace:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tds/common/websocket/protocols/Protocol;->patternComma:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providedProtocol"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_8

    .line 54
    iput-object p1, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    .line 55
    return-void

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public acceptProvidedProtocol(Ljava/lang/String;)Z
    .registers 10
    .param p1, "inputProtocolHeader"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 60
    return v2

    .line 62
    :cond_c
    sget-object v0, Lcom/tds/common/websocket/protocols/Protocol;->patternSpace:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "protocolHeader":Ljava/lang/String;
    sget-object v1, Lcom/tds/common/websocket/protocols/Protocol;->patternComma:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "headers":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_2f

    aget-object v6, v1, v5

    .line 65
    .local v6, "header":Ljava/lang/String;
    iget-object v7, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 66
    return v2

    .line 64
    .end local v6    # "header":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 69
    :cond_2f
    return v4
.end method

.method public copyInstance()Lcom/tds/common/websocket/protocols/IProtocol;
    .registers 3

    .line 79
    new-instance v0, Lcom/tds/common/websocket/protocols/Protocol;

    invoke-virtual {p0}, Lcom/tds/common/websocket/protocols/Protocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_4

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 96
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/tds/common/websocket/protocols/Protocol;

    .line 98
    .local v0, "protocol":Lcom/tds/common/websocket/protocols/Protocol;
    iget-object v1, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    iget-object v2, v0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 93
    .end local v0    # "protocol":Lcom/tds/common/websocket/protocols/Protocol;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getProvidedProtocol()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/tds/common/websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/tds/common/websocket/protocols/Protocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
