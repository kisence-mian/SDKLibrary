.class public abstract Lcom/tapjoy/internal/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/kh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ke$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lcom/tapjoy/internal/ke$a;

.field private final c:Lcom/tapjoy/internal/ke$a;

.field private d:Lcom/tapjoy/internal/kh$a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    new-instance v0, Lcom/tapjoy/internal/ke$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/ke$a;-><init>(Lcom/tapjoy/internal/ke;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    .line 45
    new-instance v0, Lcom/tapjoy/internal/ke$a;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/ke$a;-><init>(Lcom/tapjoy/internal/ke;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    .line 51
    sget-object v0, Lcom/tapjoy/internal/kh$a;->a:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 57
    iput-boolean v1, p0, Lcom/tapjoy/internal/ke;->e:Z

    .line 245
    return-void
.end method

.method private g()Lcom/tapjoy/internal/kg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/kg<",
            "Lcom/tapjoy/internal/kh$a;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 106
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->a:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_1e

    .line 107
    sget-object v0, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 108
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Object;)Z

    goto :goto_41

    .line 110
    :cond_1e
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->b:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_2f

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ke;->e:Z

    .line 112
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->d:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Object;)Z

    goto :goto_41

    .line 113
    :cond_2f
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_41

    .line 114
    sget-object v0, Lcom/tapjoy/internal/kh$a;->d:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/internal/ke;->b()V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    goto :goto_41

    .line 117
    :catchall_3d
    move-exception v0

    .line 119
    :try_start_3e
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ke;->a(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4a

    .line 121
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    nop

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    return-object v0

    .line 121
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 5

    .line 198
    invoke-static {p1}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    :try_start_8
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->b:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_20

    .line 203
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Throwable;)Z

    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Throwable;)Z

    goto :goto_4b

    .line 206
    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->d:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_2c

    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Throwable;)Z

    goto :goto_4b

    .line 208
    :cond_2c
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_3f

    .line 209
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed while running"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Throwable;)Z

    goto :goto_4b

    .line 210
    :cond_3f
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->a:Lcom/tapjoy/internal/kh$a;

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    if-eq v0, v1, :cond_55

    .line 213
    :goto_4b
    sget-object p1, Lcom/tapjoy/internal/kh$a;->f:Lcom/tapjoy/internal/kh$a;

    iput-object p1, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_6c

    .line 215
    iget-object p1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 216
    return-void

    .line 211
    :cond_55
    :try_start_55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while in state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_6c

    .line 215
    :catchall_6c
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected final c()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->b:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_24

    .line 155
    sget-object v0, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 156
    iget-boolean v0, p0, Lcom/tapjoy/internal/ke;->e:Z

    if-eqz v0, :cond_17

    .line 157
    invoke-direct {p0}, Lcom/tapjoy/internal/ke;->g()Lcom/tapjoy/internal/kg;

    goto :goto_1e

    .line 159
    :cond_17
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_3e

    .line 162
    :goto_1e
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    return-void

    .line 149
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ke;->a(Ljava/lang/Throwable;)V

    .line 152
    throw v0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3e

    .line 162
    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final d()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->d:Lcom/tapjoy/internal/kh$a;

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_12

    goto :goto_2c

    .line 178
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ke;->a(Ljava/lang/Throwable;)V

    .line 181
    throw v0

    .line 184
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 185
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->c:Lcom/tapjoy/internal/ke$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->e:Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ke$a;->a(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3d

    .line 187
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    return-void

    .line 187
    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final e()Lcom/tapjoy/internal/kg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/kg<",
            "Lcom/tapjoy/internal/kh$a;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->a:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_17

    .line 89
    sget-object v0, Lcom/tapjoy/internal/kh$a;->b:Lcom/tapjoy/internal/kh$a;

    iput-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    .line 90
    invoke-virtual {p0}, Lcom/tapjoy/internal/ke;->a()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_17

    .line 92
    :catchall_13
    move-exception v0

    .line 94
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ke;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_20

    .line 96
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    nop

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->b:Lcom/tapjoy/internal/ke$a;

    return-object v0

    .line 96
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final f()Lcom/tapjoy/internal/kh$a;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 228
    :try_start_5
    iget-boolean v0, p0, Lcom/tapjoy/internal/ke;->e:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;

    sget-object v1, Lcom/tapjoy/internal/kh$a;->b:Lcom/tapjoy/internal/kh$a;

    if-ne v0, v1, :cond_17

    .line 229
    sget-object v0, Lcom/tapjoy/internal/kh$a;->d:Lcom/tapjoy/internal/kh$a;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1a

    .line 234
    :goto_11
    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 231
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/tapjoy/internal/ke;->d:Lcom/tapjoy/internal/kh$a;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_11

    .line 234
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ke;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ke;->f()Lcom/tapjoy/internal/kh$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
