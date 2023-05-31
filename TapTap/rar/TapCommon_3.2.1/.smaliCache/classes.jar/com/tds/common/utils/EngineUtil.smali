.class public Lcom/tds/common/utils/EngineUtil;
.super Ljava/lang/Object;
.source "EngineUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUnity()Z
    .registers 2

    .line 12
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayerActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 13
    const/4 v0, 0x1

    return v0

    .line 14
    :catch_7
    move-exception v0

    .line 15
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isUnreal()Z
    .registers 2

    .line 21
    :try_start_0
    const-string v0, "com.epicgames.ue4.GameActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 22
    const/4 v0, 0x1

    return v0

    .line 23
    :catch_7
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method
