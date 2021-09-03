.class Lcom/tds/achievement/UploadBean;
.super Ljava/lang/Object;
.source "UploadBean.java"


# instance fields
.field achievementDisplayId:Ljava/lang/String;

.field achievementId:Ljava/lang/String;

.field reachedTime:J

.field step:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "achievementDisplayId"    # Ljava/lang/String;
    .param p3, "step"    # I
    .param p4, "reachedTime"    # J

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tds/achievement/UploadBean;->achievementId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/tds/achievement/UploadBean;->achievementDisplayId:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/tds/achievement/UploadBean;->step:I

    .line 23
    iput-wide p4, p0, Lcom/tds/achievement/UploadBean;->reachedTime:J

    .line 24
    return-void
.end method


# virtual methods
.method toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/tds/achievement/UploadBean;->achievementId:Ljava/lang/String;

    const-string v2, "achievement_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/tds/achievement/UploadBean;->achievementDisplayId:Ljava/lang/String;

    const-string v2, "achievement_open_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget v1, p0, Lcom/tds/achievement/UploadBean;->step:I

    const-string v2, "completed_step"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    iget-wide v1, p0, Lcom/tds/achievement/UploadBean;->reachedTime:J

    const-string v3, "complete_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    return-object v0
.end method
