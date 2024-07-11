.class public final enum Lcom/sigmob/sdk/common/models/AdStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/common/models/AdStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdStatusClick:Lcom/sigmob/sdk/common/models/AdStatus;

.field public static final enum AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

.field public static final enum AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

.field public static final enum AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

.field public static final enum AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

.field public static final enum AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

.field private static final synthetic a:[Lcom/sigmob/sdk/common/models/AdStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v1, "AdStatusNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v1, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v3, "AdStatusLoading"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v3, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v5, "AdStatusReady"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v5, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v7, "AdStatusPlaying"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v7, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v9, "AdStatusClick"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v9, Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v11, "AdStatusClose"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sigmob/sdk/common/models/AdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sigmob/sdk/common/models/AdStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sigmob/sdk/common/models/AdStatus;->a:[Lcom/sigmob/sdk/common/models/AdStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/AdStatus;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/common/models/AdStatus;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->a:[Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/common/models/AdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/common/models/AdStatus;

    return-object v0
.end method
