.class final Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$1;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$1;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$1;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->dismiss()V

    .line 109
    return-void
.end method
