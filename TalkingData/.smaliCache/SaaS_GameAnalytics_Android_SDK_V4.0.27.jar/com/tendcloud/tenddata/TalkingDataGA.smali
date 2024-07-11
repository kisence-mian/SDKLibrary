.class public final Lcom/tendcloud/tenddata/TalkingDataGA;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final DEBUG:Z = false

.field public static final PLATFORM_TYPE_AIR:I = 0x3

.field public static final PLATFORM_TYPE_COCOS2DX:I = 0x1

.field public static final PLATFORM_TYPE_NATIVE:I = 0x0

.field public static final PLATFORM_TYPE_PHONEGAP:I = 0x4

.field public static final PLATFORM_TYPE_UNITY:I = 0x2

.field private static final a:Ljava/lang/String; = "TDGA"

.field public static sPlatformType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPlatformType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 60
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 61
    return-void
.end method

.method public static callNullMethod()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "TDGA"

    const-string v1, "null method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 40
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 36
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    .line 112
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 113
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 108
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 45
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataGA;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v1}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 121
    monitor-exit v0

    return-void

    .line 119
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 99
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    .line 100
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 2

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 104
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method public static onKill()V
    .registers 1

    .line 81
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ac;->onKill(Lcom/tendcloud/tenddata/game/a;)V

    .line 82
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    .line 70
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 71
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    .line 55
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 56
    return-void
.end method

.method public static removeGlobalKV(Ljava/lang/String;)V
    .registers 2

    .line 90
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 91
    return-void
.end method

.method public static setGlobalKV(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 86
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 87
    return-void
.end method

.method public static setVerboseLogDisabled()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->c()V

    .line 33
    return-void
.end method
