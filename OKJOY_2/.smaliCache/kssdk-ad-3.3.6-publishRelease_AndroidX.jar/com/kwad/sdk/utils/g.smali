.class public Lcom/kwad/sdk/utils/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private c:Lcom/kwad/sdk/utils/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/kwad/sdk/utils/g;->a:Landroid/media/AudioManager;

    new-instance p1, Lcom/kwad/sdk/utils/g$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/g$1;-><init>(Lcom/kwad/sdk/utils/g;)V

    iput-object p1, p0, Lcom/kwad/sdk/utils/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/utils/g;)Lcom/kwad/sdk/utils/g$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/utils/g;->c:Lcom/kwad/sdk/utils/g$a;

    return-object p0
.end method

.method private b()Landroid/media/AudioFocusRequest;
    .registers 4

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/utils/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/utils/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/g;->c:Lcom/kwad/sdk/utils/g$a;

    return-void
.end method

.method public a()Z
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/utils/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/kwad/sdk/utils/g;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_a

    goto :goto_2c

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/utils/g;->a:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/kwad/sdk/utils/g;->b()Landroid/media/AudioFocusRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v3, v0, :cond_1e

    move v1, v3

    :cond_1e
    return v1

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/utils/g;->a:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/kwad/sdk/utils/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v3, v0, :cond_2c

    move v1, v3

    :cond_2c
    :goto_2c
    return v1
.end method
