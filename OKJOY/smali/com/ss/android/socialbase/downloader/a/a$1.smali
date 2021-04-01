.class Lcom/ss/android/socialbase/downloader/a/a$1;
.super Ljava/lang/Object;
.source "AppStatusManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/a/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/a/a;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 151
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 199
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 180
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 168
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 169
    :goto_9
    if-eq v0, p1, :cond_15

    .line 170
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 172
    :cond_15
    if-nez v0, :cond_1c

    .line 173
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 175
    :cond_1c
    return-void

    .line 168
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_9
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 195
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 159
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 160
    :cond_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 162
    :cond_1d
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 188
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 189
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->c(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 191
    :cond_19
    return-void
.end method
