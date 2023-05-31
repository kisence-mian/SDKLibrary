.class public final enum Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v1, "BANNER_SIZE_640x150"

    invoke-direct {v0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 5
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v1, "BANNER_SIZE_320x50"

    invoke-direct {v0, v1, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 6
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v1, "BANNER_SIZE_AUTO"

    invoke-direct {v0, v1, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->$VALUES:[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object v0
.end method

.method public static values()[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->$VALUES:[Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    invoke-virtual {v0}, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object v0
.end method
