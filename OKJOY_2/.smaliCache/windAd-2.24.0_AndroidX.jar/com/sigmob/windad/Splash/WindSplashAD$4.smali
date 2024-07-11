.class Lcom/sigmob/windad/Splash/WindSplashAD$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field final synthetic b:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V
    .registers 13

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error_code  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " msg: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v3

    new-instance v7, Lcom/sigmob/windad/Splash/WindSplashAD$4$2;

    invoke-direct {v7, p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD$4$2;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD$4;Ljava/lang/String;)V

    const-string v2, "request"

    const/4 v4, 0x0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-static {p3}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object p1

    if-nez p1, :cond_57

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    :cond_57
    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Lcom/sigmob/sdk/common/e/n;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;",
            "Lcom/sigmob/sdk/common/e/n;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;

    invoke-direct {v1, p0, p3}, Lcom/sigmob/windad/Splash/WindSplashAD$4$1;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD$4;Ljava/lang/String;)V

    const-string p3, "respond"

    invoke-static {p3, v0, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object p3, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p3, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/util/List;)Ljava/util/List;

    iget p1, p2, Lcom/sigmob/sdk/common/e/n;->a:I

    if-lez p1, :cond_20

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    iget p2, p2, Lcom/sigmob/sdk/common/e/n;->a:I

    invoke-static {p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;I)I

    :cond_20
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->e(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;)V

    goto :goto_76

    :cond_3f
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->f(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->e(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :goto_5a
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->f(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setId(I)V

    goto :goto_76

    :cond_68
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->f(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_76

    goto :goto_5a

    :cond_76
    :goto_76
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$4;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-static {p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    return-void
.end method
