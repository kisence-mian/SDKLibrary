.class public final enum Lcom/sigmob/sdk/base/models/AdStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/models/AdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusClick:Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

.field public static final enum AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusNone"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusLoading"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusReady"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusPlaying"

    invoke-direct {v0, v1, v6}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusClick"

    invoke-direct {v0, v1, v7}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Lcom/sigmob/sdk/base/models/AdStatus;

    const-string v1, "AdStatusClose"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->$VALUES:[Lcom/sigmob/sdk/base/models/AdStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/AdStatus;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/AdStatus;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/models/AdStatus;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->$VALUES:[Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/models/AdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/models/AdStatus;

    return-object v0
.end method
