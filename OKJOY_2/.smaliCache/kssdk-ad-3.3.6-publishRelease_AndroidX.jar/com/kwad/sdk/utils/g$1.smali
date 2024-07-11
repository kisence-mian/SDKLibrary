.class Lcom/kwad/sdk/utils/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/utils/g;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/utils/g;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/g$1;->a:Lcom/kwad/sdk/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/utils/g$1;->a:Lcom/kwad/sdk/utils/g;

    invoke-static {v0}, Lcom/kwad/sdk/utils/g;->a(Lcom/kwad/sdk/utils/g;)Lcom/kwad/sdk/utils/g$a;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-gez p1, :cond_15

    iget-object p1, p0, Lcom/kwad/sdk/utils/g$1;->a:Lcom/kwad/sdk/utils/g;

    invoke-static {p1}, Lcom/kwad/sdk/utils/g;->a(Lcom/kwad/sdk/utils/g;)Lcom/kwad/sdk/utils/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/utils/g$a;->a()V

    goto :goto_1e

    :cond_15
    iget-object p1, p0, Lcom/kwad/sdk/utils/g$1;->a:Lcom/kwad/sdk/utils/g;

    invoke-static {p1}, Lcom/kwad/sdk/utils/g;->a(Lcom/kwad/sdk/utils/g;)Lcom/kwad/sdk/utils/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/utils/g$a;->b()V

    :goto_1e
    return-void
.end method
