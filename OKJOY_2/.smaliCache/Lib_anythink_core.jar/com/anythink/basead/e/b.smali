.class public abstract Lcom/anythink/basead/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/e/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field protected c:Lcom/anythink/core/common/d/i;

.field protected d:Lcom/anythink/basead/e/c;

.field protected e:Lcom/anythink/core/common/d/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/anythink/basead/e/b;->a:I

    .line 45
    iput-object p3, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    .line 46
    return-void
.end method

.method private b(Lcom/anythink/basead/f/c;)V
    .registers 5

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_28

    .line 118
    :cond_17
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    new-instance v2, Lcom/anythink/basead/e/b$1;

    invoke-direct {v2, p0, p1}, Lcom/anythink/basead/e/b$1;-><init>(Lcom/anythink/basead/e/b;Lcom/anythink/basead/f/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/e/a/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/a/a$a;)V

    .line 146
    return-void

    .line 112
    :cond_28
    :goto_28
    if-eqz p1, :cond_35

    .line 113
    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    .line 115
    :cond_35
    return-void

    .line 141
    :catchall_36
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    if-eqz p1, :cond_49

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 147
    :cond_49
    return-void
.end method

.method private c(Lcom/anythink/basead/f/c;)V
    .registers 5

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/e/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    new-instance v2, Lcom/anythink/basead/e/b$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/basead/e/b$2;-><init>(Lcom/anythink/basead/e/b;Lcom/anythink/basead/f/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 180
    return-void

    .line 175
    :catchall_11
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    if-eqz p1, :cond_24

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 182
    :cond_24
    return-void
.end method


# virtual methods
.method protected final a(Lcom/anythink/core/common/d/u;)Ljava/lang/String;
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget v1, v1, Lcom/anythink/core/common/d/i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/d/u;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/basead/e/c;)V
    .registers 5

    .line 49
    iput-object p1, p0, Lcom/anythink/basead/e/b;->d:Lcom/anythink/basead/e/c;

    .line 50
    iget-object p1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object p1, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    instance-of p1, p1, Lcom/anythink/core/common/d/v;

    if-eqz p1, :cond_4b

    .line 51
    iget-object p1, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object p1, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    check-cast p1, Lcom/anythink/core/common/d/v;

    iget-object v0, p0, Lcom/anythink/basead/e/b;->d:Lcom/anythink/basead/e/c;

    .line 1019
    if-eqz p1, :cond_4a

    if-nez v0, :cond_17

    goto :goto_4a

    .line 1023
    :cond_17
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/v;->l(I)V

    .line 1024
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/v;->m(I)V

    .line 1026
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/v;->a(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/v;->g(I)V

    .line 1029
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/v;->f(I)V

    .line 1030
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/anythink/core/common/d/v;->a(J)V

    .line 1031
    invoke-virtual {v0}, Lcom/anythink/basead/e/c;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/v;->e(I)V

    goto :goto_4b

    .line 1020
    :cond_4a
    :goto_4a
    return-void

    .line 54
    :cond_4b
    :goto_4b
    return-void
.end method

.method public final a(Lcom/anythink/basead/f/c;)V
    .registers 6

    .line 89
    sget-object v0, Lcom/anythink/basead/e/b$3;->a:[I

    iget v1, p0, Lcom/anythink/basead/e/b;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const-string v1, "-9999"

    packed-switch v0, :pswitch_data_76

    goto :goto_75

    .line 94
    :pswitch_e
    nop

    .line 1152
    :try_start_f
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/e/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    new-instance v3, Lcom/anythink/basead/e/b$2;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/e/b$2;-><init>(Lcom/anythink/basead/e/b;Lcom/anythink/basead/f/c;)V

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_20

    .line 1180
    return-void

    .line 1175
    :catchall_20
    move-exception v0

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    goto :goto_75

    .line 91
    :pswitch_30
    nop

    .line 1111
    :try_start_31
    iget-object v0, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    if-eqz v0, :cond_59

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_59

    .line 1118
    :cond_48
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/e/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    new-instance v3, Lcom/anythink/basead/e/b$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/e/b$1;-><init>(Lcom/anythink/basead/e/b;Lcom/anythink/basead/f/c;)V

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/e/a/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/a/a$a;)V

    .line 1146
    return-void

    .line 1113
    :cond_59
    :goto_59
    const-string v0, "30001"

    const-string v2, "bidid\u3001placementid can not be null!"

    invoke-static {v0, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    :try_end_64
    .catchall {:try_start_31 .. :try_end_64} :catchall_65

    .line 1115
    return-void

    .line 1141
    :catchall_65
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 92
    return-void

    .line 97
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_30
        :pswitch_e
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    .line 190
    return-void
.end method

.method public final c()Z
    .registers 5

    .line 57
    sget-object v0, Lcom/anythink/basead/e/b$3;->a:[I

    iget v1, p0, Lcom/anythink/basead/e/b;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_58

    .line 81
    return v1

    .line 68
    :pswitch_d
    iget-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    if-nez v0, :cond_25

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/e/b/b;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/i;)Lcom/anythink/core/common/d/t;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->w()Z

    move-result v3

    if-nez v3, :cond_25

    .line 71
    iput-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    .line 75
    :cond_25
    iget-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_34

    iget-object v3, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/a/b;->a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 76
    return v2

    .line 79
    :cond_34
    return v1

    .line 59
    :pswitch_35
    iget-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    if-nez v0, :cond_47

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/e/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/e/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/e/a/a;->a(Lcom/anythink/core/common/d/i;)Lcom/anythink/core/common/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    .line 63
    :cond_47
    iget-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_56

    iget-object v3, p0, Lcom/anythink/basead/e/b;->c:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/a/b;->a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 64
    return v2

    .line 66
    :cond_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_35
        :pswitch_d
    .end packed-switch
.end method

.method public final d()Lcom/anythink/core/common/d/h;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    return-object v0
.end method
