.class public final enum Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

.field public static final enum COLLAPSED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

.field public static final enum EXPANDED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

.field public static final enum FULLSCREEN:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

.field public static final enum MINIMIZED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

.field public static final enum NORMAL:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;


# instance fields
.field private final playerState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const-string v1, "MINIMIZED"

    const-string v2, "minimized"

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->MINIMIZED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const-string v1, "COLLAPSED"

    const-string v2, "collapsed"

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->COLLAPSED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const-string v1, "NORMAL"

    const-string v2, "normal"

    invoke-direct {v0, v1, v5, v2}, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->NORMAL:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const-string v1, "EXPANDED"

    const-string v2, "expanded"

    invoke-direct {v0, v1, v6, v2}, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->EXPANDED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const-string v1, "FULLSCREEN"

    const-string v2, "fullscreen"

    invoke-direct {v0, v1, v7, v2}, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->MINIMIZED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->COLLAPSED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->NORMAL:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->EXPANDED:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->playerState:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;
    .registers 2

    const-class v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    invoke-virtual {v0}, [Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->playerState:Ljava/lang/String;

    return-object v0
.end method
