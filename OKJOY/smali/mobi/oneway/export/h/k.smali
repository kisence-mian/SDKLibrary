.class public Lmobi/oneway/export/h/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/h/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmobi/oneway/export/h/k$a;->a:Lmobi/oneway/export/h/k$a;

    invoke-static {v0}, Lmobi/oneway/export/h/k;->a(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3c

    sget-object v1, Lmobi/oneway/export/h/k$1;->a:[I

    invoke-virtual {p0}, Lmobi/oneway/export/h/k$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    const-string v0, ""

    :goto_29
    return-object v0

    :pswitch_2a
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :pswitch_33
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_3c
    invoke-static {p0}, Lmobi/oneway/export/h/k;->b(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_41
    invoke-static {p0}, Lmobi/oneway/export/h/k;->b(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_29

    :catch_46
    move-exception v0

    const-string v0, ""

    goto :goto_29

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
    .end packed-switch
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmobi/oneway/export/h/k$a;->b:Lmobi/oneway/export/h/k$a;

    invoke-static {v0}, Lmobi/oneway/export/h/k;->a(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lmobi/oneway/export/h/k$a;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v1, Lmobi/oneway/export/h/k$1;->a:[I

    invoke-virtual {p0}, Lmobi/oneway/export/h/k$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    :cond_1f
    const-string v0, ""

    :goto_21
    return-object v0

    :pswitch_22
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_2b
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2b
    .end packed-switch
.end method
