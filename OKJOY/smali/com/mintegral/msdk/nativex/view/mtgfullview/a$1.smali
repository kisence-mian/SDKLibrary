.class final Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;
.super Ljava/lang/Object;
.source "FullViewManager.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

.field final synthetic b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/mtgfullview/a;Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;->b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iput-object p2, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 91
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method
