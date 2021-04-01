.class public final enum Lmobi/oneway/export/enums/OnewaySdkError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/oneway/export/enums/OnewaySdkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum AD_BLOCKER_DETECTED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum DEVICE_ID_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum FILE_IO_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INTERNAL_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INVALID_ARGUMENT:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum NOT_CONFIGURED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum NOT_INITIALIZED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum VIDEO_PLAYER_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "NOT_CONFIGURED"

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_CONFIGURED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v4}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_INITIALIZED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "INITIALIZE_FAILED"

    invoke-direct {v0, v1, v5}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v6}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INVALID_ARGUMENT:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "VIDEO_PLAYER_ERROR"

    invoke-direct {v0, v1, v7}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->VIDEO_PLAYER_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "INIT_SANITY_CHECK_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INIT_SANITY_CHECK_FAIL:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "AD_BLOCKER_DETECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->AD_BLOCKER_DETECTED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->FILE_IO_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "DEVICE_ID_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->DEVICE_ID_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "SHOW_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INTERNAL_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "CAMPAIGN_NO_FILL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "LOAD_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    const/16 v0, 0xd

    new-array v0, v0, [Lmobi/oneway/export/enums/OnewaySdkError;

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_CONFIGURED:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_INITIALIZED:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->INVALID_ARGUMENT:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v1, v0, v6

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->VIDEO_PLAYER_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->INIT_SANITY_CHECK_FAIL:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->AD_BLOCKER_DETECTED:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->FILE_IO_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->DEVICE_ID_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->INTERNAL_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v2, v0, v1

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->$VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/OnewaySdkError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/enums/OnewaySdkError;

    return-object v0
.end method

.method public static values()[Lmobi/oneway/export/enums/OnewaySdkError;
    .registers 1

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->$VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/OnewaySdkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/OnewaySdkError;

    return-object v0
.end method
