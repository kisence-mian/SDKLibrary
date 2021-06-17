.class public final Lcom/tapjoy/internal/ck;
.super Landroid/database/ContentObserver;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:F

.field private final c:Landroid/media/AudioManager;

.field private final d:Lcom/tapjoy/internal/ch;

.field private final e:Lcom/tapjoy/internal/cj;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/tapjoy/internal/ch;Lcom/tapjoy/internal/cj;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/tapjoy/internal/ck;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tapjoy/internal/ck;->c:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/tapjoy/internal/ck;->d:Lcom/tapjoy/internal/ch;

    iput-object p4, p0, Lcom/tapjoy/internal/ck;->e:Lcom/tapjoy/internal/cj;

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/ck;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/tapjoy/internal/ck;->c:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ch;->a(II)F

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/ck;->e:Lcom/tapjoy/internal/cj;

    iget v1, p0, Lcom/tapjoy/internal/ck;->b:F

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/cj;->a(F)V

    return-void
.end method

.method public final onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/ck;->a()F

    move-result p1

    .line 1000
    iget v0, p0, Lcom/tapjoy/internal/ck;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_17

    iput p1, p0, Lcom/tapjoy/internal/ck;->b:F

    invoke-virtual {p0}, Lcom/tapjoy/internal/ck;->b()V

    :cond_17
    return-void
.end method
