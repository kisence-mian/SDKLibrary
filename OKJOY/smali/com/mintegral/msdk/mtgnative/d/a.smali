.class public Lcom/mintegral/msdk/mtgnative/d/a;
.super Ljava/lang/Object;
.source "AdListenerProxy.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgnative/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    .line 44
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgnative/d/a;->f:Z

    .line 30
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    return v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    .line 52
    return-void
.end method

.method public onAdClick(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 5

    .prologue
    .line 88
    sget-object v0, Lcom/mintegral/msdk/mtgnative/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdClick,campaign:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_1d

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdClick(Lcom/mintegral/msdk/out/Campaign;)V

    .line 92
    :cond_1d
    return-void
.end method

.method public onAdFramesLoaded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 99
    :cond_9
    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    .line 77
    sget-object v0, Lcom/mintegral/msdk/mtgnative/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdLoadError,message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_31

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/d/a;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/d/a;->f:Z

    invoke-static {v0, p1, v1, v2}, Lcom/mintegral/msdk/mtgnative/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    :cond_31
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->c:Z

    .line 59
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1d

    .line 60
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1a

    .line 62
    :try_start_a
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    if-eqz v1, :cond_19

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 64
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v1, v0, p2}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1d

    .line 72
    :cond_19
    :goto_19
    return-void

    .line 61
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 70
    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 66
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_1d

    goto :goto_19
.end method

.method public onLoggingImpression(I)V
    .registers 5

    .prologue
    .line 103
    sget-object v0, Lcom/mintegral/msdk/mtgnative/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoggingImpression,adsourceType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_1d

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/d/a;->b:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onLoggingImpression(I)V

    .line 107
    :cond_1d
    return-void
.end method
