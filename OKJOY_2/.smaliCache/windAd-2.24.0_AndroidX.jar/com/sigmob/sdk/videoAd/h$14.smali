.class Lcom/sigmob/sdk/videoAd/h$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->r(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->s(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->v(Lcom/sigmob/sdk/videoAd/h;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_22

    :cond_1c
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->t(Lcom/sigmob/sdk/videoAd/h;)V

    return-void

    :cond_22
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$14;->a:Lcom/sigmob/sdk/videoAd/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Z)V

    return-void
.end method
