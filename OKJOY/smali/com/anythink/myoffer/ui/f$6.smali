.class final Lcom/anythink/myoffer/ui/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/f;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/f;)V
    .registers 2

    .prologue
    .line 523
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$6;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$6;->a:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->b()V

    .line 527
    return-void
.end method
