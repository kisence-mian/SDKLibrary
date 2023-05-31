.class public Lcom/bytedance/embedapplog/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/a/k$a;
    }
.end annotation


# static fields
.field private static f:J

.field private static o:Lcom/bytedance/embedapplog/a/k$a;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Lcom/bytedance/embedapplog/b/h;

.field private final c:Lcom/bytedance/embedapplog/b/i;

.field private d:Lcom/bytedance/embedapplog/d/h;

.field private e:Lcom/bytedance/embedapplog/d/h;

.field private g:J

.field private h:I

.field private i:J

.field private volatile j:Z

.field private k:J

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/embedapplog/d/f;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    .line 67
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/b/i;

    .line 68
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    .line 69
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/b/h;)J
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 242
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/embedapplog/a/k;->f:J

    .line 243
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->f:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 244
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->f:J

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/embedapplog/b/h;->a(J)V

    .line 246
    :cond_18
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->f:J

    return-wide v0
.end method

.method private declared-synchronized a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/d/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 102
    monitor-enter p0

    :try_start_3
    instance-of v0, p1, Lcom/bytedance/embedapplog/a/k$a;

    if-eqz v0, :cond_11d

    move-wide v0, v2

    .line 104
    :goto_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    .line 105
    iget-object v4, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->F()J

    move-result-wide v4

    sput-wide v4, Lcom/bytedance/embedapplog/a/k;->f:J

    .line 106
    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    .line 107
    iput-boolean p3, p0, Lcom/bytedance/embedapplog/a/k;->j:Z

    .line 108
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    .line 110
    sget-boolean v4, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v4, :cond_53

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSession, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hadUi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_53
    if-eqz p3, :cond_b2

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 118
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/b/h;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/embedapplog/a/k;->m:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/b/h;->c()I

    move-result v5

    iput v5, p0, Lcom/bytedance/embedapplog/a/k;->l:I

    .line 121
    :cond_9b
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_121

    .line 122
    iput-object v4, p0, Lcom/bytedance/embedapplog/a/k;->m:Ljava/lang/String;

    .line 123
    const/4 v5, 0x1

    iput v5, p0, Lcom/bytedance/embedapplog/a/k;->l:I

    .line 127
    :goto_a8
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    iget v6, p0, Lcom/bytedance/embedapplog/a/k;->l:I

    invoke-virtual {v5, v4, v6}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/lang/String;I)V

    .line 128
    const/4 v4, 0x0

    iput v4, p0, Lcom/bytedance/embedapplog/a/k;->h:I

    .line 131
    :cond_b2
    cmp-long v0, v0, v2

    if-eqz v0, :cond_11b

    .line 132
    new-instance v0, Lcom/bytedance/embedapplog/d/f;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/f;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/b/h;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/embedapplog/d/f;->b:J

    .line 135
    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    iput-wide v2, v0, Lcom/bytedance/embedapplog/d/f;->a:J

    .line 136
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/embedapplog/d/f;->i:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->c()I

    move-result v1

    iput v1, v0, Lcom/bytedance/embedapplog/d/f;->h:I

    .line 138
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->y()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 139
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    .line 142
    :cond_ef
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->n:Lcom/bytedance/embedapplog/d/f;

    .line 144
    sget-boolean v1, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v1, :cond_11b

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gen launch, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadUi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_3 .. :try_end_11b} :catchall_128

    .line 148
    :cond_11b
    monitor-exit p0

    return-void

    .line 102
    :cond_11d
    :try_start_11d
    iget-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    goto/16 :goto_8

    .line 125
    :cond_121
    iget v5, p0, Lcom/bytedance/embedapplog/a/k;->l:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/bytedance/embedapplog/a/k;->l:I
    :try_end_127
    .catchall {:try_start_11d .. :try_end_127} :catchall_128

    goto :goto_a8

    .line 102
    :catchall_128
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/bytedance/embedapplog/d/a;)Z
    .registers 2

    .prologue
    .line 151
    instance-of v0, p0, Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_b

    .line 152
    check-cast p0, Lcom/bytedance/embedapplog/d/h;

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/h;->i()Z

    move-result v0

    .line 155
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static d()Lcom/bytedance/embedapplog/a/k$a;
    .registers 4

    .prologue
    .line 259
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$a;

    if-nez v0, :cond_c

    .line 260
    new-instance v0, Lcom/bytedance/embedapplog/a/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/a/k$a;-><init>(Lcom/bytedance/embedapplog/a/k$1;)V

    sput-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$a;

    .line 262
    :cond_c
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/embedapplog/a/k$a;->a:J

    .line 263
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$a;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(JJ)Landroid/os/Bundle;
    .registers 12

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->e()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/k;->c()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->g:J

    sub-long v2, p1, v2

    cmp-long v1, v2, p3

    if-lez v1, :cond_48

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string v1, "session_no"

    iget v2, p0, Lcom/bytedance/embedapplog/a/k;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v1, "send_times"

    iget v2, p0, Lcom/bytedance/embedapplog/a/k;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/embedapplog/a/k;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "current_duration"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->g:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    const-string v1, "session_start_time"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/d/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-wide p1, p0, Lcom/bytedance/embedapplog/a/k;->g:J
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4a

    .line 89
    :cond_48
    monitor-exit p0

    return-object v0

    .line 80
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()Lcom/bytedance/embedapplog/d/f;
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->n:Lcom/bytedance/embedapplog/d/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/d/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 166
    instance-of v2, p1, Lcom/bytedance/embedapplog/d/h;

    .line 167
    invoke-static {p1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v1

    .line 168
    const/4 v0, 0x1

    .line 169
    iget-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_55

    .line 171
    invoke-static {p1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    .line 185
    :goto_17
    if-eqz v2, :cond_d8

    move-object v0, p1

    .line 186
    check-cast v0, Lcom/bytedance/embedapplog/d/h;

    .line 187
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/h;->i()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 188
    iget-wide v2, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iput-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->g:J

    .line 189
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    .line 192
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, v0, Lcom/bytedance/embedapplog/d/h;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 195
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/k;->e:Lcom/bytedance/embedapplog/d/h;

    if-eqz v2, :cond_91

    iget-wide v2, v0, Lcom/bytedance/embedapplog/d/h;->a:J

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/k;->e:Lcom/bytedance/embedapplog/d/h;

    iget-wide v4, v4, Lcom/bytedance/embedapplog/d/h;->a:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/k;->e:Lcom/bytedance/embedapplog/d/h;

    iget-wide v4, v4, Lcom/bytedance/embedapplog/d/h;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_91

    .line 197
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/k;->e:Lcom/bytedance/embedapplog/d/h;

    iget-object v2, v2, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/embedapplog/d/h;->i:Ljava/lang/String;

    .line 225
    :cond_51
    :goto_51
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/a/k;->b(Lcom/bytedance/embedapplog/d/a;)V

    .line 226
    return v1

    .line 172
    :cond_55
    iget-boolean v3, p0, Lcom/bytedance/embedapplog/a/k;->j:Z

    if-nez v3, :cond_61

    if-eqz v1, :cond_61

    .line 174
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 175
    :cond_61
    iget-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7d

    iget-wide v4, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-wide v6, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->A()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_7d

    .line 177
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 178
    :cond_7d
    iget-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->i:J

    iget-wide v6, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_8e

    .line 180
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 182
    :cond_8e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_17

    .line 198
    :cond_91
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    if-eqz v2, :cond_51

    iget-wide v2, v0, Lcom/bytedance/embedapplog/d/h;->a:J

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    iget-wide v4, v4, Lcom/bytedance/embedapplog/d/h;->a:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    iget-wide v4, v4, Lcom/bytedance/embedapplog/d/h;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_51

    .line 200
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    iget-object v2, v2, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/embedapplog/d/h;->i:Ljava/lang/String;

    goto :goto_51

    .line 204
    :cond_ae
    iget-wide v2, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/bytedance/embedapplog/a/k;->a(JJ)Landroid/os/Bundle;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_bd

    .line 206
    const-string v3, "play_session"

    invoke-static {v3, v2}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    :cond_bd
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->g:J

    .line 210
    iget-wide v2, v0, Lcom/bytedance/embedapplog/d/h;->a:J

    iput-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    .line 212
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/h;->j()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 215
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    goto :goto_51

    .line 217
    :cond_d1
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->e:Lcom/bytedance/embedapplog/d/h;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    goto/16 :goto_51

    .line 221
    :cond_d8
    instance-of v0, p1, Lcom/bytedance/embedapplog/a/k$a;

    if-nez v0, :cond_51

    .line 222
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51
.end method

.method public b(Lcom/bytedance/embedapplog/d/a;)V
    .registers 4

    .prologue
    .line 230
    if-eqz p1, :cond_2a

    .line 231
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->d:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/b/h;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->b:J

    .line 234
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->y()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 235
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->e:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->f:Ljava/lang/String;

    .line 239
    :cond_2a
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/k;->j:Z

    return v0
.end method

.method c()Z
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
