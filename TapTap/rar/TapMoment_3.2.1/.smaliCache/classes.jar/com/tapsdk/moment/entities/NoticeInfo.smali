.class public Lcom/tapsdk/moment/entities/NoticeInfo;
.super Ljava/lang/Object;
.source "NoticeInfo.java"


# instance fields
.field public appNoticeNum:I

.field public message:Ljava/lang/String;

.field public userNoticeNum:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "follow_app_total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapsdk/moment/entities/NoticeInfo;->appNoticeNum:I

    .line 17
    const-string v0, "follow_user_total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapsdk/moment/entities/NoticeInfo;->userNoticeNum:I

    .line 18
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/entities/NoticeInfo;->message:Ljava/lang/String;

    .line 19
    return-void
.end method
