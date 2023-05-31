.class public final Lcom/iab/omid/library/mintegral/a/d;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/AudioManager;

.field private final c:Lcom/iab/omid/library/mintegral/a/a;

.field private final d:Lcom/iab/omid/library/mintegral/a/c;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/mintegral/a/a;Lcom/iab/omid/library/mintegral/a/c;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/a/d;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/a/d;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/a/d;->c:Lcom/iab/omid/library/mintegral/a/a;

    iput-object p4, p0, Lcom/iab/omid/library/mintegral/a/d;->d:Lcom/iab/omid/library/mintegral/a/c;

    return-void
.end method

.method private a(F)Z
    .registers 3

    iget v0, p0, Lcom/iab/omid/library/mintegral/a/d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c()F
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/a/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/a/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/a/d;->c:Lcom/iab/omid/library/mintegral/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/iab/omid/library/mintegral/a/a;->a(II)F

    move-result v0

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/a/d;->d:Lcom/iab/omid/library/mintegral/a/c;

    iget v1, p0, Lcom/iab/omid/library/mintegral/a/d;->e:F

    invoke-interface {v0, v1}, Lcom/iab/omid/library/mintegral/a/c;->a(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/a/d;->c()F

    move-result v0

    iput v0, p0, Lcom/iab/omid/library/mintegral/a/d;->e:F

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/a/d;->d()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/a/d;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mintegral/a/d;->a(F)Z

    move-result v1

    if-eqz v1, :cond_12

    iput v0, p0, Lcom/iab/omid/library/mintegral/a/d;->e:F

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/a/d;->d()V

    :cond_12
    return-void
.end method
