.class public Lcom/taptap/sdk/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taptap/sdk/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final SP_KEY:Ljava/lang/String; = "token_data"

.field private static volatile cacheToken:Lcom/taptap/sdk/AccessToken;


# instance fields
.field public access_token:Ljava/lang/String;

.field private json:Ljava/lang/String;

.field public kid:Ljava/lang/String;

.field public mac_algorithm:Ljava/lang/String;

.field public mac_key:Ljava/lang/String;

.field public token_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/taptap/sdk/AccessToken$a;

    invoke-direct {v0}, Lcom/taptap/sdk/AccessToken$a;-><init>()V

    sput-object v0, Lcom/taptap/sdk/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string p1, "kid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    .line 46
    const-string p1, "access_token"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    .line 47
    const-string p1, "token_type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    .line 48
    const-string p1, "mac_key"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    .line 49
    const-string p1, "mac_algorithm"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/taptap/sdk/AccessToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/taptap/sdk/AccessToken;

    invoke-direct {v0}, Lcom/taptap/sdk/AccessToken;-><init>()V

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string p0, "kid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    .line 10
    const-string p0, "access_token"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    .line 11
    const-string p0, "token_type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    .line 12
    const-string p0, "mac_key"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    .line 13
    const-string p0, "mac_algorithm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/AccessToken;
    .registers 6

    .line 1
    new-instance v0, Lcom/taptap/sdk/AccessToken;

    invoke-direct {v0}, Lcom/taptap/sdk/AccessToken;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static clear()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/m;->a()V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    const/4 v0, 0x0

    sput-object v0, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;

    return-void
.end method

.method public static declared-synchronized getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;
    .registers 4

    const-class v0, Lcom/taptap/sdk/AccessToken;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/taptap/sdk/m;->a()V

    .line 2
    sget-object v1, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;

    if-eqz v1, :cond_e

    .line 3
    sget-object v1, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    monitor-exit v0

    return-object v1

    .line 5
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "token_data"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_34

    .line 7
    :try_start_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 8
    new-instance v2, Lcom/taptap/sdk/AccessToken;

    invoke-direct {v2, v1}, Lcom/taptap/sdk/AccessToken;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;

    .line 10
    :cond_2a
    sget-object v1, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2c} :catch_2e
    .catchall {:try_start_1d .. :try_end_2c} :catchall_34

    monitor-exit v0

    return-object v1

    .line 12
    :catch_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    monitor-exit v0

    return-object v3

    .line 0
    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setCurrentToken(Lcom/taptap/sdk/AccessToken;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;

    if-nez p0, :cond_8

    .line 3
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->clear()V

    goto :goto_10

    .line 5
    :cond_8
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationToken()V

    .line 6
    sget-object p0, Lcom/taptap/sdk/AccessToken;->cacheToken:Lcom/taptap/sdk/AccessToken;

    invoke-virtual {p0}, Lcom/taptap/sdk/AccessToken;->save()V

    :goto_10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getJson()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    return-object v0
.end method

.method save()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taptap/sdk/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3
    invoke-static {}, Lcom/taptap/sdk/i;->a()Lcom/taptap/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/AccessToken;->json:Ljava/lang/String;

    const-string v2, "token_data"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "kid"

    .line 3
    :try_start_7
    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_29

    const-string v1, "access_token"

    .line 4
    :try_start_e
    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_29

    const-string v1, "token_type"

    .line 5
    :try_start_15
    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_29

    const-string v1, "mac_key"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_29

    const-string v1, "mac_algorithm"

    .line 7
    :try_start_23
    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_2d

    .line 9
    :catch_29
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "\"kid\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\"access_token\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "\"token_type\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "\"mac_key\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "\"mac_algorithm\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
