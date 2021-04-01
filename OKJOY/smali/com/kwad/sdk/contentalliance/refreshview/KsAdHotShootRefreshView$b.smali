.class Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;->a()V

    :cond_11
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
