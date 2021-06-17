.class final Lcom/uc/crashsdk/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->a:Z

    .line 853
    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->b:Z

    return-void
.end method

.method private a(I)V
    .registers 5

    .line 856
    invoke-static {}, Lcom/uc/crashsdk/e;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 857
    const-string p1, "crashsdk"

    const-string v0, "[LifeCycle] ignore state change while crashing"

    invoke-static {p1, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void

    .line 861
    :cond_e
    const/4 v0, 0x1

    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 862
    :goto_14
    if-nez p1, :cond_3f

    .line 864
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 865
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 866
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 867
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 868
    if-eqz v2, :cond_3e

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_3e

    .line 869
    nop

    .line 870
    goto :goto_40

    .line 872
    :cond_3e
    goto :goto_22

    .line 874
    :cond_3f
    move v0, p1

    :goto_40
    iget-boolean p1, p0, Lcom/uc/crashsdk/c;->a:Z

    if-eq p1, v0, :cond_49

    .line 876
    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Z)V

    .line 877
    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->a:Z

    .line 880
    :cond_49
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    .line 881
    iget-boolean v0, p0, Lcom/uc/crashsdk/c;->b:Z

    if-eq v0, p1, :cond_5c

    .line 883
    if-eqz p1, :cond_5a

    .line 884
    invoke-static {}, Lcom/uc/crashsdk/b;->t()V

    .line 886
    :cond_5a
    iput-boolean p1, p0, Lcom/uc/crashsdk/c;->b:Z

    .line 894
    :cond_5c
    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .registers 6

    .line 836
    const/4 v0, 0x1

    if-ne v0, p2, :cond_f

    .line 837
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 839
    :cond_f
    const-string v0, ""

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    :goto_14
    invoke-static {}, Lcom/uc/crashsdk/b;->A()V

    .line 843
    invoke-static {}, Lcom/uc/crashsdk/g;->J()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 844
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    .line 845
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 846
    :try_start_25
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-direct {p0, p2}, Lcom/uc/crashsdk/c;->a(I)V

    .line 848
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_35

    throw p1

    .line 850
    :cond_38
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 779
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 780
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .line 826
    invoke-static {}, Lcom/uc/crashsdk/g;->J()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 827
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    .line 828
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 829
    :try_start_e
    invoke-static {}, Lcom/uc/crashsdk/b;->M()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/c;->a(I)V

    .line 831
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p1

    .line 833
    :cond_1e
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 803
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 804
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 795
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 796
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 819
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 787
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 788
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 811
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 812
    return-void
.end method
