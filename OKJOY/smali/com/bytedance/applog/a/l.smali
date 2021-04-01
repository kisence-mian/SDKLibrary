.class public Lcom/bytedance/applog/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/a/l$a;
    }
.end annotation


# static fields
.field private static f:J

.field private static o:Lcom/bytedance/applog/a/l$a;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Lcom/bytedance/applog/b/h;

.field private final c:Lcom/bytedance/applog/b/i;

.field private d:Lcom/bytedance/applog/d/h;

.field private e:Lcom/bytedance/applog/d/h;

.field private g:J

.field private h:I

.field private i:J

.field private volatile j:Z

.field private k:J

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/applog/d/f;


# direct methods
.method constructor <init>(Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/applog/a/l;->i:J

    .line 68
    iput-object p1, p0, Lcom/bytedance/applog/a/l;->c:Lcom/bytedance/applog/b/i;

    .line 69
    iput-object p2, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    .line 70
    return-void
.end method

.method public static a(Lcom/bytedance/applog/b/h;)J
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 243
    sget-wide v0, Lcom/bytedance/applog/a/l;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/applog/a/l;->f:J

    .line 244
    sget-wide v0, Lcom/bytedance/applog/a/l;->f:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 245
    sget-wide v0, Lcom/bytedance/applog/a/l;->f:J

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/applog/b/h;->a(J)V

    .line 247
    :cond_18
    sget-wide v0, Lcom/bytedance/applog/a/l;->f:J

    return-wide v0
.end method

.method private declared-synchronized a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/d/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 103
    monitor-enter p0

    :try_start_3
    instance-of v0, p1, Lcom/bytedance/applog/a/l$a;

    if-eqz v0, :cond_11d

    move-wide v0, v2

    .line 105
    :goto_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->F()J

    move-result-wide v4

    sput-wide v4, Lcom/bytedance/applog/a/l;->f:J

    .line 107
    iput-wide v0, p0, Lcom/bytedance/applog/a/l;->i:J

    .line 108
    iput-boolean p3, p0, Lcom/bytedance/applog/a/l;->j:Z

    .line 109
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/applog/a/l;->k:J

    .line 111
    sget-boolean v4, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v4, :cond_53

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSession, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

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

    invoke-static {v4, v5}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_53
    if-eqz p3, :cond_b2

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 117
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

    .line 118
    iget-object v5, p0, Lcom/bytedance/applog/a/l;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 119
    iget-object v5, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v5}, Lcom/bytedance/applog/b/h;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/applog/a/l;->m:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v5}, Lcom/bytedance/applog/b/h;->c()I

    move-result v5

    iput v5, p0, Lcom/bytedance/applog/a/l;->l:I

    .line 122
    :cond_9b
    iget-object v5, p0, Lcom/bytedance/applog/a/l;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_121

    .line 123
    iput-object v4, p0, Lcom/bytedance/applog/a/l;->m:Ljava/lang/String;

    .line 124
    const/4 v5, 0x1

    iput v5, p0, Lcom/bytedance/applog/a/l;->l:I

    .line 128
    :goto_a8
    iget-object v5, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    iget v6, p0, Lcom/bytedance/applog/a/l;->l:I

    invoke-virtual {v5, v4, v6}, Lcom/bytedance/applog/b/h;->a(Ljava/lang/String;I)V

    .line 129
    const/4 v4, 0x0

    iput v4, p0, Lcom/bytedance/applog/a/l;->h:I

    .line 132
    :cond_b2
    cmp-long v0, v0, v2

    if-eqz v0, :cond_11b

    .line 133
    new-instance v0, Lcom/bytedance/applog/d/f;

    invoke-direct {v0}, Lcom/bytedance/applog/d/f;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-static {v1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/b/h;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/applog/d/f;->b:J

    .line 136
    iget-wide v2, p0, Lcom/bytedance/applog/a/l;->i:J

    iput-wide v2, v0, Lcom/bytedance/applog/d/f;->a:J

    .line 137
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/i;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/applog/d/f;->i:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/i;->c()I

    move-result v1

    iput v1, v0, Lcom/bytedance/applog/d/f;->h:I

    .line 139
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->y()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 140
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/applog/d/f;->e:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/applog/d/f;->f:Ljava/lang/String;

    .line 143
    :cond_ef
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object v0, p0, Lcom/bytedance/applog/a/l;->n:Lcom/bytedance/applog/d/f;

    .line 145
    sget-boolean v1, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v1, :cond_11b

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gen launch, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_3 .. :try_end_11b} :catchall_128

    .line 149
    :cond_11b
    monitor-exit p0

    return-void

    .line 103
    :cond_11d
    :try_start_11d
    iget-wide v0, p1, Lcom/bytedance/applog/d/a;->a:J

    goto/16 :goto_8

    .line 126
    :cond_121
    iget v5, p0, Lcom/bytedance/applog/a/l;->l:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/bytedance/applog/a/l;->l:I
    :try_end_127
    .catchall {:try_start_11d .. :try_end_127} :catchall_128

    goto :goto_a8

    .line 103
    :catchall_128
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/bytedance/applog/d/a;)Z
    .registers 2

    .prologue
    .line 152
    instance-of v0, p0, Lcom/bytedance/applog/d/h;

    if-eqz v0, :cond_b

    .line 153
    check-cast p0, Lcom/bytedance/applog/d/h;

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/applog/d/h;->i()Z

    move-result v0

    .line 156
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static d()Lcom/bytedance/applog/a/l$a;
    .registers 4

    .prologue
    .line 260
    sget-object v0, Lcom/bytedance/applog/a/l;->o:Lcom/bytedance/applog/a/l$a;

    if-nez v0, :cond_c

    .line 261
    new-instance v0, Lcom/bytedance/applog/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/applog/a/l$a;-><init>(Lcom/bytedance/applog/a/l$1;)V

    sput-object v0, Lcom/bytedance/applog/a/l;->o:Lcom/bytedance/applog/a/l$a;

    .line 263
    :cond_c
    sget-object v0, Lcom/bytedance/applog/a/l;->o:Lcom/bytedance/applog/a/l$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/applog/a/l$a;->a:J

    .line 264
    sget-object v0, Lcom/bytedance/applog/a/l;->o:Lcom/bytedance/applog/a/l$a;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(JJ)Landroid/os/Bundle;
    .registers 12

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    .line 82
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->e()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/bytedance/applog/a/l;->c()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v2, p0, Lcom/bytedance/applog/a/l;->g:J

    sub-long v2, p1, v2

    cmp-long v1, v2, p3

    if-lez v1, :cond_48

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "session_no"

    iget v2, p0, Lcom/bytedance/applog/a/l;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "send_times"

    iget v2, p0, Lcom/bytedance/applog/a/l;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/applog/a/l;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "current_duration"

    iget-wide v2, p0, Lcom/bytedance/applog/a/l;->g:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string v1, "session_start_time"

    iget-wide v2, p0, Lcom/bytedance/applog/a/l;->i:J

    invoke-static {v2, v3}, Lcom/bytedance/applog/d/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-wide p1, p0, Lcom/bytedance/applog/a/l;->g:J
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4a

    .line 90
    :cond_48
    monitor-exit p0

    return-object v0

    .line 81
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()Lcom/bytedance/applog/d/f;
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/applog/a/l;->n:Lcom/bytedance/applog/d/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/d/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 167
    instance-of v2, p1, Lcom/bytedance/applog/d/h;

    .line 168
    invoke-static {p1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;)Z

    move-result v1

    .line 169
    const/4 v0, 0x1

    .line 170
    iget-wide v4, p0, Lcom/bytedance/applog/a/l;->i:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_55

    .line 172
    invoke-static {p1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    .line 186
    :goto_17
    if-eqz v2, :cond_d8

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/bytedance/applog/d/h;

    .line 188
    invoke-virtual {v0}, Lcom/bytedance/applog/d/h;->i()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 189
    iget-wide v2, p1, Lcom/bytedance/applog/d/a;->a:J

    iput-wide v2, p0, Lcom/bytedance/applog/a/l;->g:J

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/applog/a/l;->k:J

    .line 193
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, v0, Lcom/bytedance/applog/d/h;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 196
    iget-object v2, p0, Lcom/bytedance/applog/a/l;->e:Lcom/bytedance/applog/d/h;

    if-eqz v2, :cond_91

    iget-wide v2, v0, Lcom/bytedance/applog/d/h;->a:J

    iget-object v4, p0, Lcom/bytedance/applog/a/l;->e:Lcom/bytedance/applog/d/h;

    iget-wide v4, v4, Lcom/bytedance/applog/d/h;->a:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/bytedance/applog/a/l;->e:Lcom/bytedance/applog/d/h;

    iget-wide v4, v4, Lcom/bytedance/applog/d/h;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_91

    .line 198
    iget-object v2, p0, Lcom/bytedance/applog/a/l;->e:Lcom/bytedance/applog/d/h;

    iget-object v2, v2, Lcom/bytedance/applog/d/h;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/applog/d/h;->i:Ljava/lang/String;

    .line 226
    :cond_51
    :goto_51
    invoke-virtual {p0, p1}, Lcom/bytedance/applog/a/l;->b(Lcom/bytedance/applog/d/a;)V

    .line 227
    return v1

    .line 173
    :cond_55
    iget-boolean v3, p0, Lcom/bytedance/applog/a/l;->j:Z

    if-nez v3, :cond_61

    if-eqz v1, :cond_61

    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 176
    :cond_61
    iget-wide v4, p0, Lcom/bytedance/applog/a/l;->k:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7d

    iget-wide v4, p1, Lcom/bytedance/applog/d/a;->a:J

    iget-wide v6, p0, Lcom/bytedance/applog/a/l;->k:J

    iget-object v3, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->A()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_7d

    .line 178
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 179
    :cond_7d
    iget-wide v4, p0, Lcom/bytedance/applog/a/l;->i:J

    iget-wide v6, p1, Lcom/bytedance/applog/d/a;->a:J

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_8e

    .line 181
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;Z)V

    move v1, v0

    goto :goto_17

    .line 183
    :cond_8e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_17

    .line 199
    :cond_91
    iget-object v2, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    if-eqz v2, :cond_51

    iget-wide v2, v0, Lcom/bytedance/applog/d/h;->a:J

    iget-object v4, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    iget-wide v4, v4, Lcom/bytedance/applog/d/h;->a:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    iget-wide v4, v4, Lcom/bytedance/applog/d/h;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_51

    .line 201
    iget-object v2, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    iget-object v2, v2, Lcom/bytedance/applog/d/h;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/applog/d/h;->i:Ljava/lang/String;

    goto :goto_51

    .line 205
    :cond_ae
    iget-wide v2, p1, Lcom/bytedance/applog/d/a;->a:J

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/bytedance/applog/a/l;->a(JJ)Landroid/os/Bundle;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_bd

    .line 207
    const-string v3, "play_session"

    invoke-static {v3, v2}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    :cond_bd
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/applog/a/l;->g:J

    .line 211
    iget-wide v2, v0, Lcom/bytedance/applog/d/h;->a:J

    iput-wide v2, p0, Lcom/bytedance/applog/a/l;->k:J

    .line 213
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v0}, Lcom/bytedance/applog/d/h;->j()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 216
    iput-object v0, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    goto :goto_51

    .line 218
    :cond_d1
    iput-object v0, p0, Lcom/bytedance/applog/a/l;->e:Lcom/bytedance/applog/d/h;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/a/l;->d:Lcom/bytedance/applog/d/h;

    goto/16 :goto_51

    .line 222
    :cond_d8
    instance-of v0, p1, Lcom/bytedance/applog/a/l$a;

    if-nez v0, :cond_51

    .line 223
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51
.end method

.method public b(Lcom/bytedance/applog/d/a;)V
    .registers 4

    .prologue
    .line 231
    if-eqz p1, :cond_2a

    .line 232
    iget-object v0, p0, Lcom/bytedance/applog/a/l;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/applog/d/a;->d:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/applog/d/a;->c:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-static {v0}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/b/h;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/applog/d/a;->b:J

    .line 235
    iget-object v0, p0, Lcom/bytedance/applog/a/l;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->y()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 236
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/applog/d/a;->e:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/applog/d/a;->f:Ljava/lang/String;

    .line 240
    :cond_2a
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/bytedance/applog/a/l;->j:Z

    return v0
.end method

.method c()Z
    .registers 5

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/bytedance/applog/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/bytedance/applog/a/l;->k:J

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
