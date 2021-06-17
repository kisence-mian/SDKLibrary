.class public final enum Lcom/loongcheer/admobsdk/sample/SampleErrorCode;
.super Ljava/lang/Enum;
.source "SampleErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loongcheer/admobsdk/sample/SampleErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

.field public static final enum BAD_REQUEST:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

.field public static final enum NO_INVENTORY:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

.field public static final enum UNKNOWN:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 4
    new-instance v0, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->UNKNOWN:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 5
    new-instance v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->BAD_REQUEST:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 6
    new-instance v3, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    const-string v5, "NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->NETWORK_ERROR:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 7
    new-instance v5, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    const-string v7, "NO_INVENTORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->NO_INVENTORY:Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 3
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->$VALUES:[Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loongcheer/admobsdk/sample/SampleErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/loongcheer/admobsdk/sample/SampleErrorCode;
    .registers 1

    .line 3
    sget-object v0, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->$VALUES:[Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    invoke-virtual {v0}, [Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    return-object v0
.end method
