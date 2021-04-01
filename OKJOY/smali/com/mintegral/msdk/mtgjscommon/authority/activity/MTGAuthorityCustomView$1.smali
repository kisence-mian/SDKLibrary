.class final Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;
.super Ljava/lang/Object;
.source "MTGAuthorityCustomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->b:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->b:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->b:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->authorityInfoToJsonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_25

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_25
    return-void

    .line 62
    :cond_26
    const/4 v0, 0x0

    goto :goto_11
.end method
