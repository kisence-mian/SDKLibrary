.class Lcom/tapsdk/moment/IscTapMomentService;
.super Ljava/lang/Object;
.source "IscTapMomentService.java"


# annotations
.annotation runtime Lcom/tds/common/isc/IscService;
    value = "TapMoment"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "domestic"    # Z
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "init"
    .end annotation

    .line 22
    invoke-static {p0, p1, p2}, Lcom/tapsdk/moment/TapMoment;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public static open(I)V
    .registers 1
    .param p0, "orientation"    # I
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "open"
    .end annotation

    .line 27
    invoke-static {p0}, Lcom/tapsdk/moment/TapMoment;->open(I)V

    .line 28
    return-void
.end method

.method public static openUserMomentById(ILjava/lang/String;)V
    .registers 3
    .param p0, "orientation"    # I
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "openTapMoment"
    .end annotation

    .line 15
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 16
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 17
    invoke-static {v0, p1}, Lcom/tapsdk/moment/TapMoment;->openUserMomentById(Lcom/tapsdk/moment/TapMoment$Config;Ljava/lang/String;)V

    .line 18
    return-void
.end method
