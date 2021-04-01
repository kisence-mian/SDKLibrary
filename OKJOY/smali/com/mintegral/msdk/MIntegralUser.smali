.class public Lcom/mintegral/msdk/MIntegralUser;
.super Ljava/lang/Object;
.source "MIntegralUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/MIntegralUser$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/mintegral/msdk/MIntegralUser$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMintegralUser(Ljava/lang/String;)Lcom/mintegral/msdk/MIntegralUser;
    .registers 8

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 200
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/mintegral/msdk/MIntegralUser;

    invoke-direct {v0}, Lcom/mintegral/msdk/MIntegralUser;-><init>()V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_81

    .line 202
    :try_start_11
    const-string v1, "age"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 203
    const-string v1, "age"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/MIntegralUser;->setAge(I)V

    .line 205
    :cond_22
    const-string v1, "gender"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 206
    const-string v1, "gender"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/MIntegralUser;->setGender(I)V

    .line 209
    :cond_33
    const-string v1, "pay"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 210
    const-string v1, "pay"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/MIntegralUser;->setPay(I)V

    .line 213
    :cond_44
    const-string v1, "custom"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 214
    const-string v1, "custom"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/MIntegralUser;->setCustom(Ljava/lang/String;)V

    .line 217
    :cond_55
    const-string v1, "gps"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_80

    .line 219
    new-instance v2, Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-direct {v2}, Lcom/mintegral/msdk/MIntegralUser$a;-><init>()V

    .line 220
    const-string v3, "lat"

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mintegral/msdk/MIntegralUser$a;->a(D)V

    .line 221
    const-string v3, "lng"

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mintegral/msdk/MIntegralUser$a;->b(D)V

    .line 222
    iput-object v2, v0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_80} :catch_89

    .line 228
    :cond_80
    :goto_80
    return-object v0

    .line 225
    :catch_81
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_85
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_80

    :catch_89
    move-exception v1

    goto :goto_85

    :cond_8b
    move-object v0, v1

    goto :goto_80
.end method

.method public static toJSON(Lcom/mintegral/msdk/MIntegralUser;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const-wide v6, -0x3f70c00000000000L    # -1000.0

    .line 157
    if-nez p0, :cond_9

    .line 190
    :cond_8
    :goto_8
    return-object v0

    .line 160
    :cond_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 162
    :try_start_e
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    .line 163
    const-string v1, "gender"

    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_19
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_24

    .line 166
    const-string v1, "age"

    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_24
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2f

    .line 169
    const-string v1, "pay"

    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_2f
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    if-eqz v1, :cond_67

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/MIntegralUser$a;->a()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_4d

    .line 174
    const-string v3, "lat"

    iget-object v4, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v4}, Lcom/mintegral/msdk/MIntegralUser$a;->a()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 176
    :cond_4d
    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/MIntegralUser$a;->b()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_62

    .line 177
    const-string v3, "lng"

    iget-object v4, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v4}, Lcom/mintegral/msdk/MIntegralUser$a;->b()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 179
    :cond_62
    const-string v3, "gps"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_67
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 182
    const-string v1, "custom"

    iget-object v3, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_76} :catch_81

    .line 187
    :cond_76
    :goto_76
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 185
    :catch_81
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_76
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 69
    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    .line 78
    :cond_4
    :goto_4
    return v0

    .line 70
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 72
    check-cast p1, Lcom/mintegral/msdk/MIntegralUser;

    .line 74
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    iget-object v2, p1, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/MIntegralUser$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/MIntegralUser$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public setAge(I)V
    .registers 3

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setGender(I)V
    .registers 3

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setLat(D)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/MIntegralUser$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/MIntegralUser$a;->a(D)V

    .line 54
    return-void
.end method

.method public setLng(D)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/MIntegralUser$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/MIntegralUser$a;->b(D)V

    .line 61
    return-void
.end method

.method public setPay(I)V
    .registers 3

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MIntegralUser{gender="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->d:Lcom/mintegral/msdk/MIntegralUser$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", custom=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/MIntegralUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
