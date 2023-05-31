.class public Lcom/bytedance/embedapplog/collector/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/embedapplog/d/h;

.field private static c:Lcom/bytedance/embedapplog/d/h;

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
            "Ljava/util/HashSet",
            "<",
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

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/embedapplog/collector/a;->h:I

    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->l:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/IPicker;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bytedance/embedapplog/collector/a;->k:Lcom/bytedance/embedapplog/IPicker;

    .line 55
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/d/h;J)Lcom/bytedance/embedapplog/d/h;
    .registers 10

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/h;->g()Lcom/bytedance/embedapplog/d/a;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/h;

    .line 162
    iput-wide p1, v0, Lcom/bytedance/embedapplog/d/h;->a:J

    .line 163
    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/h;->a:J

    sub-long v2, p1, v2

    .line 164
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    .line 165
    iput-wide v2, v0, Lcom/bytedance/embedapplog/d/h;->h:J

    .line 169
    :goto_14
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 170
    return-object v0

    .line 167
    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/d/h;
    .registers 9

    .prologue
    .line 147
    new-instance v0, Lcom/bytedance/embedapplog/d/h;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/h;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    .line 153
    :goto_24
    iput-wide p2, v0, Lcom/bytedance/embedapplog/d/h;->a:J

    .line 154
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/bytedance/embedapplog/d/h;->h:J

    .line 155
    if-eqz p4, :cond_35

    :goto_2c
    iput-object p4, v0, Lcom/bytedance/embedapplog/d/h;->i:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 157
    return-object v0

    .line 151
    :cond_32
    iput-object p0, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    goto :goto_24

    .line 155
    :cond_35
    const-string p4, ""

    goto :goto_2c
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 110
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 210
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 205
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 130
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_a

    .line 131
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->j:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/embedapplog/collector/a;->a(Ljava/lang/Object;)V

    .line 134
    :cond_a
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_2e

    .line 135
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    iget-object v0, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->e:Ljava/lang/String;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/embedapplog/collector/a;->d:J

    .line 137
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    sget-wide v2, Lcom/bytedance/embedapplog/collector/a;->d:J

    invoke-static {v0, v2, v3}, Lcom/bytedance/embedapplog/collector/a;->a(Lcom/bytedance/embedapplog/d/h;J)Lcom/bytedance/embedapplog/d/h;

    .line 138
    sput-object v4, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 140
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/embedapplog/collector/a;->h:I

    .line 141
    sput-object v4, Lcom/bytedance/embedapplog/collector/a;->i:Ljava/lang/Object;

    .line 144
    :cond_2e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 7

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/bytedance/embedapplog/collector/a;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/bytedance/embedapplog/collector/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/d/h;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    .line 117
    sget-object v1, Lcom/bytedance/embedapplog/collector/a;->b:Lcom/bytedance/embedapplog/d/h;

    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_29
    iput v0, v1, Lcom/bytedance/embedapplog/d/h;->k:I

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_41

    .line 120
    :try_start_31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/bytedance/embedapplog/collector/a;->h:I

    .line 121
    sput-object p1, Lcom/bytedance/embedapplog/collector/a;->i:Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_44

    .line 126
    :cond_41
    :goto_41
    return-void

    .line 117
    :cond_42
    const/4 v0, 0x0

    goto :goto_29

    .line 122
    :catch_44
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 201
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 175
    sget v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    .line 176
    sget v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/bytedance/embedapplog/collector/a;->k:Lcom/bytedance/embedapplog/IPicker;

    if-eqz v0, :cond_14

    .line 177
    iget-object v0, p0, Lcom/bytedance/embedapplog/collector/a;->k:Lcom/bytedance/embedapplog/IPicker;

    invoke-interface {v0, v1}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    .line 179
    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 183
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 184
    sget v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    .line 185
    sget v0, Lcom/bytedance/embedapplog/collector/a;->a:I

    if-gtz v0, :cond_23

    .line 186
    sput-object v1, Lcom/bytedance/embedapplog/collector/a;->e:Ljava/lang/String;

    .line 187
    sput-object v1, Lcom/bytedance/embedapplog/collector/a;->g:Ljava/lang/String;

    .line 188
    sput-wide v2, Lcom/bytedance/embedapplog/collector/a;->f:J

    .line 189
    sput-wide v2, Lcom/bytedance/embedapplog/collector/a;->d:J

    .line 191
    iget-object v0, p0, Lcom/bytedance/embedapplog/collector/a;->k:Lcom/bytedance/embedapplog/IPicker;

    if-eqz v0, :cond_23

    .line 192
    iget-object v0, p0, Lcom/bytedance/embedapplog/collector/a;->k:Lcom/bytedance/embedapplog/IPicker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    .line 196
    :cond_23
    return-void
.end method
