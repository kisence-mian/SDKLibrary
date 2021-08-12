.class public Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;
.super Ljava/lang/Object;


# instance fields
.field public backgroupResId:I

.field public bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

.field public ctaBgColor:I

.field public ctaColor:I

.field public descColor:I

.field public isCloseBtnShow:Z

.field public isCtaBtnShow:Z

.field public refreshTime:J

.field public titleColor:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const v0, -0xcccccd

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    .line 12
    const v0, -0x777778

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    .line 14
    const v0, -0x18c8c1

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I

    .line 16
    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCloseBtnShow:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    .line 18
    sget-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    return-void
.end method
