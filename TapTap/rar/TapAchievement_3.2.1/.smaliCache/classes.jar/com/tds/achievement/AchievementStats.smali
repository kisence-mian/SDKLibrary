.class public Lcom/tds/achievement/AchievementStats;
.super Ljava/lang/Object;
.source "AchievementStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/achievement/AchievementStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:I

.field private rarity:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/tds/achievement/AchievementStats$1;

    invoke-direct {v0}, Lcom/tds/achievement/AchievementStats$1;-><init>()V

    sput-object v0, Lcom/tds/achievement/AchievementStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/AchievementStats;->level:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/AchievementStats;->level:I

    .line 23
    const-string v0, "rarity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    .line 24
    return-void
.end method


# virtual methods
.method public deepCopy()Lcom/tds/achievement/AchievementStats;
    .registers 3

    .line 46
    new-instance v0, Lcom/tds/achievement/AchievementStats;

    invoke-direct {v0}, Lcom/tds/achievement/AchievementStats;-><init>()V

    .line 47
    .local v0, "stats":Lcom/tds/achievement/AchievementStats;
    iget v1, p0, Lcom/tds/achievement/AchievementStats;->level:I

    iput v1, v0, Lcom/tds/achievement/AchievementStats;->level:I

    .line 48
    iget v1, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    iput v1, v0, Lcom/tds/achievement/AchievementStats;->rarity:F

    .line 49
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/tds/achievement/AchievementStats;->level:I

    return v0
.end method

.method public getRarity()F
    .registers 2

    .line 31
    iget v0, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    return v0
.end method

.method public getRarityString()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v0, "result":Lorg/json/JSONObject;
    iget v1, p0, Lcom/tds/achievement/AchievementStats;->level:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    iget v1, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    float-to-double v1, v1

    const-string v3, "rarity"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 42
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Lcom/tds/achievement/AchievementStats;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/tds/achievement/AchievementStats;->rarity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    return-void
.end method
