.class Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->setRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->b:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iput-boolean p2, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->b:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->b:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->a()V

    :cond_11
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->b:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;->a:Z

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;Z)V

    return-void
.end method
