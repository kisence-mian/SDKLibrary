.class final Lcom/mintegral/msdk/widget/MTGImageView$1;
.super Ljava/lang/Object;
.source "MTGImageView.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/widget/MTGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/widget/MTGImageView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/widget/MTGImageView;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGImageView$1;->a:Lcom/mintegral/msdk/widget/MTGImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 61
    const-string v0, "mtg-widget-imageview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " load failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView$1;->a:Lcom/mintegral/msdk/widget/MTGImageView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/widget/MTGImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method
