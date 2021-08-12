.class public Lcom/bytedance/embedapplog/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/embedapplog/ay;

.field private static c:Lcom/bytedance/embedapplog/ay;

.field private static d:J

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/Object;

.field private static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Lcom/bytedance/embedapplog/IPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/embedapplog/f;->a:I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/embedapplog/f;->h:I

    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/f;->l:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/IPicker;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bytedance/embedapplog/f;->k:Lcom/bytedance/embedapplog/IPicker;

    .line 55
    return-void
.end method

.method public static a()Landroid/app/Activity;
    .registers 1

    .line 58
    sget-object v0, Lcom/bytedance/embedapplog/f;->i:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Lcom/bytedance/embedapplog/ay;J)Lcom/bytedance/embedapplog/ay;
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ay;->g()Lcom/bytedance/embedapplog/aq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/ay;

    .line 162
    iput-wide p1, v0, Lcom/bytedance/embedapplog/ay;->a:J

    .line 163
    iget-wide v1, p0, Lcom/bytedance/embedapplog/ay;->a:J

    sub-long/2addr p1, v1

    .line 164
    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-ltz p0, :cond_14

    .line 165
    iput-wide p1, v0, Lcom/bytedance/embedapplog/ay;->h:J

    goto :goto_18

    .line 167
    :cond_14
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 169
    :goto_18
    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 170
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/ay;
    .registers 7

    .line 147
    new-instance v0, Lcom/bytedance/embedapplog/ay;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/ay;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    goto :goto_27

    .line 151
    :cond_25
    iput-object p0, v0, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    .line 153
    :goto_27
    iput-wide p2, v0, Lcom/bytedance/embedapplog/ay;->a:J

    .line 154
    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lcom/bytedance/embedapplog/ay;->h:J

    .line 155
    if-eqz p4, :cond_30

    goto :goto_32

    :cond_30
    const-string p4, ""

    :goto_32
    iput-object p4, v0, Lcom/bytedance/embedapplog/ay;->i:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 157
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 79
    invoke-static {}, Lcom/bytedance/embedapplog/f;->c()Lcom/bytedance/embedapplog/ay;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .registers 1

    .line 110
    return-void
.end method

.method private static c()Lcom/bytedance/embedapplog/ay;
    .registers 2

    .line 66
    nop

    .line 67
    sget-object v0, Lcom/bytedance/embedapplog/f;->b:Lcom/bytedance/embedapplog/ay;

    .line 68
    sget-object v1, Lcom/bytedance/embedapplog/f;->c:Lcom/bytedance/embedapplog/ay;

    .line 69
    if-eqz v1, :cond_9

    .line 70
    move-object v0, v1

    goto :goto_d

    .line 71
    :cond_9
    if-eqz v0, :cond_c

    .line 72
    goto :goto_d

    .line 71
    :cond_c
    const/4 v0, 0x0

    .line 74
    :goto_d
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 210
    sget-object p2, Lcom/bytedance/embedapplog/f;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 205
    sget-object v0, Lcom/bytedance/embedapplog/f;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 130
    sget-object v0, Lcom/bytedance/embedapplog/f;->c:Lcom/bytedance/embedapplog/ay;

    if-eqz v0, :cond_9

    .line 131
    sget-object v0, Lcom/bytedance/embedapplog/f;->j:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/embedapplog/f;->b(Ljava/lang/Object;)V

    .line 134
    :cond_9
    sget-object v0, Lcom/bytedance/embedapplog/f;->b:Lcom/bytedance/embedapplog/ay;

    if-eqz v0, :cond_2a

    .line 135
    iget-object v0, v0, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/embedapplog/f;->e:Ljava/lang/String;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/embedapplog/f;->d:J

    .line 137
    sget-object v2, Lcom/bytedance/embedapplog/f;->b:Lcom/bytedance/embedapplog/ay;

    invoke-static {v2, v0, v1}, Lcom/bytedance/embedapplog/f;->a(Lcom/bytedance/embedapplog/ay;J)Lcom/bytedance/embedapplog/ay;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/embedapplog/f;->b:Lcom/bytedance/embedapplog/ay;

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 140
    const/4 p1, -0x1

    sput p1, Lcom/bytedance/embedapplog/f;->h:I

    .line 141
    sput-object v0, Lcom/bytedance/embedapplog/f;->i:Ljava/lang/Object;

    .line 144
    :cond_2a
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 7

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/embedapplog/f;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0, v1, v3}, Lcom/bytedance/embedapplog/f;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/ay;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/f;->b:Lcom/bytedance/embedapplog/ay;

    .line 117
    sget-object v1, Lcom/bytedance/embedapplog/f;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bytedance/embedapplog/ay;->k:I

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_43

    .line 120
    :try_start_2e
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/bytedance/embedapplog/f;->h:I

    .line 121
    sput-object p1, Lcom/bytedance/embedapplog/f;->i:Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_3f

    .line 124
    goto :goto_43

    .line 122
    :catch_3f
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 126
    :cond_43
    :goto_43
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 201
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 175
    sget p1, Lcom/bytedance/embedapplog/f;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/bytedance/embedapplog/f;->a:I

    .line 176
    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/bytedance/embedapplog/f;->k:Lcom/bytedance/embedapplog/IPicker;

    if-eqz p1, :cond_f

    .line 177
    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    .line 179
    :cond_f
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 183
    sget-object p1, Lcom/bytedance/embedapplog/f;->e:Ljava/lang/String;

    if-eqz p1, :cond_1f

    .line 184
    sget p1, Lcom/bytedance/embedapplog/f;->a:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/bytedance/embedapplog/f;->a:I

    .line 185
    if-gtz p1, :cond_1f

    .line 186
    const/4 p1, 0x0

    sput-object p1, Lcom/bytedance/embedapplog/f;->e:Ljava/lang/String;

    .line 187
    sput-object p1, Lcom/bytedance/embedapplog/f;->g:Ljava/lang/String;

    .line 188
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/embedapplog/f;->f:J

    .line 189
    sput-wide v0, Lcom/bytedance/embedapplog/f;->d:J

    .line 191
    iget-object p1, p0, Lcom/bytedance/embedapplog/f;->k:Lcom/bytedance/embedapplog/IPicker;

    if-eqz p1, :cond_1f

    .line 192
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    .line 196
    :cond_1f
    return-void
.end method
