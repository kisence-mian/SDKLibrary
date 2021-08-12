.class final Lcom/anythink/basead/ui/PlayerView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/PlayerView;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$6;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 536
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$6;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView;->start()V

    .line 537
    return-void
.end method
