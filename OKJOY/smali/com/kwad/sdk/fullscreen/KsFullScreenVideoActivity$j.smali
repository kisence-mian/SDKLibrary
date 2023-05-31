.class Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$j;->a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$j;->a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;

    invoke-static {v0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
