.class final enum Lcom/anythink/banner/api/ATBannerView$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/api/ATBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/banner/api/ATBannerView$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anythink/banner/api/ATBannerView$a;

.field public static final enum COUNTDOWN_FINISH:Lcom/anythink/banner/api/ATBannerView$a;

.field public static final enum COUNTDOWN_ING:Lcom/anythink/banner/api/ATBannerView$a;

.field public static final enum NORMAL:Lcom/anythink/banner/api/ATBannerView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 50
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/banner/api/ATBannerView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    .line 51
    new-instance v1, Lcom/anythink/banner/api/ATBannerView$a;

    const-string v3, "COUNTDOWN_ING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/anythink/banner/api/ATBannerView$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anythink/banner/api/ATBannerView$a;->COUNTDOWN_ING:Lcom/anythink/banner/api/ATBannerView$a;

    .line 52
    new-instance v3, Lcom/anythink/banner/api/ATBannerView$a;

    const-string v5, "COUNTDOWN_FINISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/anythink/banner/api/ATBannerView$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/anythink/banner/api/ATBannerView$a;->COUNTDOWN_FINISH:Lcom/anythink/banner/api/ATBannerView$a;

    .line 49
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/anythink/banner/api/ATBannerView$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/anythink/banner/api/ATBannerView$a;->$VALUES:[Lcom/anythink/banner/api/ATBannerView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/banner/api/ATBannerView$a;
    .registers 2

    .line 49
    const-class v0, Lcom/anythink/banner/api/ATBannerView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/banner/api/ATBannerView$a;

    return-object p0
.end method

.method public static values()[Lcom/anythink/banner/api/ATBannerView$a;
    .registers 1

    .line 49
    sget-object v0, Lcom/anythink/banner/api/ATBannerView$a;->$VALUES:[Lcom/anythink/banner/api/ATBannerView$a;

    invoke-virtual {v0}, [Lcom/anythink/banner/api/ATBannerView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/banner/api/ATBannerView$a;

    return-object v0
.end method
