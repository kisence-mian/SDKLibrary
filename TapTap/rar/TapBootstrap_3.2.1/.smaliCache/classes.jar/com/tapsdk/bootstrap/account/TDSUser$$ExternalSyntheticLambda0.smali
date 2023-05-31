.class public final synthetic Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;->INSTANCE:Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcn/leancloud/types/LCNull;

    invoke-static {p1}, Lcom/tapsdk/bootstrap/account/TDSUser;->lambda$deleteFriendshipRequest$0(Lcn/leancloud/types/LCNull;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
