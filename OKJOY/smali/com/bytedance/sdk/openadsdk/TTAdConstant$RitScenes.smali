.class public final enum Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
.super Ljava/lang/Enum;
.source "TTAdConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RitScenes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_MORE_OPPORTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field private static final synthetic b:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "CUSTOMIZE_SCENES"

    const-string v2, "customize_scenes"

    invoke-direct {v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_OPEN_BONUS"

    const-string v2, "home_open_bonus"

    invoke-direct {v0, v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_SVIP_BONUS"

    const-string v2, "home_svip_bonus"

    invoke-direct {v0, v1, v6, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_GET_PROPS"

    const-string v2, "home_get_props"

    invoke-direct {v0, v1, v7, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_TRY_PROPS"

    const-string v2, "home_try_props"

    invoke-direct {v0, v1, v8, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_GET_BONUS"

    const/4 v2, 0x5

    const-string v3, "home_get_bonus"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "HOME_GIFT_BONUS"

    const/4 v2, 0x6

    const-string v3, "home_gift_bonus"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "GAME_START_BONUS"

    const/4 v2, 0x7

    const-string v3, "game_start_bonus"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "GAME_REDUCE_WAITING"

    const/16 v2, 0x8

    const-string v3, "geme_reduce_waiting"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 69
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "GAME_MORE_OPPORTUNITIES"

    const/16 v2, 0x9

    const-string v3, "game_more_opportunities"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_OPPORTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 70
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "GAME_FINISH_REWARDS"

    const/16 v2, 0xa

    const-string v3, "game_finish_rewards"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "GAME_GIFT_BONUS"

    const/16 v2, 0xb

    const-string v3, "game_gift_bonus"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_OPPORTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->b:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->a:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .registers 2

    .prologue
    .line 59
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->b:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object v0
.end method


# virtual methods
.method public getScenesName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->a:Ljava/lang/String;

    return-object v0
.end method
