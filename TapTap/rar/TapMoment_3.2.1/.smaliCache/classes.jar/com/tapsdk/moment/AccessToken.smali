.class public Lcom/tapsdk/moment/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tapsdk/moment/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final SP_KEY:Ljava/lang/String; = "token_data"

.field private static volatile cacheToken:Lcom/tapsdk/moment/AccessToken;


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

    .line 12
    new-instance v0, Lcom/tapsdk/moment/AccessToken$1;

    invoke-direct {v0}, Lcom/tapsdk/moment/AccessToken$1;-><init>()V

    sput-object v0, Lcom/tapsdk/moment/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "kid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 55
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    .line 56
    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    .line 57
    const-string v1, "mac_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 58
    const-string v1, "mac_algorithm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "kid"    # Ljava/lang/String;
    .param p2, "access_token"    # Ljava/lang/String;
    .param p3, "token_type"    # Ljava/lang/String;
    .param p4, "mac_key"    # Ljava/lang/String;
    .param p5, "mac_algorithm"    # Ljava/lang/String;
    .param p6, "json"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/tapsdk/moment/AccessToken;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/tapsdk/moment/AccessToken;

    invoke-direct {v0}, Lcom/tapsdk/moment/AccessToken;-><init>()V

    .line 82
    .local v0, "token":Lcom/tapsdk/moment/AccessToken;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "kid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 84
    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    .line 85
    const-string v2, "token_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    .line 86
    const-string v2, "mac_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 87
    const-string v2, "mac_algorithm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tapsdk/moment/AccessToken;
    .registers 6
    .param p0, "kid"    # Ljava/lang/String;
    .param p1, "access_token"    # Ljava/lang/String;
    .param p2, "token_type"    # Ljava/lang/String;
    .param p3, "mac_key"    # Ljava/lang/String;
    .param p4, "mac_algorithm"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/tapsdk/moment/AccessToken;

    invoke-direct {v0}, Lcom/tapsdk/moment/AccessToken;-><init>()V

    .line 72
    .local v0, "token":Lcom/tapsdk/moment/AccessToken;
    iput-object p0, v0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 73
    iput-object p1, v0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    .line 74
    iput-object p2, v0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    .line 75
    iput-object p3, v0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 76
    iput-object p4, v0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    .line 77
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->json:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 5

    .line 92
    const-string v0, ""

    .line 93
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_7
    const-string v2, "kid"

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v2, "token_type"

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v2, "mac_key"

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v2, "mac_algorithm"

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2a} :catch_2b

    .line 102
    goto :goto_2f

    .line 100
    :catch_2b
    move-exception v2

    .line 101
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 104
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\"kid\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\"access_token\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "\"token_type\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\"mac_key\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\"mac_algorithm\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->token_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tapsdk/moment/AccessToken;->mac_algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void
.end method
