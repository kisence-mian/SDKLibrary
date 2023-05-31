.class Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iget-object v0, v1, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    instance-of v2, v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    if-eqz v2, :cond_11

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V

    :cond_11
    return-void
.end method
