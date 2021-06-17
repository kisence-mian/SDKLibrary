.class public Lcom/tapjoy/TJPlacementManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/au<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJCorePlacement;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    invoke-static {}, Lcom/tapjoy/internal/au;->a()Lcom/tapjoy/internal/au;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/au;

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    .line 28
    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/tapjoy/TJPlacementManager;->d:I

    .line 34
    sput v0, Lcom/tapjoy/TJPlacementManager;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;
    .registers 2

    .line 85
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/au;

    monitor-enter v0

    .line 86
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJCorePlacement;

    monitor-exit v0

    return-object p0

    .line 87
    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;
    .registers 6

    .line 71
    nop

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2095
    if-eqz p3, :cond_b

    const-string p3, "!SYSTEM!"

    goto :goto_d

    :cond_b
    const-string p3, ""

    :goto_d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    invoke-static {p0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_18

    move-object p3, p0

    goto :goto_1a

    :cond_18
    const-string p3, ""

    :goto_1a
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_24

    goto :goto_26

    :cond_24
    const-string p1, ""

    :goto_26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    invoke-static {p2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_32

    :cond_30
    const-string p2, ""

    :goto_32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2102
    const-string p2, "TJPlacementManager"

    const-string p3, "TJCorePlacement key="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    nop

    .line 71
    nop

    .line 72
    sget-object p2, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/au;

    monitor-enter p2

    .line 73
    :try_start_54
    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object p3

    .line 74
    if-nez p3, :cond_78

    .line 75
    new-instance p3, Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p3, p0, p1, p4}, Lcom/tapjoy/TJCorePlacement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p2, p1, p3}, Lcom/tapjoy/internal/au;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p0, "TJPlacementManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Created TJCorePlacement with GUID: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2822
    iget-object p4, p3, Lcom/tapjoy/TJCorePlacement;->d:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_78
    monitor-exit p2

    return-object p3

    .line 81
    :catchall_7a
    move-exception p0

    monitor-exit p2
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 6

    .line 52
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/au;

    monitor-enter v0

    .line 53
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1, v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object p0

    .line 54
    new-instance p1, Lcom/tapjoy/TJPlacement;

    invoke-direct {p1, p0, p3}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 55
    monitor-exit v0

    return-object p1

    .line 56
    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 7

    .line 63
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/au;

    monitor-enter v0

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-static {p0, p1, p2, v1, v2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object p0

    .line 65
    new-instance p1, Lcom/tapjoy/TJPlacement;

    invoke-direct {p1, p0, p3}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 66
    monitor-exit v0

    return-object p1

    .line 67
    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static canCachePlacement()Z
    .registers 2

    .line 150
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static canPreRenderPlacement()Z
    .registers 2

    .line 154
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "initiatedBySdk"    # Z
    .param p3, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, p2, v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 41
    nop

    .line 1792
    iput-boolean p2, v0, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 1793
    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJPlacementData;->setPlacementType(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 44
    new-instance v1, Lcom/tapjoy/TJPlacement;

    invoke-direct {v1, v0, p3}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 45
    return-object v1
.end method

.method public static decrementPlacementCacheCount()V
    .registers 1

    .line 172
    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 173
    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    if-gez v0, :cond_b

    .line 174
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    .line 176
    :cond_b
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    .line 177
    return-void
.end method

.method public static decrementPlacementPreRenderCount()V
    .registers 1

    .line 194
    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 195
    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    if-gez v0, :cond_b

    .line 196
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    .line 199
    :cond_b
    return-void
.end method

.method public static dismissContentShowing(Z)V
    .registers 1
    .param p0, "dismissAd"    # Z

    .line 221
    if-eqz p0, :cond_5

    .line 222
    invoke-static {}, Lcom/tapjoy/TJAdUnitActivity;->a()V

    .line 224
    :cond_5
    invoke-static {}, Lcom/tapjoy/internal/hg;->a()V

    .line 225
    invoke-static {}, Lcom/tapjoy/internal/gx;->a()V

    .line 226
    return-void
.end method

.method public static getCachedPlacementCount()I
    .registers 1

    .line 139
    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    return v0
.end method

.method public static getCachedPlacementLimit()I
    .registers 1

    .line 125
    sget v0, Lcom/tapjoy/TJPlacementManager;->d:I

    return v0
.end method

.method public static getPreRenderedPlacementCount()I
    .registers 1

    .line 146
    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    return v0
.end method

.method public static getPreRenderedPlacementLimit()I
    .registers 1

    .line 132
    sget v0, Lcom/tapjoy/TJPlacementManager;->e:I

    return v0
.end method

.method public static incrementPlacementCacheCount()V
    .registers 2

    .line 161
    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 162
    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->d:I

    if-le v0, v1, :cond_c

    .line 163
    sput v1, Lcom/tapjoy/TJPlacementManager;->b:I

    .line 165
    :cond_c
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    .line 166
    return-void
.end method

.method public static incrementPlacementPreRenderCount()V
    .registers 2

    .line 183
    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 184
    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->e:I

    if-le v0, v1, :cond_c

    .line 185
    sput v1, Lcom/tapjoy/TJPlacementManager;->c:I

    .line 188
    :cond_c
    return-void
.end method

.method public static printPlacementCacheInformation()V
    .registers 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Space available in placement cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tapjoy/TJPlacementManager;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tapjoy/TJPlacementManager;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacementManager"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static printPlacementPreRenderInformation()V
    .registers 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Space available for placement pre-render: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tapjoy/TJPlacementManager;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tapjoy/TJPlacementManager;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacementManager"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static setCachedPlacementLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .line 111
    sput p0, Lcom/tapjoy/TJPlacementManager;->d:I

    .line 112
    return-void
.end method

.method public static setPreRenderedPlacementLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .line 118
    sput p0, Lcom/tapjoy/TJPlacementManager;->e:I

    .line 119
    return-void
.end method
