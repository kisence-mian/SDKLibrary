.class public final Lcom/efs/sdk/pa/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/pa/PA;


# instance fields
.field private a:Z

.field private b:Landroid/os/Looper;

.field private c:Lcom/efs/sdk/pa/a/e;

.field private d:Lcom/efs/sdk/pa/a/f;

.field private e:Lcom/efs/sdk/pa/a/a;

.field private f:Lcom/efs/sdk/pa/a/b;

.field private g:Lcom/efs/sdk/pa/a/g;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    .line 30
    new-instance v0, Lcom/efs/sdk/pa/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 31
    new-instance v0, Lcom/efs/sdk/pa/a/g;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/g;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 37
    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/c;->i:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final enableDumpToFile(Ljava/lang/String;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_33

    .line 101
    nop

    .line 9028
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_32

    .line 9030
    :cond_12
    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->c:Ljava/lang/String;

    .line 9031
    iget-object v1, v0, Lcom/efs/sdk/pa/a/f;->d:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_33

    .line 9032
    const/4 v1, 0x0

    .line 9034
    :try_start_19
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_29

    .line 9035
    :try_start_1e
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->d:Ljava/io/BufferedOutputStream;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 9042
    return-void

    .line 9036
    :catch_26
    move-exception p1

    move-object v1, v2

    goto :goto_2a

    :catch_29
    move-exception p1

    .line 9037
    :goto_2a
    if-eqz v1, :cond_33

    .line 9039
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 9040
    return-void

    :catch_30
    move-exception p1

    goto :goto_33

    .line 9028
    :cond_32
    :goto_32
    return-void

    .line 103
    :cond_33
    :goto_33
    return-void
.end method

.method public final enableLog(Z)V
    .registers 3

    .line 90
    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/c;->a:Z

    .line 91
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 7026
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/b;->b:Z

    .line 92
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 8022
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/g;->b:Z

    .line 93
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_11

    .line 94
    nop

    .line 8047
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/f;->b:Z

    .line 96
    :cond_11
    return-void
.end method

.method public final endCalFPS(Ljava/lang/String;)I
    .registers 9

    .line 72
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 3042
    const/4 v1, 0x0

    if-eqz p1, :cond_73

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_73

    .line 3044
    :cond_16
    iget-object v2, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/pa/a/b$a;

    .line 3045
    if-nez v2, :cond_21

    return v1

    .line 3047
    :cond_21
    nop

    .line 3091
    iget-object v3, v2, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    if-eqz v3, :cond_35

    iget-object v3, v2, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v3, :cond_35

    .line 3092
    iget-object v3, v2, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, v2, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3048
    :cond_35
    iget-object v3, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    nop

    .line 4066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/efs/sdk/pa/a/b$a;->a:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 4067
    iget-wide v4, v2, Lcom/efs/sdk/pa/a/b$a;->b:J

    long-to-float v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4068
    if-lez v2, :cond_4e

    move v1, v2

    .line 3050
    :cond_4e
    nop

    .line 3052
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/b;->b:Z

    if-eqz v0, :cond_71

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",fps="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5021
    const-string v0, "PerformanceAnalyze"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    :cond_71
    nop

    .line 73
    return v1

    .line 3042
    :cond_73
    :goto_73
    return v1
.end method

.method public final endCalTime(Ljava/lang/String;)J
    .registers 7

    .line 84
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 6036
    const-wide/16 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_54

    .line 6038
    :cond_18
    iget-object v3, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/efs/sdk/pa/a/g$a;

    .line 6039
    if-nez v3, :cond_23

    return-wide v1

    .line 6041
    :cond_23
    iget-object v1, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/efs/sdk/pa/a/g$a;->a:J

    sub-long/2addr v1, v3

    .line 6043
    nop

    .line 6045
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/g;->b:Z

    if-eqz v0, :cond_52

    .line 6046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "key="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",consumeTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7021
    const-string v0, "PerformanceAnalyze"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6049
    :cond_52
    nop

    .line 85
    return-wide v1

    .line 6036
    :cond_54
    :goto_54
    return-wide v1
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;)V
    .registers 5

    .line 136
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/efs/sdk/pa/a/c;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V

    .line 137
    return-void
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V
    .registers 12

    .line 141
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/efs/sdk/pa/a/c;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;JLjava/lang/Thread;)V

    .line 142
    return-void
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;JLjava/lang/Thread;)V
    .registers 7

    .line 146
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-nez v0, :cond_22

    .line 147
    if-eqz p5, :cond_14

    .line 148
    new-instance p5, Lcom/efs/sdk/pa/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-direct {p5, p1, p3, p4}, Lcom/efs/sdk/pa/a/a;-><init>(Landroid/app/Application;J)V

    iput-object p5, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    goto :goto_22

    .line 150
    :cond_14
    new-instance p5, Lcom/efs/sdk/pa/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    const/4 v0, 0x0

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/efs/sdk/pa/a/a;-><init>(Landroid/app/Application;JZ)V

    iput-object p5, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    .line 154
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    .line 11122
    iput-object p2, p1, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    .line 155
    return-void
.end method

.method public final registerPAMsgListener(Lcom/efs/sdk/pa/PAMsgListener;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-nez v0, :cond_b

    .line 108
    new-instance v0, Lcom/efs/sdk/pa/a/e;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    .line 110
    :cond_b
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 111
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-nez v0, :cond_1d

    .line 112
    new-instance v0, Lcom/efs/sdk/pa/a/f;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/f;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    .line 114
    :cond_1d
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    iget-boolean v1, p0, Lcom/efs/sdk/pa/a/c;->a:Z

    .line 9047
    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/f;->b:Z

    .line 115
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    .line 9051
    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->a:Lcom/efs/sdk/pa/PAMsgListener;

    .line 116
    iget-object p1, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    .line 10034
    iget-object p1, p1, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final start()V
    .registers 4

    .line 43
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->i:Z

    if-nez v0, :cond_5

    .line 44
    return-void

    .line 46
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    .line 47
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-eqz v0, :cond_11

    .line 48
    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 50
    :cond_11
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-eqz v0, :cond_2a

    .line 51
    nop

    .line 1130
    iget-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    if-eqz v1, :cond_2a

    .line 1131
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 1132
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->j:J

    .line 53
    :cond_2a
    return-void
.end method

.method public final startCalFPS(Ljava/lang/String;Landroid/view/View;)V
    .registers 7

    .line 66
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_5

    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 2030
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    if-nez p2, :cond_16

    goto :goto_45

    .line 2032
    :cond_16
    iget-object v1, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    .line 2036
    new-instance v1, Lcom/efs/sdk/pa/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/efs/sdk/pa/a/b$a;-><init>(B)V

    .line 2037
    nop

    .line 2072
    if-eqz p2, :cond_3f

    .line 2073
    iput-object p2, v1, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    .line 2075
    new-instance p2, Lcom/efs/sdk/pa/a/b$a$1;

    invoke-direct {p2, v1}, Lcom/efs/sdk/pa/a/b$a$1;-><init>(Lcom/efs/sdk/pa/a/b$a;)V

    .line 2083
    iput-object p2, v1, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2084
    iget-object v2, v1, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 2085
    invoke-virtual {v2, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/efs/sdk/pa/a/b$a;->a:J

    .line 2038
    :cond_3f
    iget-object p2, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_44
    return-void

    .line 2030
    :cond_45
    :goto_45
    return-void
.end method

.method public final startCalTime(Ljava/lang/String;)V
    .registers 6

    .line 78
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_5

    return-void

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 5026
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_2e

    .line 5028
    :cond_14
    iget-object v1, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 5030
    new-instance v1, Lcom/efs/sdk/pa/a/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/efs/sdk/pa/a/g$a;-><init>(B)V

    .line 5031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5060
    iput-wide v2, v1, Lcom/efs/sdk/pa/a/g$a;->a:J

    .line 5032
    iget-object v0, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2d
    return-void

    .line 5026
    :cond_2e
    :goto_2e
    return-void
.end method

.method public final stop()V
    .registers 5

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    .line 58
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 59
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-eqz v0, :cond_18

    .line 60
    nop

    .line 1138
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 1139
    iget-object v3, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1140
    iput-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 62
    :cond_18
    return-void
.end method

.method public final unRegisterPAMsgListener()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_8

    .line 122
    nop

    .line 10055
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/efs/sdk/pa/a/f;->a:Lcom/efs/sdk/pa/PAMsgListener;

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-eqz v0, :cond_13

    .line 125
    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    .line 11038
    iget-object v0, v0, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_13
    return-void
.end method

.method public final unregisterPAANRListener()V
    .registers 1

    .line 132
    return-void
.end method
