.class public Lcom/loongcheer/interactivesdk/config/GameConfig;
.super Ljava/lang/Object;
.source "GameConfig.java"


# static fields
.field public static activity:Landroid/app/Activity;

.field private static gameResultsInterFace:Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;

.field private static isDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    .line 16
    sget-object v0, Lcom/loongcheer/interactivesdk/config/GameConfig;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getGameResultsInterFace()Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;
    .registers 1

    .line 24
    sget-object v0, Lcom/loongcheer/interactivesdk/config/GameConfig;->gameResultsInterFace:Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;

    return-object v0
.end method

.method public static isDebug()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/loongcheer/interactivesdk/config/GameConfig;->isDebug:Z

    return v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 20
    sput-object p0, Lcom/loongcheer/interactivesdk/config/GameConfig;->activity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .line 36
    sput-boolean p0, Lcom/loongcheer/interactivesdk/config/GameConfig;->isDebug:Z

    .line 37
    return-void
.end method

.method public static setGameResultsInterFace(Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;)V
    .registers 1
    .param p0, "gameResultsInterFace"    # Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;

    .line 28
    sput-object p0, Lcom/loongcheer/interactivesdk/config/GameConfig;->gameResultsInterFace:Lcom/loongcheer/interactivesdk/gamecallback/GameResultsInterFace;

    .line 29
    return-void
.end method
