.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$2;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;
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
    .line 114
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 126
    :cond_d
    return-void
.end method
