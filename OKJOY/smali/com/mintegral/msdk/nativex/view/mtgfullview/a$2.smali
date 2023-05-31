.class final Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;
.super Ljava/lang/Object;
.source "FullViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/mtgfullview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

.field final synthetic b:Z

.field final synthetic c:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/mtgfullview/a;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;Z)V
    .registers 4

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->c:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iput-object p2, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iput-boolean p3, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 221
    const-string v0, "#ff4c8fdf"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 223
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->b:Z

    if-eqz v0, :cond_2c

    const/16 v0, 0xc8

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;->a:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/view/View;)V

    .line 225
    return-void

    .line 223
    :cond_2c
    const/16 v0, 0xff

    goto :goto_1f
.end method
