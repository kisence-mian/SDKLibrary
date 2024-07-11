.class final Lcom/appsflyer/internal/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/v$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static values(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 6

    .line 22
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 23
    invoke-static {p0, v3}, Lcom/appsflyer/internal/ac;->values(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 24
    const/4 p0, 0x1

    return p0

    .line 22
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 27
    :cond_12
    return v1
.end method


# virtual methods
.method final AFInAppEventType(Landroid/content/Context;)Landroid/location/Location;
    .registers 10

    .line 37
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 39
    const/4 v1, 0x0

    :try_start_3
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 40
    nop

    .line 1053
    const-string v3, "network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 1093
    invoke-static {p1, v4}, Lcom/appsflyer/internal/v;->values(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1094
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_25

    .line 1096
    :cond_24
    move-object v3, v1

    .line 1053
    :goto_25
    nop

    .line 1055
    const-string v4, "gps"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v0, v6, v5

    .line 2093
    invoke-static {p1, v6}, Lcom/appsflyer/internal/v;->values(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 2094
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_38

    .line 2096
    :cond_37
    move-object p1, v1

    .line 1055
    :goto_38
    nop

    .line 1057
    nop

    .line 3070
    if-nez p1, :cond_40

    if-nez v3, :cond_40

    .line 3071
    move-object v3, v1

    goto :goto_5b

    .line 3074
    :cond_40
    if-nez p1, :cond_45

    if-eqz v3, :cond_45

    .line 3075
    goto :goto_5b

    .line 3078
    :cond_45
    if-nez v3, :cond_49

    if-nez p1, :cond_5a

    .line 3083
    :cond_49
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_60

    sub-long/2addr v4, v6

    .line 3084
    const-wide/32 v6, 0xea60

    cmp-long v0, v6, v4

    if-gez v0, :cond_5a

    .line 3085
    goto :goto_5b

    .line 3087
    :cond_5a
    move-object v3, p1

    .line 40
    :goto_5b
    nop

    .line 42
    if-eqz v3, :cond_5f

    .line 43
    move-object v1, v3

    .line 47
    :cond_5f
    goto :goto_61

    .line 45
    :catchall_60
    move-exception p1

    .line 48
    :goto_61
    return-object v1
.end method
