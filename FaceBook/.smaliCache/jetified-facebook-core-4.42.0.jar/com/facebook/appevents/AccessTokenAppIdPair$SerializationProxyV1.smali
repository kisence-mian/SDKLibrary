.class Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;
.super Ljava/lang/Object;
.source "AccessTokenAppIdPair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AccessTokenAppIdPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final accessTokenString:Ljava/lang/String;

.field private final appId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "accessTokenString"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;->accessTokenString:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;->appId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/AccessTokenAppIdPair$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/facebook/appevents/AccessTokenAppIdPair$1;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .line 80
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;->accessTokenString:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;->appId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
