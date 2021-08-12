.class Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/core/IProgressRemoteView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/core/RemoteViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressRemoteViewImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOriginContext:Landroid/content/Context;

.field private final mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {p1}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p1

    :cond_f
    iput-object p1, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mOriginContext:Landroid/content/Context;

    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mOriginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/api/R$layout;->ksad_notification_download_progress:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/api/core/RemoteViewBuilder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mContext:Landroid/content/Context;

    # invokes: Lcom/kwad/sdk/api/core/RemoteViewBuilder;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/kwad/sdk/api/core/RemoteViewBuilder;->access$000(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_name:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setPercentNum(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_percent_num:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(IIZ)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_progress:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_size:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/core/RemoteViewBuilder$ProgressRemoteViewImpl;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/kwad/sdk/api/R$id;->ksad_download_status:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method
