.class public Lcom/taptap/sdk/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taptap/sdk/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field protected static volatile profile:Lcom/taptap/sdk/Profile;


# instance fields
.field private avatar:Ljava/lang/String;

.field protected isCertified:I

.field private name:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private unionid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/taptap/sdk/Profile$b;

    invoke-direct {v0}, Lcom/taptap/sdk/Profile$b;-><init>()V

    sput-object v0, Lcom/taptap/sdk/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/Profile;->isCertified:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/Profile;->isCertified:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/Profile;->openid:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/Profile;->unionid:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/taptap/sdk/Profile;->isCertified:I

    return-void
.end method

.method public static fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/net/Api$ApiCallback<",
            "Lcom/taptap/sdk/Profile;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationProfile()V

    .line 3
    invoke-static {}, Lcom/taptap/sdk/h;->c()Lcom/taptap/sdk/RegionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/RegionType;->profileUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/taptap/sdk/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/Profile$a;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/Profile$a;-><init>(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lcom/taptap/sdk/net/Api;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V

    goto :goto_38

    .line 33
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Login first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    .line 34
    const-string p0, "Need login first!!"

    invoke-static {p0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/taptap/sdk/Profile;
    .registers 4

    .line 1
    new-instance v0, Lcom/taptap/sdk/Profile;

    invoke-direct {v0}, Lcom/taptap/sdk/Profile;-><init>()V

    .line 2
    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    .line 3
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    .line 4
    const-string v1, "openid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/Profile;->openid:Ljava/lang/String;

    .line 5
    const-string v1, "unionid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/Profile;->unionid:Ljava/lang/String;

    .line 6
    const-string v1, "is_certified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput p0, v0, Lcom/taptap/sdk/Profile;->isCertified:I

    :cond_33
    return-object v0
.end method

.method public static declared-synchronized getCurrentProfile()Lcom/taptap/sdk/Profile;
    .registers 4

    const-class v0, Lcom/taptap/sdk/Profile;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;

    if-eqz v1, :cond_b

    .line 2
    sget-object v1, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_37

    monitor-exit v0

    return-object v1

    .line 4
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "profile"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_37

    if-nez v2, :cond_34

    .line 7
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/taptap/sdk/Profile;->fromJson(Lorg/json/JSONObject;)Lcom/taptap/sdk/Profile;

    move-result-object v1

    sput-object v1, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;

    .line 8
    sget-object v1, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2e} :catch_30
    .catchall {:try_start_21 .. :try_end_2e} :catchall_37

    monitor-exit v0

    return-object v1

    .line 10
    :catch_30
    move-exception v1

    :try_start_31
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_37

    :cond_34
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_37
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static save(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "profile"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    const-string v1, "profile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    const/4 v0, 0x0

    sput-object v0, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/Profile;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionid()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/Profile;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 3
    :try_start_7
    iget-object v2, p0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_22

    const-string v1, "avatar"

    .line 4
    :try_start_e
    iget-object v2, p0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_22

    const-string v1, "openid"

    .line 5
    :try_start_15
    iget-object v2, p0, Lcom/taptap/sdk/Profile;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_22

    const-string v1, "unionid"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lcom/taptap/sdk/Profile;->unionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_26

    .line 8
    :catch_22
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"name\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"avatar\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/taptap/sdk/Profile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/taptap/sdk/Profile;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/taptap/sdk/Profile;->openid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/taptap/sdk/Profile;->unionid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/taptap/sdk/Profile;->isCertified:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
