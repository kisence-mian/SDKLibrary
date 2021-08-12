.class public abstract Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;


# instance fields
.field protected mFetchAdTimeout:I

.field protected mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final cleanImpressionListener()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 33
    return-void
.end method

.method public final internalShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;)V
    .registers 4

    .line 21
    iput-object p3, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 23
    return-void
.end method

.method public final setFetchAdTimeout(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mFetchAdTimeout:I

    .line 27
    return-void
.end method

.method public abstract show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method
