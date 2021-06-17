.class Lcom/facebook/appevents/AppEvent$SerializationProxyV2;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b1ad70b9L


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final inBackground:Z

.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 5
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z
    .param p3, "inBackground"    # Z
    .param p4, "checksum"    # Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->jsonString:Ljava/lang/String;

    .line 253
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->isImplicit:Z

    .line 254
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->inBackground:Z

    .line 255
    iput-object p4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->checksum:Ljava/lang/String;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/facebook/appevents/AppEvent$1;

    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 259
    new-instance v6, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->isImplicit:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->inBackground:Z

    iget-object v4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->checksum:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    return-object v6
.end method
