.class public Lcom/tds/common/tracker/TdsTrackerConfig;
.super Ljava/lang/Object;
.source "TdsTrackerConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/common/tracker/TdsTrackerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_GROUP_SIZE:I = 0x5


# instance fields
.field public final accessKeyId:Ljava/lang/String;

.field public final accessKeySecret:Ljava/lang/String;

.field public final androidId:Ljava/lang/String;

.field public final appPackageName:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final cachePath:Ljava/lang/String;

.field public final endPoint:Ljava/lang/String;

.field public final groupSize:I

.field public final logStore:Ljava/lang/String;

.field public final mobileType:Ljava/lang/String;

.field public final networkType:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final project:Ljava/lang/String;

.field public final ramSize:Ljava/lang/String;

.field public final romSize:Ljava/lang/String;

.field public final sdkVersionCode:Ljava/lang/String;

.field public final sdkVersionName:Ljava/lang/String;

.field public final tagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 256
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerConfig$1;

    invoke-direct {v0}, Lcom/tds/common/tracker/TdsTrackerConfig$1;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/TdsTrackerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeyId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeySecret:Ljava/lang/String;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    .line 68
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->tagsMap:Ljava/util/Map;

    .line 70
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->platform:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->osVersion:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->androidId:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appVersion:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appPackageName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->ramSize:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->romSize:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->networkType:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->mobileType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeyId:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeySecret:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->tagsMap:Ljava/util/Map;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->platform:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->osVersion:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->androidId:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appVersion:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appPackageName:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->ramSize:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->romSize:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->networkType:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->mobileType:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)V
    .registers 5
    .param p1, "builder"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->project:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$000(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    .line 86
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->endPoint:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$100(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    .line 87
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->logStore:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$200(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    .line 88
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeyId:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$300(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeyId:Ljava/lang/String;

    .line 89
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeySecret:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$400(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeySecret:Ljava/lang/String;

    .line 90
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->groupSize:I
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$500(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    .line 91
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->trackerType:I
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$600(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/tds/common/tracker/constants/TrackerType;->getTrackerName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->tagsMap:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLATFORM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$700(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_54

    .line 95
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$700(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    goto :goto_56

    .line 97
    :cond_54
    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    .line 99
    :goto_56
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionCode:I
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$800(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_68

    .line 100
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionCode:I
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$800(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    goto :goto_6a

    .line 102
    :cond_68
    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    .line 105
    :goto_6a
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->platform:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->osVersion:Ljava/lang/String;

    .line 107
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->androidId:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$900(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->androidId:Ljava/lang/String;

    .line 108
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1000(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appVersion:Ljava/lang/String;

    .line 109
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->cachePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1100(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    .line 110
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1200(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appPackageName:Ljava/lang/String;

    .line 111
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->ramSize:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1300(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->ramSize:Ljava/lang/String;

    .line 112
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->romSize:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1400(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->romSize:Ljava/lang/String;

    .line 113
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->networkType:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1500(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->networkType:Ljava/lang/String;

    .line 114
    # getter for: Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->mobileType:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->access$1600(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->mobileType:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 229
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeySecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->tagsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 237
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->ramSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->romSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->networkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->mobileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return-void
.end method
