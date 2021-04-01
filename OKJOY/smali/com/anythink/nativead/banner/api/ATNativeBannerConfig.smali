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

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, -0xcccccd

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    .line 5
    const v0, -0x777778

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    .line 7
    const v0, -0x18c8c1

    iput v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    .line 8
    iput v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I

    .line 9
    iput-boolean v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCloseBtnShow:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    .line 11
    sget-object v0, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    return-void
.end method
