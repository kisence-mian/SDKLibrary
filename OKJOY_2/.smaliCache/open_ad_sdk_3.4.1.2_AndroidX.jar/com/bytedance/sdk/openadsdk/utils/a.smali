.class public Lcom/bytedance/sdk/openadsdk/utils/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/a$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->d:Ljava/util/HashSet;

    return-void
.end method

.method private c()V
    .registers 7

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->b()J

    move-result-wide v0

    .line 108
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    .line 109
    return-void

    .line 111
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 112
    sub-long/2addr v4, v0

    .line 113
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v4, v0

    if-gez v0, :cond_36

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1c

    goto :goto_36

    .line 116
    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_35

    .line 121
    :cond_31
    invoke-static {v4, v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 119
    :cond_35
    :goto_35
    return-void

    .line 114
    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/utils/a$a;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    .line 126
    return-void
.end method

.method public a()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 4

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 97
    return v0

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 100
    const/4 p1, 0x1

    return p1

    .line 102
    :cond_16
    return v0
.end method

.method public b()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz v0, :cond_7

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    .line 132
    :cond_7
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->d()V

    .line 32
    :cond_9
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 83
    if-eqz p1, :cond_f

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz p1, :cond_18

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->f()V

    .line 89
    :cond_18
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz p1, :cond_9

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->c()V

    .line 62
    :cond_9
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 47
    if-eqz p1, :cond_f

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz v0, :cond_18

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->a()V

    .line 54
    :cond_18
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 79
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-lez p1, :cond_e

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    :cond_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/a;->c()V

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz p1, :cond_1a

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->b()V

    .line 43
    :cond_1a
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_e

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    if-eqz p1, :cond_17

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Lcom/bytedance/sdk/openadsdk/utils/a$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/a$a;->e()V

    .line 74
    :cond_17
    return-void
.end method
