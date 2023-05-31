.class final Lcom/mintegral/msdk/widget/MTGAdChoice$1;
.super Ljava/lang/Object;
.source "MTGAdChoice.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/widget/MTGAdChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/widget/MTGAdChoice;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/widget/MTGAdChoice;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice$1;->a:Lcom/mintegral/msdk/widget/MTGAdChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 98
    invoke-static {}, Lcom/mintegral/msdk/widget/MTGAdChoice;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AD choice load failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice$1;->a:Lcom/mintegral/msdk/widget/MTGAdChoice;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/widget/MTGAdChoice;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method
