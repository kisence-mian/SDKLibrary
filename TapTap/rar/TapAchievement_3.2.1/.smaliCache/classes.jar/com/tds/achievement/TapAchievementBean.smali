.class public Lcom/tds/achievement/TapAchievementBean;
.super Ljava/lang/Object;
.source "TapAchievementBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBLE_FALSE:I = 0x1

.field public static final VISIBLE_TRUE:I


# instance fields
.field private achieveIcon:Ljava/lang/String;

.field private achievementId:Ljava/lang/String;

.field private displayId:Ljava/lang/String;

.field private fullReached:Z

.field private isChanged:Z

.field private reachedStep:I

.field private reachedTime:J

.field private stats:Lcom/tds/achievement/AchievementStats;

.field private step:I

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private visible:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/tds/achievement/TapAchievementBean$1;

    invoke-direct {v0}, Lcom/tds/achievement/TapAchievementBean$1;-><init>()V

    sput-object v0, Lcom/tds/achievement/TapAchievementBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 33
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 33
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    .line 103
    const-class v1, Lcom/tds/achievement/AchievementStats;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/AchievementStats;

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f

    move v1, v2

    goto :goto_50

    :cond_4f
    move v1, v0

    :goto_50
    iput-boolean v1, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_65

    move v0, v2

    :cond_65
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "displayId"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 33
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 39
    iput-object p1, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 33
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 43
    const-string v1, "achievement_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    .line 44
    const-string v1, "achievement_open_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    .line 45
    const-string v1, "is_hide"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 46
    const-string v1, "count_step"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    .line 47
    const-string v1, "achievement_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    .line 49
    const-string v1, "achievement_config_out_dto"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    .local v1, "dtoObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_51

    .line 51
    const-string v2, "achievement_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    .line 52
    const-string v2, "achievement_sub_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    .line 53
    const-string v2, "achievement_icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    .line 56
    :cond_51
    const-string v2, "achievement_rarity"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    .local v2, "statObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_61

    .line 58
    new-instance v3, Lcom/tds/achievement/AchievementStats;

    invoke-direct {v3, v2}, Lcom/tds/achievement/AchievementStats;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    goto :goto_68

    .line 60
    :cond_61
    new-instance v3, Lcom/tds/achievement/AchievementStats;

    invoke-direct {v3}, Lcom/tds/achievement/AchievementStats;-><init>()V

    iput-object v3, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    .line 63
    :goto_68
    const-string v3, "full_completed"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 64
    const-string v3, "completed_step"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 65
    const-string v3, "complete_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 67
    const-string v3, "isChanged"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 68
    return-void
.end method


# virtual methods
.method deepCopy()Lcom/tds/achievement/TapAchievementBean;
    .registers 4

    .line 263
    new-instance v0, Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {v0}, Lcom/tds/achievement/TapAchievementBean;-><init>()V

    .line 264
    .local v0, "temp":Lcom/tds/achievement/TapAchievementBean;
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    .line 266
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    iput v1, v0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 267
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    .line 270
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    iput v1, v0, Lcom/tds/achievement/TapAchievementBean;->step:I

    .line 271
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementStats;->deepCopy()Lcom/tds/achievement/AchievementStats;

    move-result-object v1

    iput-object v1, v0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    .line 272
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    iput v1, v0, Lcom/tds/achievement/TapAchievementBean;->type:I

    .line 274
    iget-boolean v1, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    iput-boolean v1, v0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 275
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    iput v1, v0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 276
    iget-wide v1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    iput-wide v1, v0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 277
    iget-boolean v1, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    iput-boolean v1, v0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 278
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getAchieveIcon()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getReachedStep()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    return v0
.end method

.method public getReachedTime()J
    .registers 3

    .line 196
    iget-wide v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    return-wide v0
.end method

.method public getStats()Lcom/tds/achievement/AchievementStats;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    if-nez v0, :cond_a

    .line 178
    new-instance v0, Lcom/tds/achievement/AchievementStats;

    invoke-direct {v0}, Lcom/tds/achievement/AchievementStats;-><init>()V

    return-object v0

    .line 180
    :cond_a
    return-object v0
.end method

.method public getStep()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    return v0
.end method

.method growSteps(I)V
    .registers 3
    .param p1, "numSteps"    # I

    .line 226
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/tds/achievement/TapAchievementBean;->makeSteps(I)V

    .line 227
    return-void
.end method

.method isChanged()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    return v0
.end method

.method public isFullAchievement()Z
    .registers 3

    .line 200
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFullReached()Z
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 157
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method makeSteps(I)V
    .registers 6
    .param p1, "numSteps"    # I

    .line 230
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    if-eqz v0, :cond_5

    .line 231
    return-void

    .line 233
    :cond_5
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    if-gt p1, v0, :cond_a

    .line 234
    return-void

    .line 236
    :cond_a
    iput p1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 237
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_15

    .line 238
    iput-boolean v1, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 239
    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 241
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 242
    iput-boolean v1, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 243
    return-void
.end method

.method reach()V
    .registers 4

    .line 216
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    if-eqz v0, :cond_5

    .line 217
    return-void

    .line 219
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 220
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    iput v1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 222
    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 223
    return-void
.end method

.method replaceBase(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 3
    .param p1, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 246
    iget v0, p1, Lcom/tds/achievement/TapAchievementBean;->visible:I

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    .line 247
    iget-object v0, p1, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    .line 250
    iget v0, p1, Lcom/tds/achievement/TapAchievementBean;->step:I

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    .line 251
    iget-object v0, p1, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    iput-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    .line 252
    iget v0, p1, Lcom/tds/achievement/TapAchievementBean;->type:I

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    .line 253
    return-void
.end method

.method replaceUser(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 4
    .param p1, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 256
    iget-boolean v0, p1, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    .line 257
    iget v0, p1, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    iput v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    .line 258
    iget-wide v0, p1, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    iput-wide v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    .line 259
    iget-boolean v0, p1, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 260
    return-void
.end method

.method setChanged()V
    .registers 2

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 213
    return-void
.end method

.method setNotChanged()V
    .registers 2

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    .line 209
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    const-string v2, "achievement_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v1, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    const-string v2, "achievement_open_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    const-string v2, "is_hide"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    const-string v2, "count_step"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget v1, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    const-string v2, "achievement_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v1, "dto":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    const-string v3, "achievement_title"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    const-string v3, "achievement_sub_title"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    const-string v3, "achievement_icon"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "achievement_config_out_dto"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v2, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    if-eqz v2, :cond_54

    .line 85
    invoke-virtual {v2}, Lcom/tds/achievement/AchievementStats;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "achievement_rarity"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_54
    iget-boolean v2, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    const-string v3, "full_complete"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    iget v2, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    const-string v3, "completed_step"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    iget-wide v2, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    const-string v4, "complete_time"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    iget-boolean v2, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    const-string v3, "isChanged"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->achievementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->visible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->achieveIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->step:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/tds/achievement/TapAchievementBean;->stats:Lcom/tds/achievement/AchievementStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->fullReached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-wide v0, p0, Lcom/tds/achievement/TapAchievementBean;->reachedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-boolean v0, p0, Lcom/tds/achievement/TapAchievementBean;->isChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
