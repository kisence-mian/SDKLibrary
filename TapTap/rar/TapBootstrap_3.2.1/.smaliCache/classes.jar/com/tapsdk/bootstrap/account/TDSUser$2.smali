.class final Lcom/tapsdk/bootstrap/account/TDSUser$2;
.super Ljava/lang/Object;
.source "TDSUser.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/account/TDSUser;->logInAnonymously()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcn/leancloud/LCUser;",
        "Lcom/tapsdk/bootstrap/account/TDSUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/leancloud/LCUser;)Lcom/tapsdk/bootstrap/account/TDSUser;
    .registers 3
    .param p1, "lcUser"    # Lcn/leancloud/LCUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    move-object v0, p1

    check-cast v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    check-cast p1, Lcn/leancloud/LCUser;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser$2;->apply(Lcn/leancloud/LCUser;)Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object p1

    return-object p1
.end method
