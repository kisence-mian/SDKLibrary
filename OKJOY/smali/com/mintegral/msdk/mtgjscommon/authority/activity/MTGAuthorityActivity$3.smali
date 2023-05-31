.class final Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$3;
.super Ljava/lang/Object;
.source "MTGAuthorityActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->showLoadingDialog()V
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
    .line 213
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$3;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 216
    const/16 v0, 0x54

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 217
    :cond_7
    const/4 v0, 0x1

    .line 218
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
