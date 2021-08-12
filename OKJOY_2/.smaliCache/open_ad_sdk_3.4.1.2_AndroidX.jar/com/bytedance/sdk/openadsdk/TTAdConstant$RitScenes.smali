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
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

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
    .registers 16

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "CUSTOMIZE_SCENES"

    const/4 v2, 0x0

    const-string v3, "customize_scenes"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 63
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v3, "HOME_OPEN_BONUS"

    const/4 v4, 0x1

    const-string v5, "home_open_bonus"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 64
    new-instance v3, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v5, "HOME_SVIP_BONUS"

    const/4 v6, 0x2

    const-string v7, "home_svip_bonus"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 65
    new-instance v5, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v7, "HOME_GET_PROPS"

    const/4 v8, 0x3

    const-string v9, "home_get_props"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 66
    new-instance v7, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v9, "HOME_TRY_PROPS"

    const/4 v10, 0x4

    const-string v11, "home_try_props"

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 67
    new-instance v9, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v11, "HOME_GET_BONUS"

    const/4 v12, 0x5

    const-string v13, "home_get_bonus"

    invoke-direct {v9, v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 68
    new-instance v11, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v13, "HOME_GIFT_BONUS"

    const/4 v14, 0x6

    const-string v15, "home_gift_bonus"

    invoke-direct {v11, v13, v14, v15}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 69
    new-instance v13, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v15, "GAME_START_BONUS"

    const/4 v14, 0x7

    const-string v12, "game_start_bonus"

    invoke-direct {v13, v15, v14, v12}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 70
    new-instance v12, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v15, "GAME_REDUCE_WAITING"

    const/16 v14, 0x8

    const-string v10, "geme_reduce_waiting"

    invoke-direct {v12, v15, v14, v10}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 71
    new-instance v10, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v15, "game_more_kllkrtunities"

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/utils/aj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v14, "GAME_MORE_KLLKRTUNITIES"

    const/16 v8, 0x9

    invoke-direct {v10, v14, v8, v15}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 72
    new-instance v14, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v15, "GAME_FINISH_REWARDS"

    const/16 v8, 0xa

    const-string v6, "game_finish_rewards"

    invoke-direct {v14, v15, v8, v6}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 73
    new-instance v6, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v15, "GAME_GIFT_BONUS"

    const/16 v8, 0xb

    const-string v4, "game_gift_bonus"

    invoke-direct {v6, v15, v8, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    .line 61
    const/16 v4, 0xc

    new-array v4, v4, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v14, v4, v0

    aput-object v6, v4, v8

    sput-object v4, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->b:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .registers 2

    .line 61
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .registers 1

    .line 61
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->b:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object v0
.end method


# virtual methods
.method public getScenesName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->a:Ljava/lang/String;

    return-object v0
.end method
