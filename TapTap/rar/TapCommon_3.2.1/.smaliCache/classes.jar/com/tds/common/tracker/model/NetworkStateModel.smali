.class public Lcom/tds/common/tracker/model/NetworkStateModel;
.super Ljava/lang/Object;
.source "NetworkStateModel.java"

# interfaces
.implements Lcom/tds/common/tracker/model/BaseTrackModel;


# static fields
.field public static final PARAM_CODE:Ljava/lang/String; = "code"

.field public static final PARAM_DELAY:Ljava/lang/String; = "delay"

.field public static final PARAM_HOST:Ljava/lang/String; = "host"

.field public static final PARAM_SESSION_ID:Ljava/lang/String; = "session_id"


# instance fields
.field private code:I

.field private delay:J

.field private host:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->code:I

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->delay:J

    return-void
.end method


# virtual methods
.method public convert()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "netWorkStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 50
    iget-object v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->sessionId:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_14
    iget-object v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->host:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 53
    iget-object v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->host:Ljava/lang/String;

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_23
    iget v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->code:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_31
    iget-wide v1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->delay:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_42

    .line 59
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_42
    return-object v0
.end method

.method public withDelay(J)Lcom/tds/common/tracker/model/NetworkStateModel;
    .registers 3
    .param p1, "delay"    # J

    .line 42
    iput-wide p1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->delay:J

    .line 43
    return-object p0
.end method

.method public withHost(Ljava/lang/String;)Lcom/tds/common/tracker/model/NetworkStateModel;
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->host:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public withHttpCode(I)Lcom/tds/common/tracker/model/NetworkStateModel;
    .registers 2
    .param p1, "code"    # I

    .line 37
    iput p1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->code:I

    .line 38
    return-object p0
.end method

.method public withSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/NetworkStateModel;
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/tds/common/tracker/model/NetworkStateModel;->sessionId:Ljava/lang/String;

    .line 28
    return-object p0
.end method
