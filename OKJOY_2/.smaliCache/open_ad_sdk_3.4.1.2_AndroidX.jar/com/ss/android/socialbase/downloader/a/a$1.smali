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

    .line 162
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 165
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 213
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusManager"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)I

    move-result v0

    if-nez v0, :cond_31

    if-eqz p1, :cond_31

    .line 193
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;I)I

    .line 195
    :cond_31
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusManager"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_2e

    :cond_2d
    move p1, v0

    :goto_2e
    invoke-static {v1, p1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;I)I

    .line 184
    if-nez v0, :cond_38

    .line 185
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 187
    :cond_38
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 209
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 172
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    invoke-static {v1, p1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;I)I

    .line 174
    if-nez v0, :cond_24

    .line 175
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 177
    :cond_24
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusManager"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;)I

    move-result v0

    if-ne p1, v0, :cond_37

    .line 202
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a;I)I

    .line 203
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a$1;->a:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/a/a;->c(Lcom/ss/android/socialbase/downloader/a/a;)V

    .line 205
    :cond_37
    return-void
.end method
