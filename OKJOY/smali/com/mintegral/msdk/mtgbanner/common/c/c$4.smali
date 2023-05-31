.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$4;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;F)F

    .line 399
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/mtgbanner/common/c/c;F)F

    .line 400
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->o(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return v0
.end method
