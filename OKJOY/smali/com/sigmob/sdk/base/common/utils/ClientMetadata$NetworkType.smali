.class public final enum Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum ETHERNET:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum MOBILE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum MOBILE_2G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum MOBILE_3G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum MOBILE_4G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum UNKNOWN:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

.field public static final enum WIFI:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->UNKNOWN:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "ETHERNET"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->ETHERNET:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "WIFI"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->WIFI:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v6, v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v7, v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_2G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "MOBILE_3G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_3G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_4G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->UNKNOWN:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->ETHERNET:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->WIFI:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_2G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_3G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_4G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->$VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->mId:I

    return-void
.end method

.method static synthetic access$2100(I)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->fromAndroidNetworkType(I)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method private static fromAndroidNetworkType(I)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 2

    packed-switch p0, :pswitch_data_16

    :pswitch_3
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->UNKNOWN:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->ETHERNET:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->WIFI:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_5

    :pswitch_c
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ax()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->S()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->$VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
