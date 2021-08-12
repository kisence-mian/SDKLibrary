.class public Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final externalListener:Landroid/widget/AbsListView$OnScrollListener;

.field private imageLoader:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoader;ZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->imageLoader:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    iput-boolean p2, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->pauseOnScroll:Z

    iput-boolean p3, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->pauseOnFling:Z

    iput-object p4, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_7
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    packed-switch p2, :pswitch_data_20

    goto :goto_18

    :pswitch_4
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz v0, :cond_18

    goto :goto_d

    :pswitch_9
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz v0, :cond_18

    :goto_d
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->imageLoader:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->pause()V

    goto :goto_18

    :pswitch_13
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->imageLoader:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->resume()V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/listener/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1f

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_13
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method
