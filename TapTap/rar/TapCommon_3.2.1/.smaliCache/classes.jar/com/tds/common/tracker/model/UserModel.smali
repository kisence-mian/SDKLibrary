.class public Lcom/tds/common/tracker/model/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Lcom/tds/common/tracker/model/BaseTrackModel;


# static fields
.field public static final PARAM_TAPTAP_OPEN_ID:Ljava/lang/String; = "taptap_open_id"

.field private static final PARAM_TDS_USER_ID:Ljava/lang/String; = "tds_user_id"

.field private static final PARAM_TDS_USER_NAME:Ljava/lang/String; = "tds_user_name"


# instance fields
.field public taptapOpenId:Ljava/lang/String;

.field public tdsUserId:Ljava/lang/String;

.field public tdsUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserId:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tds/common/tracker/model/UserModel;->taptapOpenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/tracker/exceptions/ModelConvertException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserId:Ljava/lang/String;

    const-string v2, "tds_user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserName:Ljava/lang/String;

    const-string v2, "tds_user_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/tds/common/tracker/model/UserModel;->taptapOpenId:Ljava/lang/String;

    const-string v2, "taptap_open_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v0
.end method

.method public withTapTapOpenId(Ljava/lang/String;)Lcom/tds/common/tracker/model/UserModel;
    .registers 2
    .param p1, "taptapOpenId"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/tds/common/tracker/model/UserModel;->taptapOpenId:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public withTdsUserId(Ljava/lang/String;)Lcom/tds/common/tracker/model/UserModel;
    .registers 2
    .param p1, "tapUserId"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserId:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public withTdsUserName(Ljava/lang/String;)Lcom/tds/common/tracker/model/UserModel;
    .registers 2
    .param p1, "tdsUserName"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/tds/common/tracker/model/UserModel;->tdsUserName:Ljava/lang/String;

    .line 32
    return-object p0
.end method
