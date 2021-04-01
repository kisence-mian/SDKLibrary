.class final Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;
.super Ljava/lang/Object;
.source "MTGAuthorityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->dismissLoadingDialog()V

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_30
    return-void
.end method
