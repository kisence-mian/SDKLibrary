.class public final enum Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/nativead/banner/api/ATNativeBannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

.field public static final enum BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

.field public static final enum BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

.field public static final enum BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 11
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v1, "BANNER_SIZE_640x150"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 12
    new-instance v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v3, "BANNER_SIZE_320x50"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 13
    new-instance v3, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v5, "BANNER_SIZE_AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 10
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->$VALUES:[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 2

    .line 10
    const-class v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 1

    .line 10
    sget-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->$VALUES:[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    invoke-virtual {v0}, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object v0
.end method
